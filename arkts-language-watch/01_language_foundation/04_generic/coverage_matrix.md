# Generic Coverage Matrix

## Coverage Status Summary

| 项目 | 数量 |
|---|---:|
| Coverage ID 总数 | 91 |
| generated | 40 |
| planned | 51 |
| 主用例文件 | 28 |
| validation_pending | 14 |
| spec_pending | 20 |
| planned (validation) | 57 |

## Main Coverage Matrix

| Coverage ID | Generic 方向 | 测试点 | 用例类型 | 优先级 | Coverage Status | Case ID | Actual Path | Validation Status | 关联章节 | 风险点 | 备注 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| GEN-FUNC-001 | generic_function | 泛型函数基础声明 | pass | P0 | generated | GEN-PASS-004, GEN-REGR-001 | `xts/pass/generic_function_basic_pass.ets` | validation_pending | generic / function | 低 | TS 核心行为 |
| GEN-FUNC-002 | generic_function | 泛型函数显式类型实参 | pass | P0 | generated | GEN-PASS-005 | `xts/pass/generic_function_explicit_type_argument_pass.ets` | validation_pending | generic / function | 低 | 显式传入 |
| GEN-FUNC-003 | generic_function | 泛型函数类型推断 | pass | P0 | generated | GEN-PASS-006 | `xts/pass/generic_function_inference_pass.ets` | validation_pending | generic / function | 中 | 推断边界 |
| GEN-FUNC-004 | generic_function | 泛型函数多类型参数 | pass | P0 | generated | GEN-PASS-007 | `xts/pass/generic_function_multiple_type_parameters_pass.ets` | validation_pending | generic / function | 低 | 多参数 |
| GEN-FUNC-005 | generic_function | 泛型函数返回类型推断 | boundary | P1 | planned | none | `~xts/boundary/generic_function_return_inference_boundary` | planned | generic / function | 中 | 返回推断 |
| GEN-FUNC-006 | generic_function | 泛型函数运行时擦除 | boundary | P0 | planned | none | `~xts/boundary/generic_function_runtime_erasure_boundary` | planned | generic / function / types | 高 | 擦除行为 |
| GEN-CLASS-001 | generic_class | 泛型类基础声明 | pass | P0 | generated | GEN-PASS-002, GEN-REGR-001 | `xts/pass/generic_class_basic_pass.ets` | validation_pending | generic / class | 低 | TS 核心行为 |
| GEN-CLASS-002 | generic_class | 泛型类实例化 | pass | P0 | generated | GEN-PASS-002 | `xts/pass/generic_class_basic_pass.ets` | validation_pending | generic / class | 低 | 实例化 |
| GEN-CLASS-003 | generic_class | 泛型类实例成员类型 | pass | P0 | generated | GEN-PASS-003 | `xts/pass/generic_class_instance_member_pass.ets` | validation_pending | generic / class | 低 | 成员类型 |
| GEN-CLASS-004 | generic_class | 泛型类构造器参数 | pass | P1 | generated | GEN-BOUND-001 | `xts/boundary/generic_class_constructor_parameter_boundary.ets` | spec_pending | generic / class | 低 | 构造器 |
| GEN-CLASS-005 | generic_class | 泛型类静态成员边界 | boundary | P1 | generated | GEN-BOUND-002 | `xts/boundary/generic_class_static_member_boundary.ets` | spec_pending | generic / class | 中 | 静态成员不能使用类泛型 |
| GEN-CLASS-006 | generic_class | 泛型类运行时擦除 | boundary | P0 | planned | none | `~xts/boundary/generic_class_runtime_erasure_boundary` | planned | generic / class / types | 高 | 擦除行为 |
| GEN-IF-001 | generic_interface | 泛型接口基础声明 | pass | P0 | generated | GEN-PASS-008, GEN-REGR-001 | `xts/pass/generic_interface_basic_pass.ets` | validation_pending | generic / interface | 低 | TS 核心行为 |
| GEN-IF-002 | generic_interface | 泛型接口属性 | pass | P0 | generated | GEN-PASS-010 | `xts/pass/generic_interface_property_pass.ets` | validation_pending | generic / interface | 低 | 属性类型 |
| GEN-IF-003 | generic_interface | 泛型接口方法 | pass | P0 | generated | GEN-PASS-009 | `xts/pass/generic_interface_method_pass.ets` | validation_pending | generic / interface / function | 低 | 方法签名 |
| GEN-IF-004 | generic_interface | class implements 泛型接口 | pass | P0 | generated | GEN-PASS-008 | `xts/pass/generic_interface_basic_pass.ets` | validation_pending | generic / interface / class | 低 | implements |
| GEN-IF-005 | generic_interface | 泛型接口运行时擦除 | boundary | P1 | generated | GEN-BOUND-007 | `xts/boundary/generic_interface_extends_boundary.ets` | spec_pending | generic / interface / types | 高 | 擦除行为 |
| GEN-METHOD-001 | generic_method | 类中泛型方法 | pass | P0 | generated | GEN-PASS-011 | `xts/pass/generic_method_in_class_pass.ets` | validation_pending | generic / function / class | 低 | TS 核心行为 |
| GEN-METHOD-002 | generic_method | 泛型方法显式类型实参 | pass | P0 | generated | GEN-PASS-011 | `xts/pass/generic_method_in_class_pass.ets` | validation_pending | generic / function | 低 | 显式传入 |
| GEN-METHOD-003 | generic_method | 泛型方法类型推断 | pass | P1 | planned | none | `~xts/pass/generic_method_inference_pass` | planned | generic / function | 中 | 推断 |
| GEN-METHOD-004 | generic_method | 对象方法泛型边界 | boundary | P1 | generated | GEN-BOUND-008 | `xts/boundary/generic_method_in_object_boundary.ets` | spec_pending | generic / function | 中 | 对象方法 |
| GEN-METHOD-005 | generic_method | 泛型方法运行时擦除 | boundary | P1 | generated | GEN-BOUND-009 | `xts/boundary/generic_method_override_boundary.ets` | spec_pending | generic / function / types | 高 | 擦除行为 |
| GEN-TYPEPARAM-001 | type_parameter | 单泛型参数声明 | pass | P0 | planned | none | `~xts/pass/generic_single_type_param_pass` | planned | generic / declarations | 低 | TS 核心行为 |
| GEN-TYPEPARAM-002 | type_parameter | 泛型参数作用域 | pass | P1 | planned | none | `~xts/pass/generic_type_param_scope_pass` | planned | generic / declarations | 低 | 作用域 |
| GEN-TYPEPARAM-003 | type_parameter | 泛型参数命名约定 | boundary | P2 | planned | none | `~xts/boundary/generic_type_param_naming_boundary` | planned | generic | 低 | 命名 |
| GEN-TYPEPARAM-004 | type_parameter | 泛型参数在函数体使用 | pass | P0 | generated | GEN-PASS-004 | `xts/pass/generic_function_basic_pass.ets` | validation_pending | generic / function | 低 | 参数使用 |
| GEN-TYPEPARAM-005 | type_parameter | 泛型参数在类成员使用 | pass | P1 | planned | none | `~xts/pass/generic_type_param_class_usage_pass` | planned | generic / class | 低 | 参数使用 |
| GEN-MULTI-001 | multiple_type_parameters | 多泛型参数声明 | pass | P0 | planned | none | `~xts/pass/generic_multi_type_param_pass` | planned | generic / declarations | 低 | TS 核心行为 |
| GEN-MULTI-002 | multiple_type_parameters | 两参数泛型函数 | pass | P0 | generated | GEN-PASS-007 | `xts/pass/generic_function_multiple_type_parameters_pass.ets` | validation_pending | generic / function | 低 | 两参数 |
| GEN-MULTI-003 | multiple_type_parameters | 三参数泛型 | pass | P1 | planned | none | `~xts/pass/generic_three_param_pass` | planned | generic | 低 | 三参数 |
| GEN-MULTI-004 | multiple_type_parameters | 多参数独立推断 | pass | P1 | planned | none | `~xts/pass/generic_multi_inference_pass` | planned | generic / function | 中 | 独立推断 |
| GEN-MULTI-005 | multiple_type_parameters | 多参数顺序语义 | boundary | P2 | planned | none | `~xts/boundary/generic_multi_order_boundary` | planned | generic | 低 | 顺序 |
| GEN-CONST-001 | generic_constraint | `T extends U` 约束声明 | boundary | P0 | generated | GEN-BOUND-005 | `xts/boundary/generic_function_constraint_boundary.ets` | spec_pending | generic / types | 高 | 支持待确认 |
| GEN-CONST-002 | generic_constraint | 约束满足时编译通过 | boundary | P0 | generated | GEN-BOUND-005 | `xts/boundary/generic_function_constraint_boundary.ets` | spec_pending | generic / types | 高 | 编译期检查 |
| GEN-CONST-003 | generic_constraint | 约束不满足 fail_compile | fail_compile | P0 | planned | none | `~xts/fail_compile/generic_constraint_violation_fail_compile` | planned | generic / types | 中 | 编译错误 |
| GEN-CONST-004 | generic_constraint | 约束为 interface 结构 | boundary | P1 | generated | GEN-BOUND-003 | `xts/boundary/generic_constraint_violation_boundary.ets` | spec_pending | generic / types / interface | 中 | 结构约束 |
| GEN-CONST-005 | generic_constraint | 约束运行时检查 | boundary | P1 | generated | GEN-BOUND-003 | `xts/boundary/generic_constraint_violation_boundary.ets` | spec_pending | generic / types | 高 | 运行时检查 |
| GEN-DEF-001 | default_type_parameter | 泛型默认参数声明 | boundary | P0 | generated | GEN-BOUND-006 | `xts/boundary/generic_function_default_type_parameter_boundary.ets` | spec_pending | generic / typescript | 高 | 支持待确认 |
| GEN-DEF-002 | default_type_parameter | 默认参数使用 | boundary | P1 | generated | GEN-BOUND-006 | `xts/boundary/generic_function_default_type_parameter_boundary.ets` | spec_pending | generic / typescript | 中 | 使用行为 |
| GEN-DEF-003 | default_type_parameter | 默认参数与显式实参 | boundary | P1 | planned | none | `~xts/boundary/generic_default_vs_explicit_boundary` | planned | generic / typescript | 中 | 优先级 |
| GEN-DEF-004 | default_type_parameter | 多默认参数 | boundary | P1 | planned | none | `~xts/boundary/generic_multi_default_boundary` | planned | generic / typescript | 中 | 多默认 |
| GEN-DEF-005 | default_type_parameter | 默认参数运行时擦除 | boundary | P1 | planned | none | `~xts/boundary/generic_default_runtime_erasure_boundary` | planned | generic / types | 高 | 擦除行为 |
| GEN-EXPL-001 | explicit_type_argument | 显式类型实参传入 | pass | P0 | generated | GEN-PASS-005 | `xts/pass/generic_function_explicit_type_argument_pass.ets` | validation_pending | generic / function | 低 | TS 核心行为 |
| GEN-EXPL-002 | explicit_type_argument | 显式实参与推断一致 | pass | P0 | planned | none | `~xts/pass/generic_explicit_match_inference_pass` | planned | generic / function | 低 | 一致性 |
| GEN-EXPL-003 | explicit_type_argument | 显式实参覆盖推断 | boundary | P1 | planned | none | `~xts/boundary/generic_explicit_override_boundary` | planned | generic / function | 中 | 覆盖行为 |
| GEN-EXPL-004 | explicit_type_argument | 多显式实参 | pass | P1 | planned | none | `~xts/pass/generic_multi_explicit_arg_pass` | planned | generic / function | 低 | 多实参 |
| GEN-EXPL-005 | explicit_type_argument | 显式实参运行时擦除 | boundary | P1 | planned | none | `~xts/boundary/generic_explicit_runtime_erasure_boundary` | planned | generic / types | 高 | 擦除行为 |
| GEN-INFER-001 | type_argument_inference | 单参数推断 | pass | P0 | generated | GEN-PASS-006 | `xts/pass/generic_function_inference_pass.ets` | validation_pending | generic / function | 低 | TS 核心行为 |
| GEN-INFER-002 | type_argument_inference | 多参数推断 | pass | P0 | planned | none | `~xts/pass/generic_inference_multi_pass` | planned | generic / function | 中 | 多参数 |
| GEN-INFER-003 | type_argument_inference | 推断为字面量类型 | boundary | P1 | planned | none | `~xts/boundary/generic_inference_literal_boundary` | planned | generic / types | 中 | 字面量推断 |
| GEN-INFER-004 | type_argument_inference | 推断为 union 类型 | boundary | P1 | planned | none | `~xts/boundary/generic_inference_union_boundary` | planned | generic / types | 中 | union 推断 |
| GEN-INFER-005 | type_argument_inference | 推断运行时擦除 | boundary | P1 | planned | none | `~xts/boundary/generic_inference_runtime_erasure_boundary` | planned | generic / types | 高 | 擦除行为 |
| GEN-NEST-001 | nested_generic | 嵌套泛型 `Array<Array<T>>` | pass | P0 | generated | GEN-PASS-012 | `xts/pass/generic_nested_array_pass.ets` | validation_pending | generic / types | 低 | TS 核心行为 |
| GEN-NEST-002 | nested_generic | 嵌套泛型对象 | pass | P1 | generated | GEN-PASS-013 | `xts/pass/generic_nested_object_pass.ets` | validation_pending | generic / types | 低 | 嵌套对象 |
| GEN-NEST-003 | nested_generic | 嵌套泛型 Map | boundary | P1 | planned | none | `~xts/boundary/generic_nested_map_boundary` | planned | generic / types | 中 | Map 嵌套 |
| GEN-NEST-004 | nested_generic | 多层嵌套 | boundary | P2 | planned | none | `~xts/boundary/generic_deep_nested_boundary` | planned | generic / types | 中 | 深层嵌套 |
| GEN-NEST-005 | nested_generic | 嵌套泛型运行时擦除 | boundary | P1 | planned | none | `~xts/boundary/generic_nested_runtime_erasure_boundary` | planned | generic / types | 高 | 擦除行为 |
| GEN-ARR-001 | generic_array_object | `Array<T>` 基础 | pass | P0 | generated | GEN-PASS-001 | `xts/pass/generic_array_type_pass.ets` | validation_pending | generic / types | 低 | TS 核心行为 |
| GEN-ARR-002 | generic_array_object | `Record<K, V>` 边界 | boundary | P0 | generated | GEN-BOUND-010 | `xts/boundary/generic_record_like_object_boundary.ets` | spec_pending | generic / types | 高 | 支持待确认 |
| GEN-ARR-003 | generic_array_object | `Promise<T>` 边界 | boundary | P0 | planned | none | `~xts/boundary/generic_promise_boundary` | planned | generic / types | 高 | 支持待确认 |
| GEN-ARR-004 | generic_array_object | `Map<K, V>` 边界 | boundary | P1 | planned | none | `~xts/boundary/generic_map_boundary` | planned | generic / types | 中 | 支持待确认 |
| GEN-ARR-005 | generic_array_object | 泛型数组运行时为 Array | boundary | P1 | planned | none | `~xts/boundary/generic_array_runtime_boundary` | planned | generic / types | 高 | 擦除行为 |
| GEN-UNION-001 | generic_union_boundary | 泛型与 union type 结合 | boundary | P0 | generated | GEN-BOUND-014 | `xts/boundary/generic_union_type_boundary.ets` | spec_pending | generic / types | 高 | 支持待确认 |
| GEN-UNION-002 | generic_union_boundary | 泛型与 intersection type | boundary | P1 | planned | none | `~xts/boundary/generic_intersection_boundary` | planned | generic / types | 中 | 支持待确认 |
| GEN-UNION-003 | generic_union_boundary | 泛型与 conditional type | boundary | P1 | planned | none | `~xts/boundary/generic_conditional_boundary` | planned | generic / types | 中 | 支持待确认 |
| GEN-UNION-004 | generic_union_boundary | 泛型与 optional property | boundary | P1 | generated | GEN-BOUND-014 | `xts/boundary/generic_union_type_boundary.ets` | spec_pending | generic / types | 中 | 可选属性 |
| GEN-RT-001 | generic_runtime_erasure | 泛型运行时擦除验证 | boundary | P0 | generated | GEN-BOUND-011 | `xts/boundary/generic_runtime_erasure_boundary.ets` | spec_pending | generic / types | 高 | 擦除行为 |
| GEN-RT-002 | generic_runtime_erasure | typeof 泛型参数 | boundary | P0 | generated | GEN-BOUND-013 | `xts/boundary/generic_type_parameter_typeof_boundary.ets` | spec_pending | generic / types / operators | 高 | 无运行时值 |
| GEN-RT-003 | generic_runtime_erasure | instanceof 泛型参数 | fail_compile | P0 | generated | GEN-BOUND-012 | `xts/boundary/generic_type_parameter_instanceof_boundary.ets` | spec_pending | generic / types / operators | 中 | 无运行时原型 |
| GEN-RT-004 | generic_runtime_erasure | 泛型参数作为运行时值 | boundary | P1 | planned | none | `~xts/boundary/generic_type_param_as_value_boundary` | planned | generic / types | 高 | 运行时值 |
| GEN-RT-005 | generic_runtime_erasure | 泛型不产生运行时代码 | boundary | P1 | generated | GEN-BOUND-011 | `xts/boundary/generic_runtime_erasure_boundary.ets` | spec_pending | generic / types | 高 | 擦除验证 |
| GEN-SHADOW-001 | generic_shadowing_boundary | 泛型参数遮蔽外层 | boundary | P1 | planned | none | `~xts/boundary/generic_shadowing_boundary` | planned | generic / declarations | 中 | 遮蔽行为 |
| GEN-SHADOW-002 | generic_shadowing_boundary | 内外层同名泛型参数 | boundary | P1 | planned | none | `~xts/boundary/generic_same_name_boundary` | planned | generic / declarations | 中 | 同名 |
| GEN-SHADOW-003 | generic_shadowing_boundary | 泛型参数与变量同名 | boundary | P2 | planned | none | `~xts/boundary/generic_var_same_name_boundary` | planned | generic / declarations | 低 | 与变量同名 |
| GEN-SHADOW-004 | generic_shadowing_boundary | 泛型遮蔽运行时行为 | boundary | P2 | planned | none | `~xts/boundary/generic_shadowing_runtime_boundary` | planned | generic / types | 中 | 运行时行为 |
| GEN-DUP-001 | generic_duplicate_parameter | 重复类型参数名 fail_compile | fail_compile | P1 | planned | none | `~xts/fail_compile/generic_duplicate_param_fail_compile` | planned | generic / declarations | 中 | 编译错误 |
| GEN-DUP-002 | generic_duplicate_parameter | 同名泛型参数边界 | boundary | P1 | planned | none | `~xts/boundary/generic_duplicate_boundary` | planned | generic / declarations | 中 | 同名边界 |
| GEN-DUP-003 | generic_duplicate_parameter | 重复参数运行时行为 | boundary | P2 | planned | none | `~xts/boundary/generic_duplicate_runtime_boundary` | planned | generic / types | 中 | 运行时行为 |
| GEN-DUP-004 | generic_duplicate_parameter | 重复参数检测方式 | boundary | P2 | planned | none | `~xts/boundary/generic_duplicate_detection_boundary` | planned | generic | 中 | 检测方式 |
| GEN-MOD-001 | module_export_import_boundary | 泛型函数导出 | boundary | P0 | generated | GEN-BOUND-004 | `xts/boundary/generic_export_boundary.ets` | spec_pending | generic / module | 高 | 导出边界 |
| GEN-MOD-002 | module_export_import_boundary | 泛型类导出 | boundary | P0 | generated | GEN-BOUND-004 | `xts/boundary/generic_export_boundary.ets` | spec_pending | generic / module | 高 | 导出边界 |
| GEN-MOD-003 | module_export_import_boundary | 泛型接口导出 | boundary | P1 | planned | none | `~xts/boundary/generic_export_interface_boundary` | planned | generic / module | 中 | 导出边界 |
| GEN-MOD-004 | module_export_import_boundary | 泛型导入 | boundary | P1 | planned | none | `~xts/boundary/generic_import_boundary` | planned | generic / module | 中 | 导入边界 |
| GEN-TSCOMP-001 | typescript_compatibility_boundary | TS generic 语法兼容 | boundary | P0 | planned | none | `~xts/boundary/generic_ts_compatibility_boundary` | planned | generic / typescript | 高 | 兼容状态 |
| GEN-TSCOMP-002 | typescript_compatibility_boundary | 泛型与 type alias | boundary | P1 | planned | none | `~xts/boundary/generic_type_alias_boundary` | planned | generic / typescript | 中 | 语义差异 |
| GEN-TSCOMP-003 | typescript_compatibility_boundary | 泛型与 enum | boundary | P1 | planned | none | `~xts/boundary/generic_enum_boundary` | planned | generic / typescript | 中 | 语义差异 |
| GEN-TSCOMP-004 | typescript_compatibility_boundary | 泛型高級类型特性 | boundary | P1 | planned | none | `~xts/boundary/generic_advanced_type_boundary` | planned | generic / typescript | 中 | 高級特性 |
| GEN-ARKTS-001 | arkts_dynamic_boundary | 动态 ArkTS 泛型支持 | boundary | P0 | planned | none | `~xts/boundary/generic_arkts_support_boundary` | planned | generic | 高 | 支持状态 |
| GEN-ARKTS-002 | arkts_dynamic_boundary | 动态与静态 ArkTS 泛型差异 | boundary | P0 | planned | none | `~xts/boundary/generic_dynamic_vs_static_boundary` | planned | generic | 高 | 动态/静态差异 |
| GEN-ARKTS-003 | arkts_dynamic_boundary | 泛型运行时检查行为 | boundary | P1 | planned | none | `~xts/boundary/generic_runtime_check_boundary` | planned | generic | 高 | 运行时检查 |
| GEN-ARKTS-004 | arkts_dynamic_boundary | 泛型编译期 vs 运行时 | boundary | P1 | planned | none | `~xts/boundary/generic_compile_vs_runtime_boundary` | planned | generic | 高 | 编译/运行差异 |

