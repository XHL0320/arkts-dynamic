# Function XTS Inventory

## Summary

| 项目 | 数量 |
|---|---:|
| Function 叶子目录数量 | 11 |
| .ets 文件总数 | 65 |
| pass 用例数量 | 42 |
| fail_compile 用例数量 | 4 |
| fail_runtime 用例数量 | 3 |
| boundary 用例数量 | 9 |
| regression 用例数量 | 7 |

## Inventory By Leaf

| 叶子目录 | pass | fail_compile | fail_runtime | boundary | regression | 合计 |
|---|---:|---:|---:|---:|---:|---:|
| arrow_function_lambda | 6 | 0 | 0 | 1 | 1 | 8 |
| closure | 6 | 0 | 0 | 1 | 1 | 8 |
| function_call | 6 | 0 | 1 | 0 | 0 | 7 |
| function_declaration | 0 | 0 | 0 | 0 | 0 | 0 |
| function_expression | 0 | 0 | 0 | 0 | 0 | 0 |
| function_overload_signature | 0 | 2 | 0 | 4 | 1 | 7 |
| function_scope | 5 | 0 | 1 | 1 | 1 | 8 |
| function_type | 6 | 0 | 1 | 2 | 1 | 10 |
| optional_parameter | 5 | 0 | 0 | 0 | 1 | 6 |
| rest_parameter | 4 | 1 | 0 | 0 | 1 | 6 |
| return_type | 4 | 1 | 0 | 0 | 0 | 5 |

## Case List

