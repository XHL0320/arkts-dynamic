# Null Safety First Batch Candidate Index

## Summary

| 项目 | 数量 |
|---|---:|
| 首批候选数量 | 45 |
| P0 候选数量 | 27 |
| P1 候选数量 | 18 |
| P2 候选数量 | 0 |
| ohosTest 适用候选 | 38 |
| 需要 test262 对照候选 | 20 |

## Candidate List

| Candidate ID | Null Safety 方向 | Test Point | Case Type | Priority | Suggested File Path | Suitable for ohosTest | Needs test262 | Related Chapter | Status | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| NS-CAND-001 | null_basic | null 基础值 | pass | P0 | `05_null_safety/xts/pass/null_basic_pass.ets` | yes | yes | null_safety / types | planned | ES 核心行为 |
| NS-CAND-002 | null_basic | typeof null "object" | pass | P0 | `05_null_safety/xts/pass/null_typeof_pass.ets` | yes | yes | null_safety / types | planned | 历史遗留 |
| NS-CAND-003 | undefined_basic | undefined 基础值 | pass | P0 | `05_null_safety/xts/pass/undefined_basic_pass.ets` | yes | yes | null_safety / types | planned | ES 核心行为 |
| NS-CAND-004 | undefined_basic | typeof undefined | pass | P0 | `05_null_safety/xts/pass/undefined_typeof_pass.ets` | yes | yes | null_safety / types | planned | 类型识别 |
| NS-CAND-005 | null_undefined_equality | null == undefined | pass | P0 | `05_null_safety/xts/pass/null_eq_undefined_pass.ets` | yes | yes | null_safety / operators | planned | 抽象相等 |
| NS-CAND-006 | null_undefined_equality | null === undefined false | pass | P0 | `05_null_safety/xts/pass/null_strict_neq_undefined_pass.ets` | yes | yes | null_safety / operators | planned | 严格不等 |
| NS-CAND-007 | optional_chaining_property | obj?.prop 非 null | pass | P0 | `05_null_safety/xts/pass/optional_chaining_property_pass.ets` | yes | yes | null_safety / operators | planned | ES2020 |
| NS-CAND-008 | optional_chaining_property | obj?.prop 为 null | pass | P0 | `05_null_safety/xts/pass/optional_chaining_property_null_pass.ets` | yes | yes | null_safety / operators | planned | 短路 |
| NS-CAND-009 | optional_chaining_call | obj?.method() 非 null | pass | P0 | `05_null_safety/xts/pass/optional_chaining_call_pass.ets` | yes | yes | null_safety / operators / function | planned | ES2020 |
| NS-CAND-010 | optional_chaining_call | obj?.method() 为 null | pass | P0 | `05_null_safety/xts/pass/optional_chaining_call_null_pass.ets` | yes | yes | null_safety / operators | planned | 短路 |
| NS-CAND-011 | optional_chaining_element | arr?.[index] | pass | P0 | `05_null_safety/xts/pass/optional_chaining_element_pass.ets` | yes | yes | null_safety / operators | planned | ES2020 |
| NS-CAND-012 | nullish_coalescing | null ?? "default" | pass | P0 | `05_null_safety/xts/pass/nullish_coalescing_null_pass.ets` | yes | yes | null_safety / operators | planned | ES2020 |
| NS-CAND-013 | nullish_coalescing | undefined ?? "default" | pass | P0 | `05_null_safety/xts/pass/nullish_coalescing_undefined_pass.ets` | yes | yes | null_safety / operators | planned | ES2020 |
| NS-CAND-014 | nullish_coalescing | 0 ?? "default" 返回 0 | pass | P0 | `05_null_safety/xts/pass/nullish_coalescing_zero_pass.ets` | yes | yes | null_safety / operators | planned | ?? vs || |
| NS-CAND-015 | nullish_coalescing | "" ?? "default" 返回 "" | pass | P0 | `05_null_safety/xts/pass/nullish_coalescing_empty_string_pass.ets` | yes | yes | null_safety / operators | planned | ?? vs || |
| NS-CAND-016 | optional_chaining_property | 可选链赋值目标 fail_compile | fail_compile | P0 | `05_null_safety/xts/fail_compile/optional_chaining_assign_fail_compile.ets` | no | yes | null_safety / operators | planned | SyntaxError |
| NS-CAND-017 | runtime_exception_nullish | 访问 null 属性 TypeError | fail_runtime | P0 | `05_null_safety/xts/fail_runtime/null_property_access_fail_runtime.ets` | yes | yes | null_safety / types | planned | TypeError |
| NS-CAND-018 | runtime_exception_nullish | 访问 undefined 属性 TypeError | fail_runtime | P0 | `05_null_safety/xts/fail_runtime/undefined_property_access_fail_runtime.ets` | yes | yes | null_safety / types | planned | TypeError |
| NS-CAND-019 | runtime_exception_nullish | 调用 null 方法 TypeError | fail_runtime | P0 | `05_null_safety/xts/fail_runtime/null_method_call_fail_runtime.ets` | yes | yes | null_safety / types | planned | TypeError |
| NS-CAND-020 | runtime_exception_nullish | 调用 undefined 方法 TypeError | fail_runtime | P0 | `05_null_safety/xts/fail_runtime/undefined_method_call_fail_runtime.ets` | yes | yes | null_safety / types | planned | TypeError |
| NS-CAND-021 | optional_property | 可选属性缺省 undefined | pass | P0 | `05_null_safety/xts/pass/optional_property_absent_pass.ets` | yes | yes | null_safety / interface | planned | ES 核心行为 |
| NS-CAND-022 | optional_parameter | 可选参数省略 undefined | pass | P0 | `05_null_safety/xts/pass/optional_parameter_omitted_pass.ets` | yes | yes | null_safety / function | planned | ES 核心行为 |
| NS-CAND-023 | default_parameter | 默认参数传 undefined 使用默认 | pass | P0 | `05_null_safety/xts/pass/default_parameter_undefined_pass.ets` | yes | yes | null_safety / function | planned | ES2015 |
| NS-CAND-024 | default_parameter | 默认参数传 null 不触发 | pass | P0 | `05_null_safety/xts/pass/default_parameter_null_pass.ets` | yes | yes | null_safety / function | planned | null vs undefined |
| NS-CAND-025 | function_return_nullish | 函数无 return 返回 undefined | pass | P0 | `05_null_safety/xts/pass/function_return_undefined_pass.ets` | yes | yes | null_safety / function | planned | ES 核心行为 |
| NS-CAND-026 | function_return_nullish | 函数 return null | pass | P0 | `05_null_safety/xts/pass/function_return_null_pass.ets` | yes | yes | null_safety / function | planned | 显式 null |
| NS-CAND-027 | class_field_nullish | class field 未初始化 undefined | pass | P0 | `05_null_safety/xts/pass/class_field_uninitialized_pass.ets` | yes | yes | null_safety / class | planned | ES2022 |
| NS-CAND-028 | nullish_assignment | a ??= b 当 a 为 null | boundary | P0 | `05_null_safety/xts/boundary/nullish_assignment_null_boundary.ets` | yes | no | null_safety / operators | planned | 支持待确认 |
| NS-CAND-029 | non_null_assertion_boundary | value! 非空断言 | boundary | P0 | `05_null_safety/xts/boundary/non_null_assertion_boundary.ets` | yes | no | null_safety / typescript | planned | 支持待确认 |
| NS-CAND-030 | generic_nonnullable_boundary | NonNullable<T> | boundary | P0 | `05_null_safety/xts/boundary/nonnullable_boundary.ets` | yes | no | null_safety / generic | planned | 支持待确认 |
| NS-CAND-031 | union_nullish_boundary | strict null checks | boundary | P0 | `05_null_safety/xts/boundary/strict_null_checks_boundary.ets` | yes | no | null_safety / typescript | planned | 是否开启 |
| NS-CAND-032 | typescript_compatibility_boundary | strict null 兼容 | boundary | P0 | `05_null_safety/xts/boundary/strict_null_compatibility_boundary.ets` | yes | no | null_safety / typescript | planned | 兼容状态 |
| NS-CAND-033 | arkts_dynamic_boundary | 动态 ArkTS null safety | boundary | P0 | `05_null_safety/xts/boundary/arkts_null_safety_support_boundary.ets` | yes | no | null_safety | planned | 支持状态 |
| NS-CAND-034 | arkts_dynamic_boundary | 动态与静态差异 | boundary | P0 | `05_null_safety/xts/boundary/arkts_dynamic_vs_static_boundary.ets` | yes | no | null_safety | planned | 动态/静态差异 |
| NS-CAND-035 | null_basic | Boolean(null) === false | pass | P1 | `05_null_safety/xts/pass/null_toboolean_pass.ets` | yes | yes | null_safety / types | planned | falsy |
| NS-CAND-036 | null_basic | Number(null) === 0 | pass | P1 | `05_null_safety/xts/pass/null_tonumber_pass.ets` | yes | yes | null_safety / types / operators | planned | ToNumber |
| NS-CAND-037 | null_undefined_equality | null == 0 为 false | pass | P1 | `05_null_safety/xts/pass/null_neq_zero_pass.ets` | yes | yes | null_safety / operators | planned | null 不与 0 相等 |
| NS-CAND-038 | optional_chaining_property | 嵌套可选链 | pass | P1 | `05_null_safety/xts/pass/optional_chaining_nested_pass.ets` | yes | yes | null_safety / operators | planned | 多层短路 |
| NS-CAND-039 | nullish_coalescing | false ?? "default" | pass | P1 | `05_null_safety/xts/pass/nullish_coalescing_false_pass.ets` | yes | yes | null_safety / operators | planned | ?? vs || |
| NS-CAND-040 | optional_parameter | 可选参数传 null | pass | P1 | `05_null_safety/xts/pass/optional_parameter_null_pass.ets` | yes | yes | null_safety / function | planned | null vs undefined |
| NS-CAND-041 | default_parameter | 默认参数省略使用默认 | pass | P1 | `05_null_safety/xts/pass/default_parameter_omitted_pass.ets` | yes | yes | null_safety / function | planned | 省略触发 |
| NS-CAND-042 | interface_optional_member | interface optional 缺省 | pass | P1 | `05_null_safety/xts/pass/interface_optional_absent_pass.ets` | yes | yes | null_safety / interface | planned | ES 核心行为 |
| NS-CAND-043 | class_field_nullish | class field 显式 null | pass | P1 | `05_null_safety/xts/pass/class_field_null_pass.ets` | yes | yes | null_safety / class | planned | 显式 null |
| NS-CAND-044 | generic_nonnullable_boundary | T | null union | boundary | P1 | `05_null_safety/xts/boundary/generic_union_null_boundary.ets` | yes | no | null_safety / generic | planned | 支持待确认 |
| NS-CAND-045 | typeof_nullish | typeof null 历史遗留回归 | regression | P1 | `05_null_safety/xts/regression/typeof_null_regression.ets` | yes | yes | null_safety / types | planned | 规范验证 |

