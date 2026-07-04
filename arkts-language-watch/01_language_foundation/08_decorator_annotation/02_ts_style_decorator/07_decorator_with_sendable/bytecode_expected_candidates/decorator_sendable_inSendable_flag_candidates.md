# Sendable inSendable Flag Candidates

## Scope

This file records bytecode expected candidates for the ScriptFunction inSendable flag behavior in decorator contexts. **No real bytecode .expected.txt files are generated.** These are candidate descriptions only.

Stage 6 focuses on PR 10632 root cause: ScriptFunction::SetInSendable() was called without a bool parameter, causing binder context pollution where decorator argument functions incorrectly retain inSendable=true after lowering outside the sendable class body.

## Related Coverage IDs

- DECORATOR-SENDABLE-0035
- DECORATOR-SENDABLE-0006
- DECORATOR-SENDABLE-0007

## Candidate 1: arrow function argument inSendable flag

**Description:** Bytecode expected for an arrow function passed as decorator factory argument inside a sendable class. The arrow function should NOT have inSendable=true in bytecode after the fix.

**Expected check points (NOT real expected output):**

1. Arrow function bytecode does NOT contain InSendable flag markers
2. Arrow function bytecode does NOT contain SendableFunction markers
3. Arrow function is at lowered position (outside class body) — context is non-sendable
4. Arrow function return value is correctly evaluated
5. Before fix: arrow function would incorrectly have inSendable=true (from binder pollution)
6. After fix: arrow function should have inSendable=false (binder sets flag explicitly)

**Source file:** `07_decorator_with_sendable/xts/regression/decorator_sendable_arrow_function_argument_smoke.ets`

**Coverage IDs:** DECORATOR-SENDABLE-0035, DWS-TD-0035

**Status:** candidate created — no real .expected.txt generated

## Candidate 2: IIFE argument inSendable flag

**Description:** Bytecode expected for an IIFE (Immediately Invoked Function Expression) passed as decorator factory argument inside a sendable class. This is the PR 10632 core: the IIFE's ScriptFunction should NOT have inSendable=true.

**Expected check points (NOT real expected output):**

1. IIFE bytecode does NOT contain InSendable flag markers
2. IIFE bytecode does NOT contain SendableFunction markers
3. IIFE captures binding correctly — binding reference is NOT affected by sendable context
4. IIFE is at lowered position — context is non-sendable
5. Before fix: IIFE would incorrectly have inSendable=true (PR 10632 bug)
6. After fix: IIFE should have inSendable=false (binder clears flag for non-sendable context)

**Source file:** `07_decorator_with_sendable/xts/regression/decorator_sendable_pr10632_original_shape.ets`

**Coverage IDs:** DECORATOR-SENDABLE-0001, DWS-TD-0001

**Status:** candidate created — no real .expected.txt generated; PR 10632 regression target

## Candidate 3: transformed decorator node inSendable flag

**Description:** Bytecode expected for the decorator call node after TS transform lowering. The lowered decorator call is outside the class body and should NOT be in sendable context.

**Expected check points (NOT real expected output):**

1. Lowered decorator call site bytecode is NOT in sendable context
2. Decorator function (the return of factory) bytecode does NOT have InSendable flag
3. Decorator factory call bytecode does NOT have InSendable flag
4. Original AST node and lowered AST node should NOT share ScriptFunction state pollution
5. After fix: binder explicitly sets inSendable for each context, not relying on shared state

**Source file:** `07_decorator_with_sendable/xts/boundary/decorator_sendable_class_context_boundary.ets`

**Coverage IDs:** DECORATOR-SENDABLE-0006, DECORATOR-SENDABLE-0007, DWS-TD-0006, DWS-TD-0007

**Status:** candidate created — no real .expected.txt generated
