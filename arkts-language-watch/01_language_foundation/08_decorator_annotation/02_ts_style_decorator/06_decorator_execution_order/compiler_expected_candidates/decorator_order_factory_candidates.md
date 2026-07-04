# Decorator Order Factory Candidates

## Scope

This file records compiler expected candidates for decorator factory evaluation order. No real expected output is generated.

Stage 7 focuses on factory evaluation vs decorator call order, and argument expression evaluation order.

## Related Coverage IDs

- DECORATOR-ORDER-0003
- DECORATOR-ORDER-0004
- DECORATOR-ORDER-0005
- DECORATOR-ORDER-TD-0003
- DECORATOR-ORDER-TD-0004
- DECORATOR-ORDER-TD-0005

## Candidate 1: factory evaluation order

**Description:** When multiple factory decorators are on the same target, tests whether factory evaluations follow a fixed order (top-down in TS legacy) and whether argument expressions are evaluated before factory bodies.

**Test points:**

1. Factory evaluations happen before any returned decorator function calls
2. Argument expressions are evaluated before their respective factory bodies
3. Multiple factories: evaluation order (top-down or bottom-up) pending confirmation
4. Factory body side effects execute in the correct order relative to each other
5. No factory is evaluated more than once (no duplication)
6. No factory is skipped (no omission)

**Related smoke files:**
- `06_decorator_execution_order/xts/smoke/decorator_order_factory_eval_call_smoke.ets` (smoke created)
- `06_decorator_execution_order/xts/smoke/decorator_order_factory_argument_eval_smoke.ets` (smoke created)

**Status:** candidate created — no real compiler expected output; fixed order pending

## Candidate 2: returned decorator call order

**Description:** After factories are evaluated, the returned decorator functions are called. Tests whether the call order follows a fixed pattern (bottom-up in TS legacy, opposite to evaluation order) and whether this pattern is consistent across multiple target types.

**Test points:**

1. Returned decorator function calls happen after all factory evaluations complete
2. Call order: pending confirmation (TS legacy uses bottom-up, opposite to factory eval)
3. Each returned function is called exactly once
4. Target/key parameters are consistent across calls
5. Factory eval → decorator call relative order is stable (factory first, call later)
6. Multi-target scenario (class + property + method): call order consistency

**Related smoke files:**
- `06_decorator_execution_order/xts/smoke/decorator_order_factory_eval_call_smoke.ets` (smoke created)
- `06_decorator_execution_order/xts/smoke/decorator_order_multiple_factories_smoke.ets` (smoke created)

**Status:** candidate created — no real compiler expected output; fixed order pending
