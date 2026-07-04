# PR 10632 Bytecode Expected Candidates

## Scope

This file records bytecode expected candidates for PR 10632 sendable-specific regression. **No real bytecode .expected.txt files are generated.** These are candidate descriptions only.

Stage 6 focuses on PR 10632: ScriptFunction inSendable flag pollution in binder causing codegen to generate incorrect sendable-specific bytecode.

## Related Coverage IDs

- DECORATOR-SENDABLE-0001
- DECORATOR-SENDABLE-0009
- DECORATOR-SENDABLE-0010
- DECORATOR-SENDABLE-0029

## Candidate 1: PR 10632 original shape bytecode

**Description:** Bytecode expected for the PR 10632 original reproduction: sendable class + property decorator factory + IIFE argument + binding.

**Expected check points (NOT real expected output):**

1. Class `A` body bytecode contains sendable class markers (constructor `"use sendable"`)
2. IIFE argument function bytecode does NOT contain sendable function markers
3. Decorator factory return function bytecode does NOT contain sendable function markers
4. Decorator call site (after lowering) bytecode is NOT in sendable context
5. Imported/local binding is correctly resolved â€?no lost reference in bytecode
6. Decorator call is not duplicated in bytecode (one call, not two)
7. Decorator call is not omitted in bytecode (call exists, not missing)
8. No incorrect `SendableFunction` or `InSendable` bytecode flags on argument functions

**Source file:** `07_decorator_with_sendable/xts/regression/decorator_sendable_pr10632_local_binding_source_candidate.ets`

**Coverage IDs:** DECORATOR-SENDABLE-0001, DWS-TD-0001

**Status:** candidate created â€?no real .expected.txt generated

## Candidate 2: sendable class body still sendable bytecode

**Description:** Bytecode expected confirming that a sendable class body (constructor + methods) retains correct sendable bytecode even when property decorators are lowered outside the class.

**Expected check points (NOT real expected output):**

1. Class constructor bytecode has sendable constructor markers
2. Class method bytecode has sendable method markers (inside sendable class)
3. Property init bytecode is correct (value "111" or other specified init)
4. Property decorator lowered call site bytecode is outside class â€?NOT sendable

**Source file:** `07_decorator_with_sendable/xts/smoke/decorator_sendable_property_basic_smoke.ets`

**Coverage IDs:** DECORATOR-SENDABLE-0009, DWS-TD-0009

**Status:** candidate created â€?no real .expected.txt generated

## Candidate 3: non-sendable control bytecode

**Description:** Bytecode expected for the non-sendable class control case. Same decorator pattern (factory + IIFE + binding) but on a non-sendable class. Should NOT contain any sendable-specific bytecode markers anywhere.

**Expected check points (NOT real expected output):**

1. Class `A` body bytecode does NOT contain sendable class markers (no `"use sendable"`)
2. IIFE argument function bytecode does NOT contain sendable function markers
3. Decorator factory return function bytecode does NOT contain sendable function markers
4. ALL functions in this file should have inSendable=false in bytecode
5. Compare with sendable variant (Candidate 1) â€?only class body differs

**Source file:** `07_decorator_with_sendable/xts/regression/decorator_sendable_pr10632_non_sendable_control.ets`

**Coverage IDs:** DECORATOR-SENDABLE-0010, DWS-TD-0010

**Status:** candidate created â€?no real .expected.txt generated
