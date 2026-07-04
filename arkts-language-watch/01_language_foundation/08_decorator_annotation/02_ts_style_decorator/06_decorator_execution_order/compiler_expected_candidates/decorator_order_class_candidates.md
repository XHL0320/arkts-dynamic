# Decorator Order Class Candidates

## Scope

This file records compiler expected candidates for class decorator execution order. No real expected output is generated.

Stage 7 focuses on execution order for class decorators on ordinary (non-sendable) classes.

## Related Coverage IDs

- DECORATOR-ORDER-0016
- DECORATOR-ORDER-0017
- DECORATOR-ORDER-TD-0016
- DECORATOR-ORDER-TD-0017

## Candidate 1: multiple class decorators

**Description:** Two or more class decorators applied to the same class. Tests whether all decorators are called, the call order, and whether the class target is consistent.

**Test points:**

1. All class decorators on same target are called (no omission)
2. No decorator is called more than once (no duplication)
3. Class target (constructor function) is consistent across all decorator calls
4. Fixed call order: pending confirmation (TS legacy uses bottom-up)
5. Class can be instantiated after all decorators complete

**Related smoke file:** `06_decorator_execution_order/xts/smoke/decorator_order_class_same_target_smoke.ets` (smoke created)

**Status:** candidate created — no real compiler expected output; fixed order pending

## Candidate 2: class decorator factory order

**Description:** Multiple class decorator factories applied to the same class. Tests factory evaluation order and returned decorator call order, and whether the class target is passed correctly through the factory chain.

**Test points:**

1. Multiple factory evaluations all complete before any decorator call
2. Factory evaluation order: pending confirmation (TS legacy uses top-down)
3. Returned decorator call order: pending confirmation (TS legacy uses bottom-up)
4. Class target is passed correctly to each factory's returned decorator
5. Factory count equals the number of factories
6. Decorator call count equals the number of factories

**Related integration file:** `06_decorator_execution_order/xts/smoke/decorator_order_multiple_factories_smoke.ets` (smoke created)

**Status:** candidate created — no real compiler expected output; fixed order pending
