# Sendable Decorator Imported Binding Candidates

## Scope

This file records compiler expected candidates for decorator factory argument imported binding behavior in sendable class contexts. No real expected output is generated.

Stage 6 focuses on PR 10632: the imported binding case is the full reproduction shape but requires multi-file XTS support.

## Related Coverage IDs

- DECORATOR-SENDABLE-0001
- DECORATOR-SENDABLE-0005
- DECORATOR-SENDABLE-0010

## Candidate 1: imported moduleVar in factory argument IIFE (PR 10632 core)

**Description:** The complete PR 10632 reproduction: a sendable class with a property decorator factory whose argument is an IIFE capturing an imported module variable. After lowering, the IIFE's ScriptFunction is incorrectly marked inSendable=true by binder context pollution, causing codegen to generate sendable-specific bytecode for a function that is semantically NOT in a sendable context.

This is the exact shape that PR 10632 fixed.

**Test points:**

1. Imported binding is correctly resolved in the lowered IIFE
2. IIFE ScriptFunction does NOT have inSendable=true (after fix)
3. No sendable-specific bytecode for the IIFE argument function
4. Decorator call is not duplicated or omitted by transform
5. Property init value is unchanged after decorator application

**Suggested future files:**
- `07_decorator_with_sendable/xts/regression/pr10632_module.ets` (module export — NOT yet created, requires multi-file XTS stability)
- `07_decorator_with_sendable/xts/regression/decorator_sendable_pr10632_imported_binding.ets` (import + decorator — NOT yet created)

**Coverage IDs:** DECORATOR-SENDABLE-0001, DWS-TD-0001

**Status:** candidate created — imported binding version deferred (multi-file XTS may be unstable); local binding smoke created as degraded variant

## Candidate 2: local binding control

**Description:** Same PR 10632 shape but using a local (same-file) binding instead of an imported module variable. This tests the binder context pollution without the additional complexity of cross-module import resolution.

**Test points:**

1. Local binding is correctly resolved in the lowered IIFE
2. IIFE ScriptFunction does NOT have inSendable=true
3. No sendable-specific bytecode for the IIFE argument function
4. Local vs imported binding resolution comparison (both should work correctly)

**Suggested future file:** `07_decorator_with_sendable/xts/regression/decorator_sendable_pr10632_local_binding_smoke.ets` (source created)

**Coverage IDs:** DECORATOR-SENDABLE-0005, DWS-TD-0005

**Status:** candidate created — source file exists as local binding smoke

## Candidate 3: imported decorator factory

**Description:** A decorator factory that is imported from another module, applied to a property in a sendable class. This tests whether the imported factory itself (not just its argument) is correctly handled by the binder at the lowered call site.

**Test points:**

1. Imported decorator factory is correctly called at lowered position
2. Factory return function does NOT get inSendable=true
3. Import binding is resolved correctly
4. No sendable-specific bytecode for factory or its return function

**Suggested future files:** none (candidate only — not yet generated, requires multi-file XTS stability)

**Coverage IDs:** DECORATOR-SENDABLE-0010 (variant), DWS-TD-0010 (variant)

**Status:** candidate created — no real compiler expected output; deferred pending multi-file XTS stability verification
