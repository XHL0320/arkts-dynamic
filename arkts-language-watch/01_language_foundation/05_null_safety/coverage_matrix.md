# Null Safety Coverage Matrix

## Coverage Status Summary

| 项目 | 数量 |
|---|---:|
| Coverage ID 总数 | 96 |
| generated | 58 |
| planned | 38 |
| 主用例文件 | 30 |
| validation_pending | 50 |
| spec_pending | 8 |
| planned (validation) | 38 |

## Main Coverage Matrix

| Coverage ID | Null Safety 方向 | 测试点 | 用例类型 | 优先级 | Coverage Status | Case ID | Actual Path | Validation Status | 关联章节 | 风险点 | 备注 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| NS-NULL-001 | null_basic | null 基础值 | pass | P0 | generated | NULL-PASS-005, NULL-REGR-001 | `xts/pass/null_safety_null_basic_pass.ets` | validation_pending | null_safety / types | 低 | ES 核心行为 |
| NS-NULL-002 | null_basic | typeof null 返回 "object" | pass | P0 | planned | none | `~xts/pass/null_typeof_pass` | planned | null_safety / types / operators | 低 | 历史遗留 |
| NS-NULL-003 | null_basic | Boolean(null) === false | pass | P0 | generated | NULL-PASS-005 | `xts/pass/null_safety_null_basic_pass.ets` | validation_pending | null_safety / types | 低 | falsy |
| NS-NULL-004 | null_basic | Number(null) === 0 | pass | P1 | generated | NULL-PASS-005 | `xts/pass/null_safety_null_basic_pass.ets` | validation_pending | null_safety / types / operators | 低 | ToNumber |
| NS-NULL-005 | null_basic | String(null) === "null" | pass | P1 | generated | NULL-PASS-005 | `xts/pass/null_safety_null_basic_pass.ets` | validation_pending | null_safety / types / operators | 低 | ToString |
| NS-UNDEF-001 | undefined_basic | undefined 基础值 | pass | P0 | generated | NULL-PASS-016 | `xts/pass/null_safety_undefined_basic_pass.ets` | validation_pending | null_safety / types | 低 | ES 核心行为 |
| NS-UNDEF-002 | undefined_basic | typeof undefined 返回 "undefined" | pass | P0 | planned | none | `~xts/pass/undefined_typeof_pass` | planned | null_safety / types / operators | 低 | 类型识别 |
| NS-UNDEF-003 | undefined_basic | Boolean(undefined) === false | pass | P0 | generated | NULL-PASS-016 | `xts/pass/null_safety_undefined_basic_pass.ets` | validation_pending | null_safety / types | 低 | falsy |
| NS-UNDEF-004 | undefined_basic | Number(undefined) === NaN | pass | P1 | generated | NULL-PASS-016 | `xts/pass/null_safety_undefined_basic_pass.ets` | validation_pending | null_safety / types / operators | 中 | NaN |
| NS-UNDEF-005 | undefined_basic | 未初始化变量默认 undefined | pass | P0 | planned | none | `~xts/pass/undefined_uninitialized_pass` | planned | null_safety / declarations | 低 | 默认值 |
| NS-EQ-001 | null_undefined_equality | null == undefined | pass | P0 | generated | NULL-PASS-006, NULL-REGR-001 | `xts/pass/null_safety_null_undefined_equality_pass.ets` | validation_pending | null_safety / operators | 低 | 抽象相等 |
| NS-EQ-002 | null_undefined_equality | null === undefined | pass | P0 | generated | NULL-PASS-006 | `xts/pass/null_safety_null_undefined_equality_pass.ets` | validation_pending | null_safety / operators | 低 | 严格不等 |
| NS-EQ-003 | null_undefined_equality | null == 0 为 false | pass | P0 | generated | NULL-PASS-006 | `xts/pass/null_safety_null_undefined_equality_pass.ets` | validation_pending | null_safety / operators | 低 | null 不与 0 相等 |
| NS-EQ-004 | null_undefined_equality | undefined == 0 为 false | pass | P1 | generated | NULL-PASS-006 | `xts/pass/null_safety_null_undefined_equality_pass.ets` | validation_pending | null_safety / operators | 低 | undefined 不与 0 相等 |
| NS-EQ-005 | null_undefined_equality | null < 1 为 true | pass | P1 | planned | none | `~xts/pass/null_lt_one_pass` | planned | null_safety / operators | 中 | ToNumber(null)=0 |
| NS-TYPEOF-001 | typeof_nullish | typeof null | pass | P0 | generated | NULL-PASS-015 | `xts/pass/null_safety_typeof_null_pass.ets` | validation_pending | null_safety / types / operators | 低 | "object" |
| NS-TYPEOF-002 | typeof_nullish | typeof undefined | pass | P0 | generated | NULL-PASS-015 | `xts/pass/null_safety_typeof_null_pass.ets` | validation_pending | null_safety / types / operators | 低 | "undefined" |
| NS-TYPEOF-003 | typeof_nullish | typeof 未声明变量 | pass | P1 | planned | none | `~xts/pass/typeof_undeclared_pass` | planned | null_safety / types / operators | 中 | 不抛异常 |
| NS-TYPEOF-004 | typeof_nullish | typeof null 历史遗留回归 | regression | P1 | planned | none | `~xts/regression/typeof_null_regression` | planned | null_safety / types | 低 | 规范验证 |
| NS-TYPEOF-005 | typeof_nullish | typeof undefined vs null 区别 | pass | P1 | generated | NULL-PASS-015 | `xts/pass/null_safety_typeof_null_pass.ets` | validation_pending | null_safety / types | 低 | 区别验证 |
| NS-OC-PROP-001 | optional_chaining_property | obj?.prop 非 null 返回值 | pass | P0 | generated | NULL-PASS-011, NULL-REGR-002 | `xts/pass/null_safety_optional_chaining_property_pass.ets` | validation_pending | null_safety / operators | 低 | ES2020 |
| NS-OC-PROP-002 | optional_chaining_property | obj?.prop 为 null 返回 undefined | pass | P0 | generated | NULL-PASS-011, NULL-REGR-002 | `xts/pass/null_safety_optional_chaining_property_pass.ets` | validation_pending | null_safety / operators | 低 | 短路 |
| NS-OC-PROP-003 | optional_chaining_property | 嵌套可选链 | pass | P0 | generated | NULL-PASS-011 | `xts/pass/null_safety_optional_chaining_property_pass.ets` | validation_pending | null_safety / operators | 低 | 多层短路 |
| NS-OC-PROP-004 | optional_chaining_property | 可选链短路不执行后续 | pass | P1 | generated | NULL-REGR-002 | `xts/regression/null_safety_optional_chaining_regression.ets` | validation_pending | null_safety / operators | 低 | 副作用 |
| NS-OC-PROP-005 | optional_chaining_property | 可选链赋值目标 fail_compile | fail_compile | P0 | planned | none | `~xts/fail_compile/optional_chaining_assign_fail_compile` | planned | null_safety / operators | 中 | SyntaxError |
| NS-OC-CALL-001 | optional_chaining_call | obj?.method() 非 null 调用 | pass | P0 | generated | NULL-PASS-010 | `xts/pass/null_safety_optional_chaining_method_pass.ets` | validation_pending | null_safety / operators / function | 低 | ES2020 |
| NS-OC-CALL-002 | optional_chaining_call | obj?.method() 为 null 返回 undefined | pass | P0 | generated | NULL-PASS-010 | `xts/pass/null_safety_optional_chaining_method_pass.ets` | validation_pending | null_safety / operators | 低 | 短路 |
| NS-OC-CALL-003 | optional_chaining_call | 可选链方法调用短路 | pass | P1 | planned | none | `~xts/pass/optional_chaining_call_short_circuit_pass` | planned | null_safety / operators | 低 | 副作用 |
| NS-OC-CALL-004 | optional_chaining_call | 可选链调用非函数边界 | boundary | P1 | planned | none | `~xts/boundary/optional_chaining_call_non_function_boundary` | planned | null_safety / operators | 中 | 非函数行为 |
| NS-OC-CALL-005 | optional_chaining_call | 可选链调用支持边界 | boundary | P0 | planned | none | `~xts/boundary/optional_chaining_support_boundary` | planned | null_safety / operators | 高 | 支持待确认 |
| NS-OC-ELEM-001 | optional_chaining_element | arr?.[index] 非 null | pass | P0 | generated | NULL-PASS-009 | `xts/pass/null_safety_optional_chaining_element_pass.ets` | validation_pending | null_safety / operators | 低 | ES2020 |
| NS-OC-ELEM-002 | optional_chaining_element | arr?.[index] 为 null | pass | P0 | generated | NULL-PASS-009 | `xts/pass/null_safety_optional_chaining_element_pass.ets` | validation_pending | null_safety / operators | 低 | 短路 |
| NS-OC-ELEM-003 | optional_chaining_element | 可选链元素访问边界 | boundary | P1 | planned | none | `~xts/boundary/optional_chaining_element_boundary` | planned | null_safety / operators | 中 | 支持待确认 |
| NS-OC-ELEM-004 | optional_chaining_element | 可选链元素访问短路 | pass | P1 | planned | none | `~xts/pass/optional_chaining_element_short_circuit_pass` | planned | null_safety / operators | 低 | 副作用 |
| NS-NC-001 | nullish_coalescing | null ?? "default" | pass | P0 | generated | NULL-PASS-008, NULL-REGR-001 | `xts/pass/null_safety_nullish_coalescing_null_pass.ets` | validation_pending | null_safety / operators | 低 | ES2020 |
| NS-NC-002 | nullish_coalescing | undefined ?? "default" | pass | P0 | generated | NULL-PASS-008 | `xts/pass/null_safety_nullish_coalescing_null_pass.ets` | validation_pending | null_safety / operators | 低 | ES2020 |
| NS-NC-003 | nullish_coalescing | 0 ?? "default" 返回 0 | pass | P0 | generated | NULL-PASS-007 | `xts/pass/null_safety_nullish_coalescing_falsy_values_pass.ets` | validation_pending | null_safety / operators | 低 | ?? vs || |
| NS-NC-004 | nullish_coalescing | "" ?? "default" 返回 "" | pass | P0 | generated | NULL-PASS-007 | `xts/pass/null_safety_nullish_coalescing_falsy_values_pass.ets` | validation_pending | null_safety / operators | 低 | ?? vs || |
| NS-NC-005 | nullish_coalescing | false ?? "default" 返回 false | pass | P1 | generated | NULL-PASS-007 | `xts/pass/null_safety_nullish_coalescing_falsy_values_pass.ets` | validation_pending | null_safety / operators | 低 | ?? vs || |
| NS-NA-001 | nullish_assignment | a ??= b 当 a 为 null | boundary | P0 | generated | NULL-BOUND-006 | `xts/boundary/null_safety_nullish_assignment_boundary.ets` | spec_pending | null_safety / operators | 高 | 支持待确认 |
| NS-NA-002 | nullish_assignment | a ??= b 当 a 为 undefined | boundary | P0 | generated | NULL-BOUND-006 | `xts/boundary/null_safety_nullish_assignment_boundary.ets` | spec_pending | null_safety / operators | 高 | 支持待确认 |
| NS-NA-003 | nullish_assignment | a ??= b 当 a 有值不赋值 | boundary | P1 | generated | NULL-BOUND-006 | `xts/boundary/null_safety_nullish_assignment_boundary.ets` | spec_pending | null_safety / operators | 中 | 不赋值 |
| NS-NA-004 | nullish_assignment | ??= 左值只求值一次 | boundary | P1 | planned | none | `~xts/boundary/nullish_assignment_eval_once_boundary` | planned | null_safety / operators | 中 | 求值次数 |
| NS-NNA-001 | non_null_assertion_boundary | value! 非空断言 | boundary | P0 | generated | NULL-BOUND-004 | `xts/boundary/null_safety_non_null_assertion_boundary.ets` | spec_pending | null_safety / typescript | 高 | 支持待确认 |
| NS-NNA-002 | non_null_assertion_boundary | 非空断言运行时擦除 | boundary | P1 | generated | NULL-BOUND-004 | `xts/boundary/null_safety_non_null_assertion_boundary.ets` | spec_pending | null_safety / types | 高 | 运行时擦除 |
| NS-NNA-003 | non_null_assertion_boundary | 非空断言对 null 值运行时行为 | boundary | P1 | generated | NULL-BOUND-004 | `xts/boundary/null_safety_non_null_assertion_boundary.ets` | spec_pending | null_safety / types | 高 | 运行时不报错 |
| NS-NNA-004 | non_null_assertion_boundary | 非空断言链式 | boundary | P2 | planned | none | `~xts/boundary/non_null_assertion_chain_boundary` | planned | null_safety / typescript | 中 | 链式 |
| NS-OP-001 | optional_property | 可选属性缺省为 undefined | pass | P0 | generated | NULL-PASS-013 | `xts/pass/null_safety_optional_property_absent_pass.ets` | validation_pending | null_safety / interface | 低 | ES 核心行为 |
| NS-OP-002 | optional_property | 可选属性存在但值为 undefined | pass | P0 | generated | NULL-PASS-014 | `xts/pass/null_safety_optional_property_undefined_pass.ets` | validation_pending | null_safety / interface | 低 | 值为 undefined |
| NS-OP-003 | optional_property | 访问不存在属性返回 undefined | pass | P0 | generated | NULL-PASS-013 | `xts/pass/null_safety_optional_property_absent_pass.ets` | validation_pending | null_safety / types | 低 | 不抛异常 |
| NS-OP-004 | optional_property | 可选属性编译期检查 | boundary | P1 | planned | none | `~xts/boundary/optional_property_compile_check_boundary` | planned | null_safety / interface | 中 | 检查待确认 |
| NS-OP-005 | optional_property | 可选属性与 in 操作符 | pass | P1 | generated | NULL-PASS-013, NULL-PASS-014 | `xts/pass/null_safety_optional_property_absent_pass.ets` | validation_pending | null_safety / operators | 低 | in 检查 |
| NS-OPTPARAM-001 | optional_parameter | 可选参数省略为 undefined | pass | P0 | generated | NULL-PASS-012 | `xts/pass/null_safety_optional_parameter_omitted_pass.ets` | validation_pending | null_safety / function | 低 | ES 核心行为 |
| NS-OPTPARAM-002 | optional_parameter | 可选参数传 undefined | pass | P0 | generated | NULL-PASS-012 | `xts/pass/null_safety_optional_parameter_omitted_pass.ets` | validation_pending | null_safety / function | 低 | 显式 undefined |
| NS-OPTPARAM-003 | optional_parameter | 可选参数传 null | pass | P1 | planned | none | `~xts/pass/optional_parameter_null_pass` | planned | null_safety / function | 中 | null vs undefined |
| NS-OPTPARAM-004 | optional_parameter | 可选参数边界检查 | boundary | P1 | planned | none | `~xts/boundary/optional_parameter_boundary` | planned | null_safety / function | 中 | 编译期检查 |
| NS-OPTPARAM-005 | optional_parameter | 可选参数数量 | pass | P1 | planned | none | `~xts/pass/optional_parameter_count_pass` | planned | null_safety / function | 低 | 参数数量 |
| NS-DEFPARAM-001 | default_parameter | 默认参数传 undefined 使用默认 | pass | P0 | generated | NULL-PASS-002 | `xts/pass/null_safety_default_parameter_undefined_pass.ets` | validation_pending | null_safety / function | 低 | ES2015 |
| NS-DEFPARAM-002 | default_parameter | 默认参数传 null 不触发默认 | pass | P0 | generated | NULL-PASS-001 | `xts/pass/null_safety_default_parameter_null_pass.ets` | validation_pending | null_safety / function | 中 | null vs undefined |
| NS-DEFPARAM-003 | default_parameter | 默认参数省略使用默认 | pass | P0 | generated | NULL-PASS-002 | `xts/pass/null_safety_default_parameter_undefined_pass.ets` | validation_pending | null_safety / function | 低 | 省略触发 |
| NS-DEFPARAM-004 | default_parameter | 默认参数表达式求值 | pass | P1 | planned | none | `~xts/pass/default_parameter_expression_pass` | planned | null_safety / function | 低 | 惰性求值 |
| NS-DEFPARAM-005 | default_parameter | 默认参数与可选参数组合 | pass | P1 | planned | none | `~xts/pass/default_parameter_combined_pass` | planned | null_safety / function | 低 | 组合 |
| NS-RET-001 | function_return_nullish | 函数无 return 返回 undefined | pass | P0 | generated | NULL-PASS-004 | `xts/pass/null_safety_function_return_undefined_pass.ets` | validation_pending | null_safety / function | 低 | ES 核心行为 |
| NS-RET-002 | function_return_nullish | 函数 return null | pass | P0 | generated | NULL-PASS-003 | `xts/pass/null_safety_function_return_null_pass.ets` | validation_pending | null_safety / function | 低 | 显式 null |
| NS-RET-003 | function_return_nullish | 函数 return undefined | pass | P1 | generated | NULL-PASS-004 | `xts/pass/null_safety_function_return_undefined_pass.ets` | validation_pending | null_safety / function | 低 | 显式 undefined |
| NS-RET-004 | function_return_nullish | 箭头函数无返回 undefined | pass | P1 | generated | NULL-BOUND-007 | `xts/boundary/null_safety_return_type_nullish_boundary.ets` | spec_pending | null_safety / function | 低 | 箭头函数 |
| NS-RT-001 | runtime_exception_nullish | 访问 null 属性 TypeError | fail_runtime | P0 | generated | NULL-FAILR-003 | `xts/fail_runtime/null_safety_property_access_on_null_fail_runtime.ets` | validation_pending | null_safety / types | 高 | TypeError |
| NS-RT-002 | runtime_exception_nullish | 访问 undefined 属性 TypeError | fail_runtime | P0 | generated | NULL-FAILR-004 | `xts/fail_runtime/null_safety_property_access_on_undefined_fail_runtime.ets` | validation_pending | null_safety / types | 高 | TypeError |
| NS-RT-003 | runtime_exception_nullish | 调用 null 方法 TypeError | fail_runtime | P0 | generated | NULL-FAILR-001 | `xts/fail_runtime/null_safety_method_call_on_null_fail_runtime.ets` | validation_pending | null_safety / types | 高 | TypeError |
| NS-RT-004 | runtime_exception_nullish | 调用 undefined 方法 TypeError | fail_runtime | P0 | generated | NULL-FAILR-002 | `xts/fail_runtime/null_safety_method_call_on_undefined_fail_runtime.ets` | validation_pending | null_safety / types | 高 | TypeError |
| NS-RT-005 | runtime_exception_nullish | null 作为函数调用 TypeError | fail_runtime | P1 | planned | none | `~xts/fail_runtime/null_call_fail_runtime` | planned | null_safety / function | 高 | TypeError |
| NS-CF-001 | class_field_nullish | class field 未初始化 undefined | pass | P0 | generated | NULL-BOUND-001 | `xts/boundary/null_safety_class_field_null_boundary.ets` | spec_pending | null_safety / class | 低 | ES2022 |
| NS-CF-002 | class_field_nullish | class field 显式 null | pass | P0 | generated | NULL-BOUND-001 | `xts/boundary/null_safety_class_field_null_boundary.ets` | spec_pending | null_safety / class | 低 | 显式 null |
| NS-CF-003 | class_field_nullish | class field 初始化顺序 | boundary | P1 | planned | none | `~xts/boundary/class_field_init_order_boundary` | planned | null_safety / class | 中 | 初始化顺序 |
| NS-CF-004 | class_field_nullish | class field 与 constructor | boundary | P1 | planned | none | `~xts/boundary/class_field_constructor_boundary` | planned | null_safety / class | 中 | 初始化交互 |
| NS-IOM-001 | interface_optional_member | interface optional property 缺省 | pass | P0 | generated | NULL-BOUND-003 | `xts/boundary/null_safety_interface_optional_member_boundary.ets` | spec_pending | null_safety / interface | 低 | ES 核心行为 |
| NS-IOM-002 | interface_optional_member | interface optional property undefined | pass | P0 | generated | NULL-BOUND-003 | `xts/boundary/null_safety_interface_optional_member_boundary.ets` | spec_pending | null_safety / interface | 低 | 值为 undefined |
| NS-IOM-003 | interface_optional_member | class implements 可选成员省略 | pass | P1 | generated | NULL-BOUND-003 | `xts/boundary/null_safety_interface_optional_member_boundary.ets` | spec_pending | null_safety / interface / class | 低 | 可省略 |
| NS-IOM-004 | interface_optional_member | 可选成员编译期检查 | boundary | P1 | planned | none | `~xts/boundary/interface_optional_compile_check_boundary` | planned | null_safety / interface | 中 | 检查待确认 |
| NS-GEN-001 | generic_nonnullable_boundary | NonNullable<T> 支持 | boundary | P0 | generated | NULL-BOUND-005 | `xts/boundary/null_safety_nonnullable_boundary.ets` | spec_pending | null_safety / generic | 高 | 支持待确认 |
| NS-GEN-002 | generic_nonnullable_boundary | T \| null union (generic) | boundary | P0 | generated | NULL-BOUND-002 | `xts/boundary/null_safety_generic_nullable_boundary.ets` | spec_pending | null_safety / generic | 高 | 支持待确认 |
| NS-GEN-003 | generic_nonnullable_boundary | T \| undefined union | boundary | P1 | planned | none | `~xts/boundary/generic_union_undefined_boundary` | planned | null_safety / generic | 中 | 支持待确认 |
| NS-GEN-004 | generic_nonnullable_boundary | T extends object 约束 | boundary | P1 | planned | none | `~xts/boundary/generic_constraint_object_boundary` | planned | null_safety / generic | 中 | 排除 null |
| NS-UNION-001 | union_nullish_boundary | T \| null 运行时行为 | boundary | P1 | generated | NULL-BOUND-008 | `xts/boundary/null_safety_union_null_boundary.ets` | spec_pending | null_safety / types | 高 | 运行时行为 |
| NS-UNION-002 | union_nullish_boundary | T \| undefined 运行时行为 | boundary | P1 | planned | none | `~xts/boundary/union_undefined_runtime_boundary` | planned | null_safety / types | 高 | 运行时行为 |
| NS-UNION-003 | union_nullish_boundary | strict null checks 边界 | boundary | P0 | planned | none | `~xts/boundary/strict_null_checks_boundary` | planned | null_safety / typescript | 高 | 是否开启 |
| NS-UNION-004 | union_nullish_boundary | null 赋给非 nullable | boundary | P1 | planned | none | `~xts/boundary/null_assign_non_nullable_boundary` | planned | null_safety / typescript | 中 | 编译期检查 |
| NS-TSCOMP-001 | typescript_compatibility_boundary | strict null checks 兼容 | boundary | P0 | planned | none | `~xts/boundary/strict_null_compatibility_boundary` | planned | null_safety / typescript | 高 | 兼容状态 |
| NS-TSCOMP-002 | typescript_compatibility_boundary | 非空断言 `!` 兼容 | boundary | P0 | planned | none | `~xts/boundary/non_null_assertion_compatibility_boundary` | planned | null_safety / typescript | 高 | 支持待确认 |
| NS-TSCOMP-003 | typescript_compatibility_boundary | ??= 兼容 | boundary | P1 | planned | none | `~xts/boundary/nullish_assignment_compatibility_boundary` | planned | null_safety / typescript | 中 | 支持待确认 |
| NS-TSCOMP-004 | typescript_compatibility_boundary | NonNullable<T> 兼容 | boundary | P1 | planned | none | `~xts/boundary/nonnullable_compatibility_boundary` | planned | null_safety / typescript | 中 | 支持待确认 |
| NS-ARKTS-001 | arkts_dynamic_boundary | 动态 ArkTS null safety 支持 | boundary | P0 | planned | none | `~xts/boundary/arkts_null_safety_support_boundary` | planned | null_safety | 高 | 支持状态 |
| NS-ARKTS-002 | arkts_dynamic_boundary | 动态与静态 ArkTS 差异 | boundary | P0 | planned | none | `~xts/boundary/arkts_dynamic_vs_static_boundary` | planned | null_safety | 高 | 动态/静态差异 |
| NS-ARKTS-003 | arkts_dynamic_boundary | null/undefined 运行时行为差异 | boundary | P1 | planned | none | `~xts/boundary/arkts_nullish_runtime_boundary` | planned | null_safety | 高 | 运行时差异 |
| NS-ARKTS-004 | arkts_dynamic_boundary | strict null 编译期 vs 运行时 | boundary | P1 | planned | none | `~xts/boundary/arkts_strict_null_boundary` | planned | null_safety | 高 | 编译/运行差异 |

