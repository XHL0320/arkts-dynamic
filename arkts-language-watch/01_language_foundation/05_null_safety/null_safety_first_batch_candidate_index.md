# Null Safety First Batch Candidate Index

## Summary

| 项目 | 数量 |
|---|---:|
| 首批候选数量 | 45 |
| generated 候选数量 | 29 |
| planned 候选数量 | 16 |
| P0 候选数量 | 27 |
| P1 候选数量 | 18 |
| P2 候选数量 | 0 |
| 主用例文件 | 30 |
| Additional Files (无直接 Candidate) | 8 |

## Candidate List

| Candidate ID | Case ID | Null Safety 方向 | 测试点 | 用例类型 | 优先级 | Generation Status | Validation Status | Actual Path | Coverage ID | 所属阶段 | 备注 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| NS-CAND-001 | NULL-PASS-005 | null_basic | null 基础值 | pass | P0 | generated | validation_pending | `xts/pass/null_safety_null_basic_pass.ets` | NS-NULL-001 | Stage 1 | ES 核心行为 |
| NS-CAND-002 | NULL-PASS-015 | null_basic | typeof null "object" | pass | P0 | generated | validation_pending | `xts/pass/null_safety_typeof_null_pass.ets` | NS-TYPEOF-001 | Stage 1 | 历史遗留 |
| NS-CAND-003 | NULL-PASS-016 | undefined_basic | undefined 基础值 | pass | P0 | generated | validation_pending | `xts/pass/null_safety_undefined_basic_pass.ets` | NS-UNDEF-001 | Stage 1 | ES 核心行为 |
| NS-CAND-004 | NULL-PASS-015 | undefined_basic | typeof undefined | pass | P0 | generated | validation_pending | `xts/pass/null_safety_typeof_null_pass.ets` | NS-TYPEOF-002 | Stage 1 | 类型识别 |
| NS-CAND-005 | NULL-PASS-006 | null_undefined_equality | null == undefined | pass | P0 | generated | validation_pending | `xts/pass/null_safety_null_undefined_equality_pass.ets` | NS-EQ-001 | Stage 1 | 抽象相等 |
| NS-CAND-006 | NULL-PASS-006 | null_undefined_equality | null === undefined false | pass | P0 | generated | validation_pending | `xts/pass/null_safety_null_undefined_equality_pass.ets` | NS-EQ-002 | Stage 1 | 严格不等 |
| NS-CAND-007 | NULL-PASS-011 | optional_chaining_property | obj?.prop 非 null | pass | P0 | generated | validation_pending | `xts/pass/null_safety_optional_chaining_property_pass.ets` | NS-OC-PROP-001 | Stage 1 | ES2020 |
| NS-CAND-008 | NULL-PASS-011 | optional_chaining_property | obj?.prop 为 null | pass | P0 | generated | validation_pending | `xts/pass/null_safety_optional_chaining_property_pass.ets` | NS-OC-PROP-002 | Stage 1 | 短路 |
| NS-CAND-009 | NULL-PASS-010 | optional_chaining_call | obj?.method() 非 null | pass | P0 | generated | validation_pending | `xts/pass/null_safety_optional_chaining_method_pass.ets` | NS-OC-CALL-001 | Stage 1 | ES2020 |
| NS-CAND-010 | NULL-PASS-010 | optional_chaining_call | obj?.method() 为 null | pass | P0 | generated | validation_pending | `xts/pass/null_safety_optional_chaining_method_pass.ets` | NS-OC-CALL-002 | Stage 1 | 短路 |
| NS-CAND-011 | NULL-PASS-009 | optional_chaining_element | arr?.[index] | pass | P0 | generated | validation_pending | `xts/pass/null_safety_optional_chaining_element_pass.ets` | NS-OC-ELEM-001 | Stage 1 | ES2020 |
| NS-CAND-012 | NULL-PASS-008 | nullish_coalescing | null ?? "default" | pass | P0 | generated | validation_pending | `xts/pass/null_safety_nullish_coalescing_null_pass.ets` | NS-NC-001 | Stage 1 | ES2020 |
| NS-CAND-013 | NULL-PASS-008 | nullish_coalescing | undefined ?? "default" | pass | P0 | generated | validation_pending | `xts/pass/null_safety_nullish_coalescing_null_pass.ets` | NS-NC-002 | Stage 1 | ES2020 |
| NS-CAND-014 | NULL-PASS-007 | nullish_coalescing | 0 ?? "default" 返回 0 | pass | P0 | generated | validation_pending | `xts/pass/null_safety_nullish_coalescing_falsy_values_pass.ets` | NS-NC-003 | Stage 1 | ?? vs || |
| NS-CAND-015 | NULL-PASS-007 | nullish_coalescing | "" ?? "default" 返回 "" | pass | P0 | generated | validation_pending | `xts/pass/null_safety_nullish_coalescing_falsy_values_pass.ets` | NS-NC-004 | Stage 1 | ?? vs || |
| NS-CAND-016 | none | optional_chaining_property | 可选链赋值目标 fail_compile | fail_compile | P0 | planned | planned | `~xts/fail_compile/optional_chaining_assign_fail_compile.ets` | NS-OC-PROP-005 | Stage 0 | SyntaxError |
| NS-CAND-017 | NULL-FAILR-003 | runtime_exception_nullish | 访问 null 属性 TypeError | fail_runtime | P0 | generated | validation_pending | `xts/fail_runtime/null_safety_property_access_on_null_fail_runtime.ets` | NS-RT-001 | Stage 1 | TypeError |
| NS-CAND-018 | NULL-FAILR-004 | runtime_exception_nullish | 访问 undefined 属性 TypeError | fail_runtime | P0 | generated | validation_pending | `xts/fail_runtime/null_safety_property_access_on_undefined_fail_runtime.ets` | NS-RT-002 | Stage 1 | TypeError |
| NS-CAND-019 | NULL-FAILR-001 | runtime_exception_nullish | 调用 null 方法 TypeError | fail_runtime | P0 | generated | validation_pending | `xts/fail_runtime/null_safety_method_call_on_null_fail_runtime.ets` | NS-RT-003 | Stage 1 | TypeError |
| NS-CAND-020 | NULL-FAILR-002 | runtime_exception_nullish | 调用 undefined 方法 TypeError | fail_runtime | P0 | generated | validation_pending | `xts/fail_runtime/null_safety_method_call_on_undefined_fail_runtime.ets` | NS-RT-004 | Stage 1 | TypeError |
| NS-CAND-021 | NULL-PASS-013 | optional_property | 可选属性缺省 undefined | pass | P0 | generated | validation_pending | `xts/pass/null_safety_optional_property_absent_pass.ets` | NS-OP-001 | Stage 1 | ES 核心行为 |
| NS-CAND-022 | NULL-PASS-012 | optional_parameter | 可选参数省略 undefined | pass | P0 | generated | validation_pending | `xts/pass/null_safety_optional_parameter_omitted_pass.ets` | NS-OPTPARAM-001 | Stage 1 | ES 核心行为 |
| NS-CAND-023 | NULL-PASS-002 | default_parameter | 默认参数传 undefined 使用默认 | pass | P0 | generated | validation_pending | `xts/pass/null_safety_default_parameter_undefined_pass.ets` | NS-DEFPARAM-001 | Stage 1 | ES2015 |
| NS-CAND-024 | NULL-PASS-001 | default_parameter | 默认参数传 null 不触发 | pass | P0 | generated | validation_pending | `xts/pass/null_safety_default_parameter_null_pass.ets` | NS-DEFPARAM-002 | Stage 1 | null vs undefined |
| NS-CAND-025 | NULL-PASS-004 | function_return_nullish | 函数无 return 返回 undefined | pass | P0 | generated | validation_pending | `xts/pass/null_safety_function_return_undefined_pass.ets` | NS-RET-001 | Stage 1 | ES 核心行为 |
| NS-CAND-026 | NULL-PASS-003 | function_return_nullish | 函数 return null | pass | P0 | generated | validation_pending | `xts/pass/null_safety_function_return_null_pass.ets` | NS-RET-002 | Stage 1 | 显式 null |
| NS-CAND-027 | none | class_field_nullish | class field 未初始化 undefined | pass | P0 | planned | planned | `~xts/pass/class_field_uninitialized_pass.ets` | NS-CF-001 | Stage 0 | ES2022 |
| NS-CAND-028 | NULL-BOUND-006 | nullish_assignment | a ??= b 当 a 为 null | boundary | P0 | generated | spec_pending | `xts/boundary/null_safety_nullish_assignment_boundary.ets` | NS-NA-001 | Stage 1 | 支持待确认 |
| NS-CAND-029 | NULL-BOUND-004 | non_null_assertion_boundary | value! 非空断言 | boundary | P0 | generated | spec_pending | `xts/boundary/null_safety_non_null_assertion_boundary.ets` | NS-NNA-001 | Stage 1 | 支持待确认 |
| NS-CAND-030 | NULL-BOUND-005 | generic_nonnullable_boundary | NonNullable<T> | boundary | P0 | generated | spec_pending | `xts/boundary/null_safety_nonnullable_boundary.ets` | NS-GEN-001 | Stage 1 | 支持待确认 |
| NS-CAND-031 | none | union_nullish_boundary | strict null checks | boundary | P0 | planned | planned | `~xts/boundary/strict_null_checks_boundary.ets` | NS-UNION-003 | Stage 0 | 是否开启 |
| NS-CAND-032 | none | typescript_compatibility_boundary | strict null 兼容 | boundary | P0 | planned | planned | `~xts/boundary/strict_null_compatibility_boundary.ets` | NS-TSCOMP-001 | Stage 0 | 兼容状态 |
| NS-CAND-033 | none | arkts_dynamic_boundary | 动态 ArkTS null safety | boundary | P0 | planned | planned | `~xts/boundary/arkts_null_safety_support_boundary.ets` | NS-ARKTS-001 | Stage 0 | 支持状态 |
| NS-CAND-034 | none | arkts_dynamic_boundary | 动态与静态差异 | boundary | P0 | planned | planned | `~xts/boundary/arkts_dynamic_vs_static_boundary.ets` | NS-ARKTS-002 | Stage 0 | 动态/静态差异 |
| NS-CAND-035 | NULL-PASS-005 | null_basic | Boolean(null) === false | pass | P1 | generated | validation_pending | `xts/pass/null_safety_null_basic_pass.ets` | NS-NULL-003 | Stage 1 | falsy |
| NS-CAND-036 | none | null_basic | Number(null) === 0 | pass | P1 | planned | planned | `~xts/pass/null_tonumber_pass.ets` | NS-NULL-004 | Stage 0 | ToNumber |
| NS-CAND-037 | none | null_undefined_equality | null == 0 为 false | pass | P1 | planned | planned | `~xts/pass/null_neq_zero_pass.ets` | NS-EQ-003 | Stage 0 | null 不与 0 相等 |
| NS-CAND-038 | none | optional_chaining_property | 嵌套可选链 | pass | P1 | planned | planned | `~xts/pass/optional_chaining_nested_pass.ets` | NS-OC-PROP-003 | Stage 0 | 多层短路 |
| NS-CAND-039 | none | nullish_coalescing | false ?? "default" | pass | P1 | planned | planned | `~xts/pass/nullish_coalescing_false_pass.ets` | NS-NC-005 | Stage 0 | ?? vs || |
| NS-CAND-040 | none | optional_parameter | 可选参数传 null | pass | P1 | planned | planned | `~xts/pass/optional_parameter_null_pass.ets` | NS-OPTPARAM-003 | Stage 0 | null vs undefined |
| NS-CAND-041 | none | default_parameter | 默认参数省略使用默认 | pass | P1 | planned | planned | `~xts/pass/default_parameter_omitted_pass.ets` | NS-DEFPARAM-003 | Stage 0 | 省略触发 |
| NS-CAND-042 | none | interface_optional_member | interface optional 缺省 | pass | P1 | planned | planned | `~xts/pass/interface_optional_absent_pass.ets` | NS-IOM-001 | Stage 0 | ES 核心行为 |
| NS-CAND-043 | none | class_field_nullish | class field 显式 null | pass | P1 | planned | planned | `~xts/pass/class_field_null_pass.ets` | NS-CF-002 | Stage 0 | 显式 null |
| NS-CAND-044 | none | generic_nonnullable_boundary | T \| null union | boundary | P1 | planned | planned | `~xts/boundary/generic_union_null_boundary.ets` | NS-GEN-002 | Stage 0 | 支持待确认 |
| NS-CAND-045 | none | typeof_nullish | typeof null 历史遗留回归 | regression | P1 | planned | planned | `~xts/regression/typeof_null_regression.ets` | NS-TYPEOF-004 | Stage 0 | 规范验证 |

