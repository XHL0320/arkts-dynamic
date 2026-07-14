# operators Candidate Index

## Summary

| Project | Count |
|---|---:|
| Candidate total | 52 |
| generated | 29 |
| planned | 23 |

## Candidate List

| Candidate ID | Case ID | Basics | Test Point | Case Type | Priority | Generation Status | Validation Status | Actual Path | Coverage ID | Stage | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|
| OP-CAND-001 | none | operators | number addition | pass | P0 | planned | planned | none | none | Operators Stage 1 | no_implementation |
| OP-CAND-002 | none | operators | string concatenation | pass | P0 | planned | planned | none | none | Operators Stage 1 | no_implementation |
| OP-CAND-003 | OPER-PASS-001 | operators | boolean numeric conversion | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_arithmetic_boolean_conversion_pass.ets | OP-ARITHMETIC-003 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-004 | none | operators | null numeric conversion | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-005 | OPER-PASS-004 | operators | undefined numeric conversion NaN | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_arithmetic_undefined_nan_pass.ets | OP-ARITHMETIC-005 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-006 | OPER-FAILR-001 | operators | number bigint addition TypeError | fail_runtime | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/fail_runtime/operator_arithmetic_number_bigint_add_fail_runtime.ets | OP-ARITHMETIC-006 | Operators Stage 1 | exact_path_match |
| OP-CAND-007 | none | operators | Infinity arithmetic | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-008 | OPER-PASS-011 | operators | NaN equality | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_equality_nan_pass.ets | OP-EQUALITY-004 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-009 | OPER-PASS-012 | operators | strict equality primitives | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_equality_strict_primitives_pass.ets | OP-EQUALITY-001 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-010 | none | operators | loose equality null undefined | pass | P0 | planned | planned | none | none | Operators Stage 1 | no_implementation |
| OP-CAND-011 | none | operators | loose equality number string | pass | P0 | planned | planned | none | none | Operators Stage 1 | no_implementation |
| OP-CAND-012 | none | operators | object equality identity | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-013 | OPER-PASS-021 | operators | NaN relational comparison | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_relational_nan_pass.ets | OP-RELATIONAL-005 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-014 | OPER-PASS-022 | operators | number bigint comparison | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_relational_number_bigint_pass.ets | OP-RELATIONAL-006 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-015 | none | operators | string relational comparison | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-016 | OPER-PASS-015 | operators | logical and short-circuit | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_logical_and_short_circuit_pass.ets | OP-LOGICAL-001 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-017 | OPER-PASS-017 | operators | logical or short-circuit | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_logical_or_short_circuit_pass.ets | OP-LOGICAL-002 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-018 | OPER-PASS-016 | operators | logical not truthy falsy | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_logical_not_truthy_falsy_pass.ets | OP-LOGICAL-003 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-019 | OPER-PASS-018 | operators | nullish coalescing null undefined | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_nullish_null_undefined_pass.ets | OP-NULLISH-COALESCING-001, OP-NULLISH-COALESCING-002 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-020 | OPER-PASS-019 | operators | nullish coalescing false zero empty string | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_nullish_preserve_falsy_pass.ets | OP-NULLISH-COALESCING-003, OP-NULLISH-COALESCING-004, OP-NULLISH-COALESCING-005 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-021 | OPER-PASS-020 | operators | optional chaining property access | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_optional_property_access_pass.ets | OP-OPTIONAL-CHAINING-001, OP-OPTIONAL-CHAINING-002 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-022 | none | operators | optional chaining method call | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-023 | none | operators | optional chaining short-circuit | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-024 | OPER-FAILC-001 | operators | optional chaining assignment fail_compile | fail_compile | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/fail_compile/operator_optional_assignment_fail_compile.ets | OP-OPTIONAL-CHAINING-006 | Operators Stage 1 | exact_path_match |
| OP-CAND-025 | OPER-PASS-024 | operators | typeof undeclared | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_typeof_undeclared_pass.ets | OP-TYPEOF-OPERATOR-001, OP-TYPEOF-OPERATOR-004, OP-TYPEOF-OPERATOR-005, OP-UNARY-005 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-026 | OPER-PASS-023 | operators | typeof function | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_typeof_function_pass.ets | OP-TYPEOF-OPERATOR-002, OP-TYPEOF-OPERATOR-003 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-027 | OPER-FAILR-004 | operators | typeof TDZ variable | fail_runtime | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/fail_runtime/operator_typeof_tdz_fail_runtime.ets | OP-TYPEOF-OPERATOR-006, OP-UNARY-006 | Operators Stage 1 | exact_path_match |
| OP-CAND-028 | OPER-PASS-008 | operators | delete object property | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_delete_object_property_pass.ets | OP-DELETE-OPERATOR-001, OP-DELETE-OPERATOR-002, OP-UNARY-004 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-029 | OPER-BOUND-001 | operators | delete non-configurable boundary | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/boundary/operator_delete_non_configurable_boundary.ets | OP-DELETE-OPERATOR-005 | Operators Stage 1 | exact_path_match |
| OP-CAND-030 | OPER-PASS-013 | operators | in operator property exists | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_in_property_exists_pass.ets | OP-IN-OPERATOR-001, OP-IN-OPERATOR-002, OP-IN-OPERATOR-003, OP-IN-OPERATOR-004 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-031 | OPER-FAILR-002 | operators | in operator non-object right TypeError | fail_runtime | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/fail_runtime/operator_in_non_object_rhs_fail_runtime.ets | OP-IN-OPERATOR-005 | Operators Stage 1 | exact_path_match |
| OP-CAND-032 | OPER-PASS-014 | operators | instanceof class | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_instanceof_class_pass.ets | OP-INSTANCEOF-001, OP-INSTANCEOF-002 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-033 | OPER-FAILR-003 | operators | instanceof non-callable boundary | fail_runtime | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/fail_runtime/operator_instanceof_non_callable_fail_runtime.ets | OP-INSTANCEOF-005 | Operators Stage 1 | exact_path_match |
| OP-CAND-034 | none | operators | bitwise and or xor | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-035 | none | operators | bitwise not | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-036 | none | operators | left shift | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-037 | none | operators | signed right shift | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-038 | none | operators | unsigned right shift | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-039 | OPER-PASS-005 | operators | compound assignment plus | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_compound_plus_assignment_pass.ets | OP-COMPOUND-ASSIGNMENT-001, OP-COMPOUND-ASSIGNMENT-002, OP-COMPOUND-ASSIGNMENT-003, OP-COMPOUND-ASSIGNMENT-004 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-040 | OPER-REGR-001 | operators | compound assignment left evaluation once | regression | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/regression/operator_compound_left_once_regression.ets | OP-COMPOUND-ASSIGNMENT-006 | Operators Stage 1 | exact_path_match |
| OP-CAND-041 | OPER-PASS-026 | operators | prefix increment | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_update_prefix_increment_pass.ets | OP-UPDATE-001 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-042 | OPER-PASS-025 | operators | postfix increment | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_update_postfix_increment_pass.ets | OP-UPDATE-002 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-043 | none | operators | update invalid target | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-044 | OPER-PASS-007 | operators | conditional true branch only | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_conditional_true_branch_pass.ets | OP-CONDITIONAL-001 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-045 | OPER-PASS-006 | operators | conditional false branch only | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/00_the_basics/operators/xts/pass/operator_conditional_false_branch_pass.ets | OP-CONDITIONAL-002 | Operators Stage 1 | semantic_match_confirmed |
| OP-CAND-046 | none | operators | comma expression evaluation order | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-047 | none | operators | assignment invalid target | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-048 | none | operators | assignment evaluation order | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-049 | none | operators | new non-constructor TypeError | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-050 | none | operators | new class instance | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-051 | none | operators | await expression boundary | pass | P0 | planned | planned | none | none |  | no_implementation |
| OP-CAND-052 | none | operators | yield expression boundary | pass | P0 | planned | planned | none | none |  | no_implementation |
## Historical Snapshot

> Original format replaced.
