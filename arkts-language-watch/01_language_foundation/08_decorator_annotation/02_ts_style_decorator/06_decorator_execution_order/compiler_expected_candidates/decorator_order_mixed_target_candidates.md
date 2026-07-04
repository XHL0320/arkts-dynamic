# Decorator Order Mixed Target Candidates

## Scope

This file records compiler expected candidates for mixed target (class/property/method) and mixed member (static/instance) decorator execution order. No real expected output is generated.

Stage 7 focuses on cross-target order and static/instance order in ordinary (non-sendable) classes.

## Related Coverage IDs

- DECORATOR-ORDER-0037
- DECORATOR-ORDER-0031
- DECORATOR-ORDER-0032
- DECORATOR-ORDER-0040
- DECORATOR-ORDER-0042
- DECORATOR-ORDER-TD-0037
- DECORATOR-ORDER-TD-0031

## Candidate 1: class/property/method mixed order

**Description:** A single class with class decorator, property decorator, and method decorator. Tests the relative execution order across different target types, and whether the class definition + lowering maintains stable order.

**Test points:**

1. All three decorator types (class, property, method) are called
2. Each is called exactly once (no duplication or omission)
3. Class decorator receives the class constructor as target
4. Property decorator receives the class prototype and property name
5. Method decorator receives the class prototype and method name
6. Relative order of class vs property vs method decorator calls: pending confirmation
7. After lowering, the call order should be stable (not dependent on AST layout)
8. Class can be instantiated; property and method accessible after all decorators

**Related integration file:** `06_decorator_execution_order/xts/integration/decorator_order_class_property_method_mixed_smoke.ets` (integration created)

**Status:** candidate created — no real compiler expected output; fixed order pending

## Candidate 2: static/instance mixed order

**Description:** A single class with static property decorator, instance property decorator, static method decorator, and instance method decorator. Tests whether the four decorators are all called and whether their relative order follows a predictable pattern.

**Test points:**

1. All four decorators (static prop, instance prop, static method, instance method) are called
2. Each is called exactly once
3. Static member decorators receive the class constructor as target
4. Instance member decorators receive the class prototype as target
5. Relative order of static vs instance decorators: pending confirmation
6. Declaration order may or may not match execution order
7. After lowering, the call order should be stable

**Related integration file:** `06_decorator_execution_order/xts/integration/decorator_order_static_instance_member_smoke.ets` (integration created)

**Status:** candidate created — no real compiler expected output; fixed order pending
