# Decorator Order Property Candidates

## Scope

This file records compiler expected candidates for property decorator execution order. No real expected output is generated.

Stage 7 focuses on execution order for property decorators on ordinary (non-sendable) classes.

## Related Coverage IDs

- DECORATOR-ORDER-0018
- DECORATOR-ORDER-0019
- DECORATOR-ORDER-TD-0018
- DECORATOR-ORDER-TD-0019

## Candidate 1: multiple property decorators same target

**Description:** Two or more property decorators applied to the same property. Tests whether all decorators are called, the call order, and whether target/key remain consistent across all calls.

**Test points:**

1. All property decorators on same target are called (no omission)
2. No decorator is called more than once (no duplication)
3. Target (class prototype or constructor) is consistent across all decorator calls
4. Key (property name string) is consistent across all decorator calls
5. Fixed call order: pending confirmation (TS legacy uses bottom-up)

**Related smoke file:** `06_decorator_execution_order/xts/smoke/decorator_order_property_same_target_smoke.ets` (smoke created)

**Status:** candidate created — no real compiler expected output

## Candidate 2: multiple properties with decorators

**Description:** Multiple properties on the same class each have their own decorator. Tests whether property declaration order affects decorator execution order, and whether static vs instance property decorators have different execution timing.

**Test points:**

1. Each property decorator is called exactly once
2. Property declaration order vs decorator execution order (may or may not match)
3. Static property decorator vs instance property decorator timing
4. Multiple decorated properties do not interfere with each other
5. Property init values are unchanged after all decorators complete

**Related integration file:** `06_decorator_execution_order/xts/integration/decorator_order_static_instance_member_smoke.ets` (integration created)

**Status:** candidate created — no real compiler expected output; fixed order pending