## Stage 1 Update Summary

Stage 1 生成了 30 个 `.ets` 文件，对应 30 个 candidate 标记为 created，15 个保持 planned。

### Created Candidates (30)

| Candidate ID | 实际路径 |
|---|---|
| NS-CAND-001 | `xts/pass/null_safety_null_basic_pass.ets` |
| NS-CAND-002 | `xts/pass/null_safety_typeof_null_pass.ets` |
| NS-CAND-003 | `xts/pass/null_safety_undefined_basic_pass.ets` |
| NS-CAND-004 | `xts/pass/null_safety_typeof_null_pass.ets` |
| NS-CAND-005 | `xts/pass/null_safety_null_undefined_equality_pass.ets` |
| NS-CAND-006 | `xts/pass/null_safety_null_undefined_equality_pass.ets` |
| NS-CAND-007 | `xts/pass/null_safety_optional_chaining_property_pass.ets` |
| NS-CAND-008 | `xts/pass/null_safety_optional_chaining_property_pass.ets` |
| NS-CAND-009 | `xts/pass/null_safety_optional_chaining_method_pass.ets` |
| NS-CAND-010 | `xts/pass/null_safety_optional_chaining_method_pass.ets` |
| NS-CAND-011 | `xts/pass/null_safety_optional_chaining_element_pass.ets` |
| NS-CAND-012 | `xts/pass/null_safety_nullish_coalescing_null_pass.ets` |
| NS-CAND-013 | `xts/pass/null_safety_nullish_coalescing_null_pass.ets` |
| NS-CAND-014 | `xts/pass/null_safety_nullish_coalescing_falsy_values_pass.ets` |
| NS-CAND-015 | `xts/pass/null_safety_nullish_coalescing_falsy_values_pass.ets` |
| NS-CAND-021 | `xts/pass/null_safety_optional_property_absent_pass.ets` |
| NS-CAND-022 | `xts/pass/null_safety_optional_parameter_omitted_pass.ets` |
| NS-CAND-023 | `xts/pass/null_safety_default_parameter_undefined_pass.ets` |
| NS-CAND-024 | `xts/pass/null_safety_default_parameter_null_pass.ets` |
| NS-CAND-025 | `xts/pass/null_safety_function_return_undefined_pass.ets` |
| NS-CAND-026 | `xts/pass/null_safety_function_return_null_pass.ets` |
| NS-CAND-017 | `xts/fail_runtime/null_safety_property_access_on_null_fail_runtime.ets` |
| NS-CAND-018 | `xts/fail_runtime/null_safety_property_access_on_undefined_fail_runtime.ets` |
| NS-CAND-019 | `xts/fail_runtime/null_safety_method_call_on_null_fail_runtime.ets` |
| NS-CAND-020 | `xts/fail_runtime/null_safety_method_call_on_undefined_fail_runtime.ets` |
| NS-CAND-028 | `xts/boundary/null_safety_nullish_assignment_boundary.ets` |
| NS-CAND-029 | `xts/boundary/null_safety_non_null_assertion_boundary.ets` |
| NS-CAND-030 | `xts/boundary/null_safety_nonnullable_boundary.ets` |
| NS-CAND-035 | `xts/pass/null_safety_null_basic_pass.ets` |

### Additional Files Without Direct Candidate

| 文件 | Coverage IDs | 用例类型 |
|---|---|---|
| `xts/pass/null_safety_optional_property_undefined_pass.ets` | NS-OP-002 | pass |
| `xts/boundary/null_safety_union_null_boundary.ets` | NS-GEN-002 | boundary |
| `xts/boundary/null_safety_return_type_nullish_boundary.ets` | NS-RET-004 | boundary |
| `xts/boundary/null_safety_class_field_null_boundary.ets` | NS-CF-001, NS-CF-002 | boundary |
| `xts/boundary/null_safety_interface_optional_member_boundary.ets` | NS-IOM-001, NS-IOM-002 | boundary |
| `xts/boundary/null_safety_generic_nullable_boundary.ets` | NS-GEN-003 | boundary |
| `xts/regression/null_safety_optional_chaining_regression.ets` | NS-OC-PROP-001 | regression |
| `xts/regression/null_safety_basic_regression.ets` | NS-NULL-001, NS-EQ-001 | regression |
