# Function First Batch Candidate Index

## Summary

| 项目 | 数量 |
|---|---:|
| 首批候选数量 | 39 |
| generated 候选数量 | 27 |
| planned 候选数量 | 12 |

## Candidate List

> **Note**: The original candidate index used a different column format. The data below is the current source of truth. Full unified-format conversion with per-row Case ID/Coverage ID/Actual Path is pending — the Case Registry contains the complete mapping.

| Candidate ID | Case ID | Generation Status | Validation Status | Actual Path | 备注 |
|---|---|---|---|---|---|
| FUNCTION-CAND-0001 | FUNC-PASS-031 | generated | validation_pending | optional_parameter/xts/pass/default_parameter_evaluation_order_pass.ets | Stage 1 |
| FUNCTION-CAND-0002 | FUNC-PASS-033 | generated | validation_pending | optional_parameter/xts/pass/default_parameter_reference_previous_param_pass.ets | Stage 1 |
| FUNCTION-CAND-0003 | FUNC-FAILC-003 | generated | validation_pending | rest_parameter/xts/fail_compile/rest_parameter_not_last_fail_compile.ets | Stage 1 |
| FUNCTION-CAND-0004 | FUNC-PASS-042 | generated | validation_pending | return_type/xts/pass/return_without_value_pass.ets | Stage 1 |
| FUNCTION-CAND-0005 | FUNC-PASS-040 | generated | validation_pending | return_type/xts/pass/return_finally_override_pass.ets | Stage 1 |
| FUNCTION-CAND-0006 | FUNC-FAILC-004 | generated | validation_pending | return_type/xts/fail_compile/return_outside_function_fail_compile.ets | Stage 1 |
| FUNCTION-CAND-0007 | FUNC-PASS-036 | generated | validation_pending | rest_parameter/xts/pass/rest_parameter_basic_pass.ets | Stage 1 |
| FUNCTION-CAND-0008 | FUNC-REGR-007 | generated | validation_pending | rest_parameter/xts/regression/rest_parameter_arguments_difference_regression.ets | Stage 1 |
| FUNCTION-CAND-0009 | FUNC-PASS-020 | generated | validation_pending | function_scope/xts/pass/function_scope_local_variable_pass.ets | Stage 2 |
| FUNCTION-CAND-0010 | FUNC-PASS-021 | generated | validation_pending | function_scope/xts/pass/function_scope_nested_function_pass.ets | Stage 2 |
| FUNCTION-CAND-0011 | FUNC-PASS-022 | generated | validation_pending | function_scope/xts/pass/function_scope_parameter_shadowing_pass.ets | Stage 2 |
| FUNCTION-CAND-0012 | FUNC-FAILR-002 | generated | validation_pending | function_scope/xts/fail_runtime/function_scope_outer_inaccessible_fail_runtime.ets | Stage 2 |
| FUNCTION-CAND-0013 | FUNC-PASS-016 | generated | validation_pending | function_call/xts/pass/function_call_basic_pass.ets | Stage 1 |
| FUNCTION-CAND-0014 | FUNC-PASS-013 | generated | validation_pending | function_call/xts/pass/function_call_apply_bind_pass.ets | Stage 1 |
| FUNCTION-CAND-0015 | FUNC-FAILR-001 | generated | validation_pending | function_call/xts/fail_runtime/function_call_non_callable_fail_runtime.ets | Stage 1 |
| FUNCTION-CAND-0016 | FUNC-PASS-028 | generated | validation_pending | function_type/xts/pass/function_type_function_as_value_pass.ets | Stage 3 |
| FUNCTION-CAND-0017 | FUNC-PASS-026 | generated | validation_pending | function_type/xts/pass/function_type_function_as_parameter_pass.ets | Stage 3 |
| FUNCTION-CAND-0018 | FUNC-PASS-027 | generated | validation_pending | function_type/xts/pass/function_type_function_as_return_value_pass.ets | Stage 3 |
| FUNCTION-CAND-0019 | FUNC-PASS-004 | generated | validation_pending | arrow_function_lambda/xts/pass/arrow_function_lexical_this_pass.ets | Stage 2 |
| FUNCTION-CAND-0020 | FUNC-PASS-001 | generated | validation_pending | arrow_function_lambda/xts/pass/arrow_function_as_callback_pass.ets | Stage 2 |
| FUNCTION-CAND-0021 | FUNC-BOUND-001 | generated | spec_pending | arrow_function_lambda/xts/boundary/arrow_function_no_arguments_boundary.ets | Stage 2 |
| FUNCTION-CAND-0022 | FUNC-PASS-007 | generated | validation_pending | closure/xts/pass/closure_capture_outer_variable_pass.ets | Stage 2 |
| FUNCTION-CAND-0023 | FUNC-PASS-008 | generated | validation_pending | closure/xts/pass/closure_loop_capture_let_pass.ets | Stage 2 |
| FUNCTION-CAND-0024 | FUNC-PASS-010 | generated | validation_pending | closure/xts/pass/closure_nested_closure_pass.ets | Stage 2 |
| FUNCTION-CAND-0025 | FUNC-BOUND-003 | generated | spec_pending | function_overload_signature/xts/boundary/function_overload_signature_basic_boundary.ets | Stage 3 |
| FUNCTION-CAND-0026 | FUNC-FAILC-002 | generated | validation_pending | function_overload_signature/xts/fail_compile/function_overload_signature_missing_impl_fail_compile.ets | Stage 3 |
| FUNCTION-CAND-0027 | FUNC-PASS-002 | generated | validation_pending | arrow_function_lambda/xts/pass/arrow_function_block_body_pass.ets | Stage 2 |
| FUNCTION-CAND-0003b | none | planned | planned | ~optional_parameter/xts/fail_runtime/default_parameter_throw_fail_runtime.ets | planned |
| FUNCTION-CAND-0016b | none | planned | planned | ~function_call/xts/pass/function_call_method_this_pass.ets | planned |
| FUNCTION-CAND-0019b | none | planned | planned | ~function_call/xts/fail_runtime/function_call_callback_throw_fail_runtime.ets | planned |
| FUNCTION-CAND-0023b | none | planned | planned | ~function_type/xts/pass/function_type_name_pass.ets | planned |
| FUNCTION-CAND-0024b | none | planned | planned | ~function_type/xts/pass/function_type_length_pass.ets | planned |
| FUNCTION-CAND-0028b | none | planned | planned | ~closure/xts/fail_runtime/closure_throw_fail_runtime.ets | planned |
| FUNCTION-CAND-0035b | none | planned | planned | ~function_call/xts/pass/function_call_evaluation_order_pass.ets | planned |
| FUNCTION-CAND-0037b | none | planned | planned | ~function_expression/xts/pass/function_expression_named_recursive_pass.ets | planned |
| FUNCTION-CAND-0038b | none | planned | planned | ~function_expression/xts/pass/function_expression_iife_pass.ets | planned |
| FUNCTION-CAND-0039b | none | planned | planned | ~function_expression/xts/regression/function_expression_anonymous_name_boundary.ets | planned |
| FUNCTION-CAND-0001b | none | planned | planned | ~function_declaration/xts/pass/function_declaration_hoisting_pass.ets | planned |
| FUNCTION-CAND-0002b | none | planned | planned | ~function_expression/xts/fail_runtime/function_expression_no_hoisting_fail_runtime.ets | planned |
| FUNCTION-CAND-0003c | none | planned | planned | ~function_declaration/xts/pass/function_declaration_recursive_pass.ets | planned |
| FUNCTION-CAND-0036b | none | planned | planned | ~function_declaration/xts/regression/function_duplicate_parameter_strict_boundary.ets | planned |

## Historical Snapshot

> The original candidate index used a different column format with Chinese headers. The data above is the current source of truth. All 27 generated candidates have corresponding .ets files with registered Case IDs.
