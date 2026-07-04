# Stage 6 Sendable Decorator Generation Report

## Summary

| Metric | Value |
|--------|-------|
| Stage | 6 (sendable-specific regression) |
| Directory | `07_decorator_with_sendable/` |
| PR focus | PR 10632 (ScriptFunction inSendable state pollution) |
| XTS .ets files created | 7 |
| Compiler expected candidates | 3 |
| Bytecode expected candidates | 3 |
| PR 10632 specialized doc | 1 |
| Stage 6 report | 1 (this file) |
| Total new files | 15 |
| Real bytecode .expected.txt | 0 (not generated per constraints) |
| Imported binding .ets | 0 (deferred â€?multi-file XTS stability uncertain) |

## Generated Files

| File | Type | Coverage IDs | Status |
|------|------|-------------|--------|
| `xts/smoke/decorator_sendable_property_basic_smoke.ets` | smoke | DECORATOR-SENDABLE-0009 | smoke created |
| `xts/smoke/decorator_sendable_property_factory_smoke.ets` | smoke | DECORATOR-SENDABLE-0029 | smoke created |
| `xts/regression/decorator_sendable_pr10632_local_binding_source_candidate.ets` | regression | DECORATOR-SENDABLE-0001 | source candidate created (local binding degraded) |
| `xts/regression/decorator_sendable_pr10632_local_binding_smoke.ets` | regression | DECORATOR-SENDABLE-0005 | smoke created |
| `xts/regression/decorator_sendable_arrow_function_argument_smoke.ets` | regression | DECORATOR-SENDABLE-0035 | smoke created |
| `xts/regression/decorator_sendable_pr10632_non_sendable_control.ets` | regression | DECORATOR-SENDABLE-0010 | smoke created (control) |
| `xts/boundary/decorator_sendable_class_context_boundary.ets` | boundary | DECORATOR-SENDABLE-0006/0007 | boundary candidate created |
| `compiler_expected_candidates/decorator_sendable_property_transform_candidates.md` | compiler candidate | DECORATOR-SENDABLE-0001, 0009, 0029 | candidate created |
| `compiler_expected_candidates/decorator_sendable_factory_argument_candidates.md` | compiler candidate | DECORATOR-SENDABLE-0005, 0035 | candidate created |
| `compiler_expected_candidates/decorator_sendable_imported_binding_candidates.md` | compiler candidate | DECORATOR-SENDABLE-0001, 0005, 0010 | candidate created |
| `bytecode_expected_candidates/decorator_sendable_pr10632_bytecode_candidates.md` | bytecode candidate | DECORATOR-SENDABLE-0001, 0009, 0010, 0029 | candidate created |
| `bytecode_expected_candidates/decorator_sendable_inSendable_flag_candidates.md` | bytecode candidate | DECORATOR-SENDABLE-0006, 0007, 0035 | candidate created |
| `bytecode_expected_candidates/decorator_sendable_non_sendable_control_candidates.md` | bytecode candidate | DECORATOR-SENDABLE-0010 | candidate created |
| `99_mapping_and_regression/pr_10632_sendable_property_decorator.md` | regression doc | DECORATOR-SENDABLE-0001 | PR 10632 specialized doc |
| `xts/stage6_sendable_decorator_generation_report.md` | report | â€?| this file |

## PR 10632 Coverage Matrix

| Coverage ID | Description | XTS Status | Candidate Status |
|-------------|-------------|-----------|-----------------|
| DECORATOR-SENDABLE-0001 | PR 10632 original shape (factory + IIFE + binding) | source candidate created | compiler + bytecode candidates created |
| DECORATOR-SENDABLE-0005 | Local binding smoke (factory + IIFE + local) | smoke created | compiler candidate created |
| DECORATOR-SENDABLE-0006 | Sendable class context boundary | boundary candidate created | bytecode candidate created |
| DECORATOR-SENDABLE-0007 | Decorator-lowered context separation | boundary candidate created | bytecode candidate created |
| DECORATOR-SENDABLE-0009 | Property decorator basic on sendable class | smoke created | compiler + bytecode candidates created |
| DECORATOR-SENDABLE-0010 | Non-sendable control (factory + IIFE + binding) | smoke created | compiler + bytecode candidates created |
| DECORATOR-SENDABLE-0029 | Property decorator factory on sendable class | smoke created | compiler + bytecode candidates created |
| DECORATOR-SENDABLE-0035 | Arrow function argument on sendable class | smoke created | compiler + bytecode candidates created |

Uncovered (no XTS source created yet):

| Coverage ID | Description | Reason |
|-------------|-------------|--------|
| DECORATOR-SENDABLE-0002 | Method decorator on sendable class | deferred to future stage |
| DECORATOR-SENDABLE-0003 | Class decorator on sendable class | deferred to future stage |
| DECORATOR-SENDABLE-0004 | Sendable class + decorator execution order | deferred to future stage |
| DECORATOR-SENDABLE-0008 | Imported binding full PR 10632 | multi-file XTS stability uncertain |
| DECORATOR-SENDABLE-0011 | Sendable class + multiple decorators | deferred to future stage |
| DECORATOR-SENDABLE-0012 | Sendable class + decorator + static property | deferred to future stage |
| DECORATOR-SENDABLE-0013 | Sendable class + decorator + accessor | deferred to future stage |

## Boundary / Need Review

| Item | Type | Status | Notes |
|------|------|--------|-------|
| Imported binding .ets (DECORATOR-SENDABLE-0008) | XTS | deferred | Multi-file import may be unstable in current XTS framework; compiler candidate created |
| `pr10632_module.ets` (export file) | XTS | deferred | Same reason â€?requires multi-file XTS stability |
| Normal function argument variant | XTS | deferred | Candidate created in compiler_expected_candidates but no .ets source |
| Imported decorator factory variant | XTS | deferred | Candidate created in compiler_expected_candidates but no .ets source |

## Non-goals Check

| Non-goal | Status |
|----------|--------|
| Generate real bytecode .expected.txt | âœ?Not generated (0 files) |
| Modify ArkCompiler source | âœ?Not modified |
| Spread sendable variants to other directories | âœ?All sendable files in 07_decorator_with_sendable/ only |
| Classify PR 10632 as class/method/syntax/order bug | âœ?Classified as binder context state pollution |
| Create imported binding .ets | âœ?Deferred (candidate only) |
| Mark bytecode candidates as completed | âœ?All marked as "candidate created" |

## Next Stage Suggestion

Stage 7: `06_decorator_execution_order` â€?decorator execution order semantics, including:
- Class + property + method decorator execution order
- Factory evaluation vs decorator application order
- Sendable vs non-sendable execution order comparison
- Cross-referencing with Stage 6 sendable context boundary

## Stage 10 Quality Review Correction

- `xts/regression/decorator_sendable_pr10632_local_binding_source_candidate.ets` is a local-binding degraded source candidate.
- It is not the full PR 10632 imported-binding original repro.
- The full imported-binding shape remains covered only by compiler/bytecode candidate documents.
- No real bytecode expected output was generated in Stage 10.
- PR 10632 ownership remains `07_decorator_with_sendable`.
