# Null Safety XTS Inventory

## Summary

| 项目 | 数量 |
|---|---:|
| .ets 文件总数 | 30 |
| pass 用例数量 | 16 |
| fail_compile 用例数量 | 0 |
| fail_runtime 用例数量 | 4 |
| boundary 用例数量 | 8 |
| regression 用例数量 | 2 |
| helper module 文件数量 | 0 |

## Inventory By Type

| 用例类型 | 数量 | 目录 |
|---|---:|---|
| pass | 16 | `xts/pass/` |
| fail_compile | 0 | `xts/fail_compile/` |
| fail_runtime | 4 | `xts/fail_runtime/` |
| boundary | 8 | `xts/boundary/` |
| regression | 2 | `xts/regression/` |

## Null Safety Direction Summary

| Null Safety 方向 | pass | fail_compile | fail_runtime | boundary | regression | 合计 |
|---|---:|---:|---:|---:|---:|---:|
| null_basic | 1 | 0 | 0 | 0 | 1 | 2 |
| undefined_basic | 1 | 0 | 0 | 0 | 0 | 1 |
| null_undefined_equality | 1 | 0 | 0 | 0 | 0 | 1 |
| typeof_nullish | 1 | 0 | 0 | 0 | 0 | 1 |
| optional_chaining_property | 1 | 0 | 0 | 0 | 1 | 2 |
| optional_chaining_call | 1 | 0 | 0 | 0 | 0 | 1 |
| optional_chaining_element | 1 | 0 | 0 | 0 | 0 | 1 |
| nullish_coalescing | 2 | 0 | 0 | 0 | 0 | 2 |
| nullish_assignment | 0 | 0 | 0 | 1 | 0 | 1 |
| non_null_assertion_boundary | 0 | 0 | 0 | 1 | 0 | 1 |
| optional_property | 2 | 0 | 0 | 0 | 0 | 2 |
| optional_parameter | 1 | 0 | 0 | 0 | 0 | 1 |
| default_parameter | 2 | 0 | 0 | 0 | 0 | 2 |
| function_return_nullish | 2 | 0 | 0 | 1 | 0 | 3 |
| runtime_exception_nullish | 0 | 0 | 4 | 0 | 0 | 4 |
| class_field_nullish | 0 | 0 | 0 | 1 | 0 | 1 |
| interface_optional_member | 0 | 0 | 0 | 1 | 0 | 1 |
| generic_nonnullable_boundary | 0 | 0 | 0 | 2 | 0 | 2 |
| union_nullish_boundary | 0 | 0 | 0 | 1 | 0 | 1 |
| typescript_compatibility_boundary | 0 | 0 | 0 | 0 | 0 | 0 |
| arkts_dynamic_boundary | 0 | 0 | 0 | 0 | 0 | 0 |

## Case List

