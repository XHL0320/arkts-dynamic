# Sendable Decorator Factory Argument Candidates

## Scope

This file records compiler expected candidates for decorator factory argument behavior in sendable class contexts. No real expected output is generated.

Stage 6 focuses on PR 10632 root cause: binder context pollution causing inSendable flag to be incorrectly set on decorator argument functions.

## Related Coverage IDs

- DECORATOR-SENDABLE-0035
- DECORATOR-SENDABLE-0005
- DECORATOR-SENDABLE-0006
- DECORATOR-SENDABLE-0007

## Candidate 1: factory argument arrow function (inSendable flag)

**Description:** An arrow function passed as decorator factory argument inside a sendable class. After lowering, the arrow function is at a position outside the class body. The arrow function should NOT have inSendable=true set by the binder.

**Test points:**

1. Arrow function argument is correctly lowered outside class body
2. Arrow function does NOT inherit sendable context (inSendable=false)
3. Arrow function return value is correct
4. No sendable-specific bytecode is generated for the arrow function

**Suggested future file:** `07_decorator_with_sendable/xts/regression/decorator_sendable_arrow_function_argument_smoke.ets` (source created)

**Coverage IDs:** DECORATOR-SENDABLE-0035, DWS-TD-0035

**Status:** candidate created â€?no real compiler expected output

## Candidate 2: factory argument IIFE

**Description:** An IIFE (Immediately Invoked Function Expression) passed as decorator factory argument inside a sendable class. This is the core pattern in PR 10632. After lowering, the IIFE ScriptFunction should NOT have inSendable=true.

**Test points:**

1. IIFE argument function is correctly lowered outside class body
2. IIFE does NOT inherit sendable context (inSendable=false)
3. IIFE captures binding correctly at lowered position
4. No sendable-specific bytecode is generated for the IIFE
5. No duplicate or omitted decorator calls

**Suggested future file:** `07_decorator_with_sendable/xts/regression/decorator_sendable_pr10632_local_binding_source_candidate.ets` (source candidate created)

**Coverage IDs:** DECORATOR-SENDABLE-0001, DWS-TD-0001

**Status:** candidate created â€?no real compiler expected output; PR 10632 regression target

## Candidate 3: factory argument normal function

**Description:** A normal function reference passed as decorator factory argument inside a sendable class. This is a simpler variant to test whether the inSendable flag pollution affects all argument function types or only arrow/IIFE.

**Test points:**

1. Normal function argument is correctly lowered outside class body
2. Normal function reference does NOT get inSendable=true from binder
3. No sendable-specific bytecode is generated for the normal function
4. Function reference binding is correct at lowered position

**Suggested future file:** none (candidate only â€?not yet generated as .ets source)

**Coverage IDs:** DECORATOR-SENDABLE-0035 (variant), DWS-TD-0035 (variant)

**Status:** candidate created â€?no real compiler expected output
