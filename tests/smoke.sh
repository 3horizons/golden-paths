#!/usr/bin/env bash
# =============================================================================
# Golden Paths — Smoke Test
# =============================================================================
# Validates structural integrity of every Golden Path template:
#   1. template.yaml is parseable YAML
#   2. has required Backstage scaffolder fields
#   3. first step references a path that EXISTS
#   4. skeleton/catalog-info.yaml exists
#   5. catalog-info.yaml at repo root references templates that exist
#
# Run from repo root: ./tests/smoke.sh
# =============================================================================

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

FAIL=0
PASS=0

red() { printf '\033[31m%s\033[0m\n' "$*"; }
green() { printf '\033[32m%s\033[0m\n' "$*"; }
yellow() { printf '\033[33m%s\033[0m\n' "$*"; }

check() {
  local desc="$1"
  local cond="$2"
  if [[ "$cond" == "true" ]]; then
    green "    ✓ $desc"
    PASS=$((PASS+1))
  else
    red   "    ✗ $desc"
    FAIL=$((FAIL+1))
  fi
}

# 1. Validate each template.yaml -----------------------------------------------
echo "==> Validating template.yaml files..."
while IFS= read -r tpl; do
  rel="${tpl#./}"
  echo "  • $rel"
  tpl_dir="$(dirname "$tpl")"

  # 1a. parseable YAML
  if python3 -c "import yaml,sys; yaml.safe_load(open('$tpl'))" 2>/dev/null; then
    check "valid YAML" "true"
  else
    check "valid YAML" "false"
    continue
  fi

  # 1b. required fields
  ok=$(python3 - <<PY
import yaml
d = yaml.safe_load(open("$tpl"))
ok = (
  d.get("apiVersion") == "scaffolder.backstage.io/v1beta3"
  and d.get("kind") == "Template"
  and d.get("metadata",{}).get("name")
  and d.get("metadata",{}).get("title")
  and d.get("spec",{}).get("owner")
  and d.get("spec",{}).get("type")
  and isinstance(d.get("spec",{}).get("parameters"), list)
  and isinstance(d.get("spec",{}).get("steps"), list)
)
print("true" if ok else "false")
PY
)
  check "required Backstage fields" "$ok"

  # 1c. first step path exists (skip non-local urls)
  first_url=$(python3 - <<PY
import yaml
d=yaml.safe_load(open("$tpl"))
s=d["spec"]["steps"][0]
print(s.get("input",{}).get("url",""))
PY
)
  if [[ "$first_url" == ./* ]]; then
    if [[ -e "$tpl_dir/$first_url" ]]; then
      check "first step url '$first_url' exists" "true"
    else
      check "first step url '$first_url' exists" "false"
    fi
  else
    yellow "    ⏭ first step url is not local (skipped path check): $first_url"
  fi

  # 1d. no out-of-template path traversal
  if grep -qE "url:[[:space:]]+\.\./\.\./" "$tpl"; then
    check "no ../../ path traversal in fetch:template" "false"
  else
    check "no ../../ path traversal in fetch:template" "true"
  fi

  # 1e. skeleton/catalog-info.yaml exists
  if [[ -f "$tpl_dir/skeleton/catalog-info.yaml" ]]; then
    check "skeleton/catalog-info.yaml exists" "true"
  else
    check "skeleton/catalog-info.yaml exists" "false"
  fi

  # 1f. publish:github step uses parameters.repoUrl
  pub_ok=$(python3 - <<PY
import yaml
d=yaml.safe_load(open("$tpl"))
pub=[s for s in d["spec"]["steps"] if s.get("action")=="publish:github"]
if not pub:
    print("skip")
else:
    url=pub[0]["input"].get("repoUrl","")
    print("true" if "parameters.repoUrl" in url else "false")
PY
)
  if [[ "$pub_ok" == "skip" ]]; then
    yellow "    ⏭ no publish:github step (PR-based template)"
  else
    check "publish:github uses parameters.repoUrl" "$pub_ok"
  fi

done < <(find h1-foundation h2-enhancement h3-innovation -name 'template.yaml' | sort)

# 2. Validate catalog-info.yaml at repo root ----------------------------------
echo ""
echo "==> Validating catalog-info.yaml (root Location)..."
if [[ ! -f catalog-info.yaml ]]; then
  red "  ✗ catalog-info.yaml missing"
  FAIL=$((FAIL+1))
else
  python3 - <<'PY'
import yaml, sys, os
d = yaml.safe_load(open("catalog-info.yaml"))
assert d.get("kind") == "Location", "catalog-info.yaml must be kind: Location"
targets = d["spec"]["targets"]
missing = [t for t in targets if t.startswith("./") and not os.path.exists(t[2:])]
if missing:
    print(f"Missing target files: {missing}")
    sys.exit(1)
print(f"OK catalog-info.yaml: {len(targets)} targets all exist")
PY
  PASS=$((PASS+1))
fi

# 3. Summary -------------------------------------------------------------------
echo ""
echo "============================================================================"
echo "Results: $PASS passed, $FAIL failed"
echo "============================================================================"

if [[ $FAIL -gt 0 ]]; then
  exit 1
fi
echo "All smoke tests passed"