## Historical Snapshot: Stage 1 Update Summary

> **Note**: The following is a historical snapshot from Stage 1 generation. The Main Coverage Matrix above is the current source of truth. This section is retained for traceability only.

The following 30 `.ets` files were generated in Null Safety Stage 1. Task 3C-Fix corrected Coverage associations for NULL-BOUND-002 and NULL-BOUND-008.

| 生成文件 | 对应 Coverage IDs | 用例类型 |
|---|---|---|
| `xts/pass/null_safety_null_basic_pass.ets` | NS-NULL-001, NS-NULL-003, NS-NULL-004, NS-NULL-005 | pass |
| `xts/pass/null_safety_undefined_basic_pass.ets` | NS-UNDEF-001, NS-UNDEF-003, NS-UNDEF-004 | pass |
| `xts/pass/null_safety_typeof_null_pass.ets` | NS-TYPEOF-001, NS-TYPEOF-002, NS-TYPEOF-005 | pass |
| `xts/pass/null_safety_null_undefined_equality_pass.ets` | NS-EQ-001, NS-EQ-002, NS-EQ-003, NS-EQ-004 | pass |
| `xts/pass/null_safety_optional_chaining_property_pass.ets` | NS-OC-PROP-001, NS-OC-PROP-002, NS-OC-PROP-003 | pass |
| `xts/pass/null_safety_optional_chaining_method_pass.ets` | NS-OC-CALL-001, NS-OC-CALL-002 | pass |
| `xts/pass/null_safety_optional_chaining_element_pass.ets` | NS-OC-ELEM-001, NS-OC-ELEM-002 | pass |
| `xts/pass/null_safety_nullish_coalescing_null_pass.ets` | NS-NC-001, NS-NC-002 | pass |
| `xts/pass/null_safety_nullish_coalescing_falsy_values_pass.ets` | NS-NC-003, NS-NC-004, NS-NC-005 | pass |
| `xts/pass/null_safety_optional_property_absent_pass.ets` | NS-OP-001, NS-OP-003, NS-OP-005 | pass |
| `xts/pass/null_safety_optional_property_undefined_pass.ets` | NS-OP-002, NS-OP-005 | pass |
| `xts/pass/null_safety_optional_parameter_omitted_pass.ets` | NS-OPTPARAM-001, NS-OPTPARAM-002 | pass |
| `xts/pass/null_safety_default_parameter_undefined_pass.ets` | NS-DEFPARAM-001, NS-DEFPARAM-003 | pass |
| `xts/pass/null_safety_default_parameter_null_pass.ets` | NS-DEFPARAM-002 | pass |
| `xts/pass/null_safety_function_return_undefined_pass.ets` | NS-RET-001, NS-RET-003 | pass |
| `xts/pass/null_safety_function_return_null_pass.ets` | NS-RET-002 | pass |
| `xts/fail_runtime/null_safety_property_access_on_null_fail_runtime.ets` | NS-RT-001 | fail_runtime |
| `xts/fail_runtime/null_safety_property_access_on_undefined_fail_runtime.ets` | NS-RT-002 | fail_runtime |
| `xts/fail_runtime/null_safety_method_call_on_null_fail_runtime.ets` | NS-RT-003 | fail_runtime |
| `xts/fail_runtime/null_safety_method_call_on_undefined_fail_runtime.ets` | NS-RT-004 | fail_runtime |
| `xts/boundary/null_safety_nullish_assignment_boundary.ets` | NS-NA-001, NS-NA-002, NS-NA-003 | boundary |
| `xts/boundary/null_safety_non_null_assertion_boundary.ets` | NS-NNA-001, NS-NNA-002, NS-NNA-003 | boundary |
| `xts/boundary/null_safety_nonnullable_boundary.ets` | NS-GEN-001 | boundary |
| `xts/boundary/null_safety_union_null_boundary.ets` | NS-UNION-001 | boundary |
| `xts/boundary/null_safety_return_type_nullish_boundary.ets` | NS-RET-004 | boundary |
| `xts/boundary/null_safety_class_field_null_boundary.ets` | NS-CF-001, NS-CF-002 | boundary |
| `xts/boundary/null_safety_interface_optional_member_boundary.ets` | NS-IOM-001, NS-IOM-002, NS-IOM-003 | boundary |
| `xts/boundary/null_safety_generic_nullable_boundary.ets` | NS-GEN-002 | boundary |
| `xts/regression/null_safety_optional_chaining_regression.ets` | NS-OC-PROP-001, NS-OC-PROP-002, NS-OC-PROP-004 | regression |
| `xts/regression/null_safety_basic_regression.ets` | NS-NULL-001, NS-EQ-001, NS-NC-001 | regression |