| 序号 | 文件路径 | 叶子目录 | 用例类型 | 推测测试点 | 所属阶段 | 备注 |
|---:|---|---|---|---|---|---|
| 1 | `arrow_function_lambda/xts/boundary/arrow_function_no_arguments_boundary.ets` | arrow_function_lambda | boundary | arrow function no arguments | Stage 2 | actual file |
| 2 | `arrow_function_lambda/xts/pass/arrow_function_as_callback_pass.ets` | arrow_function_lambda | pass | arrow function as callback | Stage 2 | actual file |
| 3 | `arrow_function_lambda/xts/pass/arrow_function_block_body_pass.ets` | arrow_function_lambda | pass | arrow function block body | Stage 2 | actual file |
| 4 | `arrow_function_lambda/xts/pass/arrow_function_expression_body_pass.ets` | arrow_function_lambda | pass | arrow function expression body | Stage 2 | actual file |
| 5 | `arrow_function_lambda/xts/pass/arrow_function_lexical_this_pass.ets` | arrow_function_lambda | pass | arrow function lexical this | Stage 2 | actual file |
| 6 | `arrow_function_lambda/xts/pass/arrow_function_multiple_params_pass.ets` | arrow_function_lambda | pass | arrow function multiple params | Stage 2 | actual file |
| 7 | `arrow_function_lambda/xts/pass/arrow_function_single_param_pass.ets` | arrow_function_lambda | pass | arrow function single param | Stage 2 | actual file |
| 8 | `arrow_function_lambda/xts/regression/arrow_function_nested_regression.ets` | arrow_function_lambda | regression | arrow function nested | Stage 2 | actual file |
| 9 | `closure/xts/boundary/closure_loop_capture_var_boundary.ets` | closure | boundary | closure loop capture var | Stage 2 | actual file |
| 10 | `closure/xts/pass/closure_capture_outer_variable_pass.ets` | closure | pass | closure capture outer variable | Stage 2 | actual file |
| 11 | `closure/xts/pass/closure_loop_capture_let_pass.ets` | closure | pass | closure loop capture let | Stage 2 | actual file |
| 12 | `closure/xts/pass/closure_multiple_instances_pass.ets` | closure | pass | closure multiple instances | Stage 2 | actual file |
| 13 | `closure/xts/pass/closure_nested_closure_pass.ets` | closure | pass | closure nested closure | Stage 2 | actual file |
| 14 | `closure/xts/pass/closure_return_inner_function_pass.ets` | closure | pass | closure return inner function | Stage 2 | actual file |
| 15 | `closure/xts/pass/closure_update_outer_variable_pass.ets` | closure | pass | closure update outer variable | Stage 2 | actual file |
| 16 | `closure/xts/regression/closure_lifetime_regression.ets` | closure | regression | closure lifetime | Stage 2 | actual file |
| 17 | `function_call/xts/fail_runtime/function_call_non_callable_fail_runtime.ets` | function_call | fail_runtime | function call non callable | Stage 1 | actual file |
| 18 | `function_call/xts/pass/function_call_apply_bind_pass.ets` | function_call | pass | function call apply bind | Stage 1 | actual file |
| 19 | `function_call/xts/pass/function_call_as_parameter_pass.ets` | function_call | pass | function call as parameter | Stage 1 | actual file |
| 20 | `function_call/xts/pass/function_call_as_value_pass.ets` | function_call | pass | function call as value | Stage 1 | actual file |
| 21 | `function_call/xts/pass/function_call_basic_pass.ets` | function_call | pass | function call basic | Stage 1 | actual file |
| 22 | `function_call/xts/pass/function_call_extra_args_pass.ets` | function_call | pass | function call extra args | Stage 1 | actual file |
| 23 | `function_call/xts/pass/function_call_missing_args_pass.ets` | function_call | pass | function call missing args | Stage 1 | actual file |
| 24 | `function_overload_signature/xts/boundary/function_overload_signature_basic_boundary.ets` | function_overload_signature | boundary | function overload signature basic | Stage 3 | actual file |
| 25 | `function_overload_signature/xts/boundary/function_overload_signature_multiple_signature_boundary.ets` | function_overload_signature | boundary | function overload signature multiple signature | Stage 3 | actual file |
| 26 | `function_overload_signature/xts/boundary/function_overload_signature_optional_param_boundary.ets` | function_overload_signature | boundary | function overload signature optional param | Stage 3 | actual file |
| 27 | `function_overload_signature/xts/boundary/function_overload_signature_runtime_impl_boundary.ets` | function_overload_signature | boundary | function overload signature runtime impl | Stage 3 | actual file |
| 28 | `function_overload_signature/xts/fail_compile/function_overload_signature_duplicate_impl_fail_compile.ets` | function_overload_signature | fail_compile | function overload signature duplicate impl | Stage 3 | actual file |
| 29 | `function_overload_signature/xts/fail_compile/function_overload_signature_missing_impl_fail_compile.ets` | function_overload_signature | fail_compile | function overload signature missing impl | Stage 3 | actual file |
| 30 | `function_overload_signature/xts/regression/function_overload_signature_dynamic_call_regression.ets` | function_overload_signature | regression | function overload signature dynamic call | Stage 3 | actual file |
| 31 | `function_scope/xts/boundary/function_scope_block_function_boundary.ets` | function_scope | boundary | function scope block function | Stage 2 | actual file |
| 32 | `function_scope/xts/fail_runtime/function_scope_outer_inaccessible_fail_runtime.ets` | function_scope | fail_runtime | function scope outer inaccessible | Stage 2 | actual file |
| 33 | `function_scope/xts/pass/function_scope_block_inside_function_pass.ets` | function_scope | pass | function scope block inside function | Stage 2 | actual file |
| 34 | `function_scope/xts/pass/function_scope_local_variable_pass.ets` | function_scope | pass | function scope local variable | Stage 2 | actual file |
| 35 | `function_scope/xts/pass/function_scope_nested_function_pass.ets` | function_scope | pass | function scope nested function | Stage 2 | actual file |
| 36 | `function_scope/xts/pass/function_scope_parameter_shadowing_pass.ets` | function_scope | pass | function scope parameter shadowing | Stage 2 | actual file |
| 37 | `function_scope/xts/pass/function_scope_variable_shadowing_pass.ets` | function_scope | pass | function scope variable shadowing | Stage 2 | actual file |
| 38 | `function_scope/xts/regression/function_scope_nested_resolution_regression.ets` | function_scope | regression | function scope nested resolution | Stage 2 | actual file |
| 39 | `function_type/xts/boundary/function_type_function_property_boundary.ets` | function_type | boundary | function type function property | Stage 3 | actual file |
| 40 | `function_type/xts/boundary/function_type_ts_annotation_boundary.ets` | function_type | boundary | function type ts annotation | Stage 3 | actual file |
| 41 | `function_type/xts/fail_runtime/function_type_call_non_function_fail_runtime.ets` | function_type | fail_runtime | function type call non function | Stage 3 | actual file |
| 42 | `function_type/xts/pass/function_type_assign_function_variable_pass.ets` | function_type | pass | function type assign function variable | Stage 3 | actual file |
| 43 | `function_type/xts/pass/function_type_callback_basic_pass.ets` | function_type | pass | function type callback basic | Stage 3 | actual file |
| 44 | `function_type/xts/pass/function_type_function_as_parameter_pass.ets` | function_type | pass | function type function as parameter | Stage 3 | actual file |
| 45 | `function_type/xts/pass/function_type_function_as_return_value_pass.ets` | function_type | pass | function type function as return value | Stage 3 | actual file |
| 46 | `function_type/xts/pass/function_type_function_as_value_pass.ets` | function_type | pass | function type function as value | Stage 3 | actual file |
| 47 | `function_type/xts/pass/function_type_nested_callback_pass.ets` | function_type | pass | function type nested callback | Stage 3 | actual file |
| 48 | `function_type/xts/regression/function_type_callback_identity_regression.ets` | function_type | regression | function type callback identity | Stage 3 | actual file |
| 49 | `optional_parameter/xts/pass/default_parameter_basic_pass.ets` | optional_parameter | pass | default parameter basic | Stage 1 | actual file |
| 50 | `optional_parameter/xts/pass/default_parameter_evaluation_order_pass.ets` | optional_parameter | pass | default parameter evaluation order | Stage 1 | actual file |
| 51 | `optional_parameter/xts/pass/default_parameter_null_pass.ets` | optional_parameter | pass | default parameter null | Stage 1 | actual file |
| 52 | `optional_parameter/xts/pass/default_parameter_reference_previous_param_pass.ets` | optional_parameter | pass | default parameter reference previous param | Stage 1 | actual file |
| 53 | `optional_parameter/xts/pass/default_parameter_undefined_pass.ets` | optional_parameter | pass | default parameter undefined | Stage 1 | actual file |
| 54 | `optional_parameter/xts/regression/default_parameter_side_effect_regression.ets` | optional_parameter | regression | default parameter side effect | Stage 1 | actual file |
| 55 | `rest_parameter/xts/fail_compile/rest_parameter_not_last_fail_compile.ets` | rest_parameter | fail_compile | rest parameter not last | Stage 1 | actual file |
| 56 | `rest_parameter/xts/pass/rest_parameter_array_behavior_pass.ets` | rest_parameter | pass | rest parameter array behavior | Stage 1 | actual file |
| 57 | `rest_parameter/xts/pass/rest_parameter_basic_pass.ets` | rest_parameter | pass | rest parameter basic | Stage 1 | actual file |
| 58 | `rest_parameter/xts/pass/rest_parameter_empty_pass.ets` | rest_parameter | pass | rest parameter empty | Stage 1 | actual file |
| 59 | `rest_parameter/xts/pass/rest_parameter_with_normal_params_pass.ets` | rest_parameter | pass | rest parameter with normal params | Stage 1 | actual file |
| 60 | `rest_parameter/xts/regression/rest_parameter_arguments_difference_regression.ets` | rest_parameter | regression | rest parameter arguments difference | Stage 1 | actual file |
| 61 | `return_type/xts/fail_compile/return_outside_function_fail_compile.ets` | return_type | fail_compile | return outside function | Stage 1 | actual file |
| 62 | `return_type/xts/pass/return_early_exit_pass.ets` | return_type | pass | return early exit | Stage 1 | actual file |
| 63 | `return_type/xts/pass/return_finally_override_pass.ets` | return_type | pass | return finally override | Stage 1 | actual file |
| 64 | `return_type/xts/pass/return_value_basic_pass.ets` | return_type | pass | return value basic | Stage 1 | actual file |
| 65 | `return_type/xts/pass/return_without_value_pass.ets` | return_type | pass | return without value | Stage 1 | actual file |