## Additional Files Without Direct Candidate

The following 8 generated files do not have a direct Candidate ID but are tracked in the Coverage Matrix:

| 文件 | Case ID | Coverage IDs | 用例类型 |
|---|---|---|---|
| `xts/pass/null_safety_optional_property_undefined_pass.ets` | NULL-PASS-014 | NS-OP-002, NS-OP-005 | pass |
| `xts/boundary/null_safety_union_null_boundary.ets` | NULL-BOUND-008 | NS-UNION-001 | boundary |
| `xts/boundary/null_safety_return_type_nullish_boundary.ets` | NULL-BOUND-007 | NS-RET-004 | boundary |
| `xts/boundary/null_safety_class_field_null_boundary.ets` | NULL-BOUND-001 | NS-CF-001, NS-CF-002 | boundary |
| `xts/boundary/null_safety_interface_optional_member_boundary.ets` | NULL-BOUND-003 | NS-IOM-001, NS-IOM-002, NS-IOM-003 | boundary |
| `xts/boundary/null_safety_generic_nullable_boundary.ets` | NULL-BOUND-002 | NS-GEN-002 | boundary |
| `xts/regression/null_safety_optional_chaining_regression.ets` | NULL-REGR-002 | NS-OC-PROP-001, NS-OC-PROP-002, NS-OC-PROP-004 | regression |
| `xts/regression/null_safety_basic_regression.ets` | NULL-REGR-001 | NS-NULL-001, NS-EQ-001, NS-NC-001 | regression |

## Historical Snapshot: Stage 1 Update

> **Note**: Stage 1 generated 30 `.ets` files. Task 3C-Fix corrected Coverage associations for NULL-BOUND-002 (NS-GEN-003/004 → NS-GEN-002) and NULL-BOUND-008 (NS-GEN-002 removed, kept NS-UNION-001).