| 序号 | 文件路径 | 用例类型 | Null Safety 方向 | 推测测试点 | 所属阶段 | 备注 |
|---|---|---|---|---|---|---|
| 1 | `xts/pass/null_safety_null_basic_pass.ets` | pass | null_basic | null 基础值 | Stage 1 | ES 核心行为 |
| 2 | `xts/pass/null_safety_undefined_basic_pass.ets` | pass | undefined_basic | undefined 基础值 | Stage 1 | ES 核心行为 |
| 3 | `xts/pass/null_safety_typeof_null_pass.ets` | pass | typeof_nullish | typeof null/undefined | Stage 1 | 历史遗留 |
| 4 | `xts/pass/null_safety_null_undefined_equality_pass.ets` | pass | null_undefined_equality | null/undefined 相等性 | Stage 1 | ES 核心行为 |
| 5 | `xts/pass/null_safety_optional_chaining_property_pass.ets` | pass | optional_chaining_property | 可选链属性 | Stage 1 | ES2020 |
| 6 | `xts/pass/null_safety_optional_chaining_method_pass.ets` | pass | optional_chaining_call | 可选链方法 | Stage 1 | ES2020 |
| 7 | `xts/pass/null_safety_optional_chaining_element_pass.ets` | pass | optional_chaining_element | 可选链元素 | Stage 1 | ES2020 |
| 8 | `xts/pass/null_safety_nullish_coalescing_null_pass.ets` | pass | nullish_coalescing | null/undefined ?? | Stage 1 | ES2020 |
| 9 | `xts/pass/null_safety_nullish_coalescing_falsy_values_pass.ets` | pass | nullish_coalescing | ?? vs || falsy | Stage 1 | ES2020 |
| 10 | `xts/pass/null_safety_optional_property_absent_pass.ets` | pass | optional_property | 可选属性缺省 | Stage 1 | ES 核心行为 |
| 11 | `xts/pass/null_safety_optional_property_undefined_pass.ets` | pass | optional_property | 可选属性 undefined | Stage 1 | ES 核心行为 |
| 12 | `xts/pass/null_safety_optional_parameter_omitted_pass.ets` | pass | optional_parameter | 可选参数省略 | Stage 1 | ES 核心行为 |
| 13 | `xts/pass/null_safety_default_parameter_undefined_pass.ets` | pass | default_parameter | 默认参数 undefined | Stage 1 | ES2015 |
| 14 | `xts/pass/null_safety_default_parameter_null_pass.ets` | pass | default_parameter | 默认参数 null | Stage 1 | null vs undefined |
| 15 | `xts/pass/null_safety_function_return_undefined_pass.ets` | pass | function_return_nullish | 函数返回 undefined | Stage 1 | ES 核心行为 |
| 16 | `xts/pass/null_safety_function_return_null_pass.ets` | pass | function_return_nullish | 函数返回 null | Stage 1 | 显式 null |
| 17 | `xts/fail_runtime/null_safety_property_access_on_null_fail_runtime.ets` | fail_runtime | runtime_exception_nullish | null 属性访问 TypeError | Stage 1 | TypeError |
| 18 | `xts/fail_runtime/null_safety_property_access_on_undefined_fail_runtime.ets` | fail_runtime | runtime_exception_nullish | undefined 属性访问 TypeError | Stage 1 | TypeError |
| 19 | `xts/fail_runtime/null_safety_method_call_on_null_fail_runtime.ets` | fail_runtime | runtime_exception_nullish | null 方法调用 TypeError | Stage 1 | TypeError |
| 20 | `xts/fail_runtime/null_safety_method_call_on_undefined_fail_runtime.ets` | fail_runtime | runtime_exception_nullish | undefined 方法调用 TypeError | Stage 1 | TypeError |
| 21 | `xts/boundary/null_safety_nullish_assignment_boundary.ets` | boundary | nullish_assignment | ??= 支持 | Stage 1 | 支持待确认 |
| 22 | `xts/boundary/null_safety_non_null_assertion_boundary.ets` | boundary | non_null_assertion_boundary | ! 非空断言 | Stage 1 | 支持待确认 |
| 23 | `xts/boundary/null_safety_nonnullable_boundary.ets` | boundary | generic_nonnullable_boundary | NonNullable<T> | Stage 1 | 支持待确认 |
| 24 | `xts/boundary/null_safety_union_null_boundary.ets` | boundary | union_nullish_boundary | T | null union | Stage 1 | 支持待确认 |
| 25 | `xts/boundary/null_safety_return_type_nullish_boundary.ets` | boundary | function_return_nullish | 返回类型 nullish | Stage 1 | strict null 检查 |
| 26 | `xts/boundary/null_safety_class_field_null_boundary.ets` | boundary | class_field_nullish | class field null | Stage 1 | 初始化边界 |
| 27 | `xts/boundary/null_safety_interface_optional_member_boundary.ets` | boundary | interface_optional_member | interface 可选成员 | Stage 1 | 编译期检查 |
| 28 | `xts/boundary/null_safety_generic_nullable_boundary.ets` | boundary | generic_nonnullable_boundary | generic nullable | Stage 1 | 支持待确认 |
| 29 | `xts/regression/null_safety_optional_chaining_regression.ets` | regression | optional_chaining_property | 可选链回归 | Stage 1 | 回归验证 |
| 30 | `xts/regression/null_safety_basic_regression.ets` | regression | null_basic | null safety 基础回归 | Stage 1 | 回归验证 |
