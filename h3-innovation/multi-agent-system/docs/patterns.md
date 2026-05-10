# Orchestration Patterns

## Sequential

Agents execute one after another. Output of each becomes input to next.

```
Planner → Researcher → Coder → Reviewer → Output
```

**Use when:** Tasks have clear sequential dependencies.

## Parallel

Multiple agents execute simultaneously, results are merged.

```
Orchestrator ─┬─ Researcher A ─┐
              ├─ Researcher B ─┤─ Merger → Output
              └─ Analyst ──────┘
```

**Use when:** Independent sub-tasks can be parallelized.

## Hierarchical

Manager agents delegate to worker agents recursively.

**Use when:** Tasks can be decomposed into sub-tasks dynamically.

## Debate

Multiple agents propose solutions; a judge selects the best.

**Use when:** Quality requires multiple perspectives and adversarial evaluation.