## Historical Snapshot: Stage 1 Update Summary

> **Note**: The following is a historical snapshot from Stage 1 generation. The Main Coverage Matrix above is the current source of truth.

The following 28 `.ets` files were generated in Generic Stage 1:

| 生成文件 | 对应 Coverage IDs | 用例类型 |
|---|---|---|
| `xts/pass/generic_function_basic_pass.ets` | GEN-FUNC-001, GEN-TYPEPARAM-004 | pass |
| `xts/pass/generic_function_explicit_type_argument_pass.ets` | GEN-FUNC-002, GEN-EXPL-001 | pass |
| `xts/pass/generic_function_inference_pass.ets` | GEN-FUNC-003, GEN-INFER-001 | pass |
| `xts/pass/generic_function_multiple_type_parameters_pass.ets` | GEN-FUNC-004, GEN-MULTI-002 | pass |
| `xts/pass/generic_class_basic_pass.ets` | GEN-CLASS-001, GEN-CLASS-002 | pass |
| `xts/pass/generic_class_instance_member_pass.ets` | GEN-CLASS-003 | pass |
| `xts/pass/generic_interface_basic_pass.ets` | GEN-IF-001, GEN-IF-004 | pass |
| `xts/pass/generic_interface_property_pass.ets` | GEN-IF-002 | pass |
| `xts/pass/generic_interface_method_pass.ets` | GEN-IF-003 | pass |
| `xts/pass/generic_method_in_class_pass.ets` | GEN-METHOD-001, GEN-METHOD-002 | pass |
| `xts/pass/generic_nested_array_pass.ets` | GEN-NEST-001 | pass |
| `xts/pass/generic_nested_object_pass.ets` | GEN-NEST-002 | pass |
| `xts/pass/generic_array_type_pass.ets` | GEN-ARR-001 | pass |
| `xts/boundary/generic_function_constraint_boundary.ets` | GEN-CONST-001, GEN-CONST-002 | boundary |
| `xts/boundary/generic_function_default_type_parameter_boundary.ets` | GEN-DEF-001, GEN-DEF-002 | boundary |
| `xts/boundary/generic_class_constructor_parameter_boundary.ets` | GEN-CLASS-004 | boundary |
| `xts/boundary/generic_class_static_member_boundary.ets` | GEN-CLASS-005 | boundary |
| `xts/boundary/generic_interface_extends_boundary.ets` | GEN-IF-005 | boundary |
| `xts/boundary/generic_method_in_object_boundary.ets` | GEN-METHOD-004 | boundary |
| `xts/boundary/generic_method_override_boundary.ets` | GEN-METHOD-005 | boundary |
| `xts/boundary/generic_record_like_object_boundary.ets` | GEN-ARR-002 | boundary |
| `xts/boundary/generic_union_type_boundary.ets` | GEN-UNION-001, GEN-UNION-004 | boundary |
| `xts/boundary/generic_constraint_violation_boundary.ets` | GEN-CONST-004, GEN-CONST-005 | boundary |
| `xts/boundary/generic_runtime_erasure_boundary.ets` | GEN-RT-001, GEN-RT-005 | boundary |
| `xts/boundary/generic_type_parameter_typeof_boundary.ets` | GEN-RT-002 | boundary |
| `xts/boundary/generic_type_parameter_instanceof_boundary.ets` | GEN-RT-003 | boundary |
| `xts/boundary/generic_export_boundary.ets` | GEN-MOD-001, GEN-MOD-002 | boundary |
| `xts/regression/generic_basic_regression.ets` | GEN-FUNC-001, GEN-CLASS-001, GEN-IF-001 | regression |
