# Decorator Order Method Candidates

## Scope

This file records compiler expected candidates for method decorator execution order. No real expected output is generated.

Stage 7 focuses on execution order for method decorators on ordinary (non-sendable) classes.

## Related Coverage IDs

- DECORATOR-ORDER-0020
- DECORATOR-ORDER-0021
- DECORATOR-ORDER-TD-0020
- DECORATOR-ORDER-TD-0021

## Candidate 1: multiple method decorators same target

**Description:** Two or more method decorators applied to the same method. Tests whether all decorators are called, the call order, and whether descriptor/equivalent structure is maintained.

**Test points:**

1. All method decorators on same target are called (no omission)
2. No decorator is called more than once (no duplication)
3. Target is consistent across all decorator calls
4. Key (method name string) is consistent across all decorator calls
5. Descriptor/equivalent structure: pending confirmation (may not be passed in ArkTS)
6. Fixed call order: pending confirmation (TS legacy uses bottom-up)
7. Method body is NOT executed during decorator call

**Related smoke file:** `06_decorator_execution_order/xts/smoke/decorator_order_method_same_target_smoke.ets` (smoke created)

**Status:** candidate created — no real compiler expected output; descriptor/equivalent structure pending

## Candidate 2: multiple methods with decorators

**Description:** Multiple methods on the same class each have their own decorator. Tests whether method declaration order affects decorator execution order, and whether static vs instance method decorators have different execution timing.

**Test points:**

1. Each method decorator is called exactly once
2. Method declaration order vs decorator execution order
3. Static method decorator vs instance method decorator timing
4. Multiple decorated methods do not interfere with each other
5. Method calls work correctly after all decorators complete

**Related integration file:** `06_decorator_execution_order/xts/integration/decorator_order_static_instance_member_smoke.ets` (integration created)

**Status:** candidate created — no real compiler expected output; fixed order pending
