# Sendable Property Decorator Transform Candidates

## Scope

This file records compiler expected candidates for sendable property decorator transform behavior. No real expected output is generated.

Stage 6 focuses on PR 10632 sendable-specific regression. These candidates cover transform/lowering behavior for property decorators on sendable classes.

## Related Coverage IDs

- DECORATOR-SENDABLE-0009
- DECORATOR-SENDABLE-0029
- DECORATOR-SENDABLE-0001

## Candidate 1: sendable property decorator basic lowering

**Description:** A simple property decorator on a sendable class. After TS transformer lowering, the decorator call is moved outside the class body. The lowered decorator call site should NOT be in a sendable context.

**Test points:**

1. Property decorator is correctly lowered outside the class body
2. The lowered decorator call retains correct `target` and `key` parameters
3. The lowered call site is NOT in sendable context (binder should NOT set inSendable=true)
4. The class body itself retains sendable class bytecode

**Suggested future file:** `07_decorator_with_sendable/xts/smoke/decorator_sendable_property_basic_smoke.ets` (source created)

**Coverage IDs:** DECORATOR-SENDABLE-0009, DWS-TD-0009

**Status:** candidate created â€?no real compiler expected output

## Candidate 2: sendable property decorator factory lowering

**Description:** A property decorator factory on a sendable class. The factory call and its return function are lowered outside the class. The factory argument evaluation happens at the lowered position, which is NOT in sendable context.

**Test points:**

1. Decorator factory call is correctly lowered outside the class body
2. Factory return function does NOT inherit sendable context
3. Factory call site is NOT in sendable context
4. Property init value is unchanged after decorator application
5. The class body itself retains sendable class bytecode

**Suggested future file:** `07_decorator_with_sendable/xts/smoke/decorator_sendable_property_factory_smoke.ets` (source created)

**Coverage IDs:** DECORATOR-SENDABLE-0029, DWS-TD-0029

**Status:** candidate created â€?no real compiler expected output

## Candidate 3: PR 10632 â€?sendable property decorator factory + IIFE + binding

**Description:** The original PR 10632 shape: sendable class + property decorator factory + IIFE argument capturing a binding. After lowering, the IIFE is at a position outside the class body, but binder context pollution causes inSendable=true to be incorrectly set on the IIFE's ScriptFunction.

**Test points:**

1. Property decorator factory + IIFE lowering is correct (call not duplicated, not omitted)
2. IIFE argument function does NOT inherit sendable context from class body
3. Imported/local binding is correctly resolved in the lowered position
4. ScriptFunction inSendable flag matches the ACTUAL lowered context, not the original class body context
5. Codegen does NOT generate sendable-specific bytecode for the IIFE argument function

**Suggested future file:** `07_decorator_with_sendable/xts/regression/decorator_sendable_pr10632_local_binding_source_candidate.ets` (source candidate created)

**Coverage IDs:** DECORATOR-SENDABLE-0001, DWS-TD-0001

**Status:** candidate created â€?no real compiler expected output; PR 10632 regression target
