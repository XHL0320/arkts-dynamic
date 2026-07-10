# Operator XTS Inventory

## Summary

| 项目 | 数量 |
|---|---:|
| .ets 文件总数 | 33 |
| pass 用例数量 | 26 |
| fail_compile 用例数量 | 1 |
| fail_runtime 用例数量 | 4 |
| boundary 用例数量 | 1 |
| regression 用例数量 | 1 |
| helper module 文件数量 | 0 |

## Inventory By Type

| 用例类型 | 数量 | 目录 |
|---|---:|---|
| pass | 26 | `xts/pass/` |
| fail_compile | 1 | `xts/fail_compile/` |
| fail_runtime | 4 | `xts/fail_runtime/` |
| boundary | 1 | `xts/boundary/` |
| regression | 1 | `xts/regression/` |
| helper module | 0 | N/A |

## Operator Direction Summary

| 运算符方向 | pass | fail_compile | fail_runtime | boundary | regression | 合计 |
|---|---:|---:|---:|---:|---:|---:|
| arithmetic | 4 | 0 | 1 | 0 | 0 | 5 |
| equality | 4 | 0 | 0 | 0 | 0 | 4 |
| relational | 2 | 0 | 0 | 0 | 0 | 2 |
| logical | 3 | 0 | 0 | 0 | 0 | 3 |
| nullish_coalescing | 2 | 0 | 0 | 0 | 0 | 2 |
| optional_chaining | 1 | 1 | 0 | 0 | 0 | 2 |
| typeof_operator | 2 | 0 | 1 | 0 | 0 | 3 |
| instanceof | 1 | 0 | 1 | 0 | 0 | 2 |
| in_operator | 1 | 0 | 1 | 0 | 0 | 2 |
| delete_operator | 1 | 0 | 0 | 1 | 0 | 2 |
| bitwise | 0 | 0 | 0 | 0 | 0 | 0 |
| assignment | 0 | 0 | 0 | 0 | 0 | 0 |
| compound_assignment | 1 | 0 | 0 | 0 | 1 | 2 |
| update | 2 | 0 | 0 | 0 | 0 | 2 |
| conditional | 2 | 0 | 0 | 0 | 0 | 2 |
| comma | 0 | 0 | 0 | 0 | 0 | 0 |
| evaluation_order | 0 | 0 | 0 | 0 | 0 | 0 |
| unknown | 0 | 0 | 0 | 0 | 0 | 0 |

## Case List

| 序号 | 文件路径 | 用例类型 | 运算符方向 | 推测测试点 | 所属阶段 | 备注 |
|---:|---|---|---|---|---|---|
| 1 | `xts/pass/operator_arithmetic_number_add_pass.ets` | pass | arithmetic | number addition | Stage 1 | generated |
| 2 | `xts/pass/operator_arithmetic_string_concat_pass.ets` | pass | arithmetic | string concatenation | Stage 1 | generated |
| 3 | `xts/pass/operator_arithmetic_boolean_conversion_pass.ets` | pass | arithmetic | boolean numeric conversion | Stage 1 | generated |
| 4 | `xts/pass/operator_arithmetic_undefined_nan_pass.ets` | pass | arithmetic | undefined arithmetic NaN | Stage 1 | generated |
| 5 | `xts/fail_runtime/operator_arithmetic_number_bigint_add_fail_runtime.ets` | fail_runtime | arithmetic | number + bigint TypeError | Stage 1 | generated |
| 6 | `xts/pass/operator_equality_strict_primitives_pass.ets` | pass | equality | strict equality primitives | Stage 1 | generated |
| 7 | `xts/pass/operator_equality_loose_null_undefined_pass.ets` | pass | equality | loose equality null undefined | Stage 1 | generated |
| 8 | `xts/pass/operator_equality_loose_number_string_pass.ets` | pass | equality | loose equality number string | Stage 1 | generated |
| 9 | `xts/pass/operator_equality_nan_pass.ets` | pass | equality | NaN equality | Stage 1 | generated |
| 10 | `xts/pass/operator_relational_number_bigint_pass.ets` | pass | relational | number bigint comparison | Stage 1 | generated |
| 11 | `xts/pass/operator_relational_nan_pass.ets` | pass | relational | NaN relational comparison | Stage 1 | generated |
| 12 | `xts/pass/operator_logical_and_short_circuit_pass.ets` | pass | logical | logical and short-circuit | Stage 1 | generated |
| 13 | `xts/pass/operator_logical_or_short_circuit_pass.ets` | pass | logical | logical or short-circuit | Stage 1 | generated |
| 14 | `xts/pass/operator_logical_not_truthy_falsy_pass.ets` | pass | logical | logical not truthy/falsy | Stage 1 | generated |
| 15 | `xts/pass/operator_nullish_null_undefined_pass.ets` | pass | nullish_coalescing | nullish null/undefined | Stage 1 | generated |
| 16 | `xts/pass/operator_nullish_preserve_falsy_pass.ets` | pass | nullish_coalescing | preserve false/zero/empty string | Stage 1 | generated |
| 17 | `xts/pass/operator_optional_property_access_pass.ets` | pass | optional_chaining | optional property access | Stage 1 | generated |
| 18 | `xts/fail_compile/operator_optional_assignment_fail_compile.ets` | fail_compile | optional_chaining | optional chain assignment invalid | Stage 1 | generated |
| 19 | `xts/pass/operator_typeof_undeclared_pass.ets` | pass | typeof_operator | typeof undeclared | Stage 1 | generated |
| 20 | `xts/pass/operator_typeof_function_pass.ets` | pass | typeof_operator | typeof function | Stage 1 | generated |
| 21 | `xts/fail_runtime/operator_typeof_tdz_fail_runtime.ets` | fail_runtime | typeof_operator | typeof TDZ | Stage 1 | generated |
| 22 | `xts/pass/operator_delete_object_property_pass.ets` | pass | delete_operator | delete object property | Stage 1 | generated |
| 23 | `xts/boundary/operator_delete_non_configurable_boundary.ets` | boundary | delete_operator | delete non-configurable property | Stage 1 | pending confirmation |
| 24 | `xts/pass/operator_in_property_exists_pass.ets` | pass | in_operator | in property exists | Stage 1 | generated |
| 25 | `xts/fail_runtime/operator_in_non_object_rhs_fail_runtime.ets` | fail_runtime | in_operator | in RHS non-object TypeError | Stage 1 | generated |
| 26 | `xts/pass/operator_instanceof_class_pass.ets` | pass | instanceof | instanceof class | Stage 1 | generated |
| 27 | `xts/fail_runtime/operator_instanceof_non_callable_fail_runtime.ets` | fail_runtime | instanceof | RHS non-callable TypeError | Stage 1 | generated |
| 28 | `xts/pass/operator_compound_plus_assignment_pass.ets` | pass | compound_assignment | plus assignment | Stage 1 | generated |
| 29 | `xts/regression/operator_compound_left_once_regression.ets` | regression | compound_assignment | left evaluated once | Stage 1 | regression |
| 30 | `xts/pass/operator_update_prefix_increment_pass.ets` | pass | update | prefix increment | Stage 1 | generated |
| 31 | `xts/pass/operator_update_postfix_increment_pass.ets` | pass | update | postfix increment | Stage 1 | generated |
| 32 | `xts/pass/operator_conditional_true_branch_pass.ets` | pass | conditional | true branch only | Stage 1 | generated |
| 33 | `xts/pass/operator_conditional_false_branch_pass.ets` | pass | conditional | false branch only | Stage 1 | generated |
