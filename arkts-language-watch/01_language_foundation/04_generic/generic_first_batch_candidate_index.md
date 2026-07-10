# Generic First Batch Candidate Index

## Summary

| 项目 | 数量 |
|---|---:|
| 首批候选数量 | 45 |
| P0 候选数量 | 25 |
| P1 候选数量 | 20 |
| P2 候选数量 | 0 |
| ohosTest 适用候选 | 32 |
| 需要 test262 对照候选 | 5 |

## Candidate List

| Candidate ID | Generic 方向 | Test Point | Case Type | Priority | Suggested File Path | Suitable for ohosTest | Needs test262 | Related Chapter | Status | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| GEN-CAND-001 | generic_function | 泛型函数基础声明 | pass | P0 | `04_generic/xts/pass/generic_function_basic_pass.ets` | yes | no | generic / function | planned | TS 核心行为 |
| GEN-CAND-002 | generic_function | 显式类型实参 | pass | P0 | `04_generic/xts/pass/generic_function_explicit_arg_pass.ets` | yes | no | generic / function | planned | 显式传入 |
| GEN-CAND-003 | generic_function | 类型推断 | pass | P0 | `04_generic/xts/pass/generic_function_inference_pass.ets` | yes | no | generic / function | planned | 推断 |
| GEN-CAND-004 | generic_function | 多类型参数 | pass | P0 | `04_generic/xts/pass/generic_function_multi_param_pass.ets` | yes | no | generic / function | planned | 多参数 |
| GEN-CAND-005 | generic_function | 泛型函数运行时擦除 | boundary | P0 | `04_generic/xts/boundary/generic_function_runtime_erasure_boundary.ets` | yes | no | generic / function / types | planned | 擦除行为 |
| GEN-CAND-006 | generic_class | 泛型类基础声明 | pass | P0 | `04_generic/xts/pass/generic_class_basic_pass.ets` | yes | no | generic / class | planned | TS 核心行为 |
| GEN-CAND-007 | generic_class | 泛型类实例化 | pass | P0 | `04_generic/xts/pass/generic_class_instantiate_pass.ets` | yes | no | generic / class | planned | 实例化 |
| GEN-CAND-008 | generic_class | 实例成员类型 | pass | P0 | `04_generic/xts/pass/generic_class_instance_member_pass.ets` | yes | no | generic / class | planned | 成员类型 |
| GEN-CAND-009 | generic_class | 泛型类运行时擦除 | boundary | P0 | `04_generic/xts/boundary/generic_class_runtime_erasure_boundary.ets` | yes | no | generic / class / types | planned | 擦除行为 |
| GEN-CAND-010 | generic_interface | 泛型接口基础声明 | pass | P0 | `04_generic/xts/pass/generic_interface_basic_pass.ets` | yes | no | generic / interface | planned | TS 核心行为 |
| GEN-CAND-011 | generic_interface | 泛型接口属性 | pass | P0 | `04_generic/xts/pass/generic_interface_property_pass.ets` | yes | no | generic / interface | planned | 属性类型 |
| GEN-CAND-012 | generic_interface | 泛型接口方法 | pass | P0 | `04_generic/xts/pass/generic_interface_method_pass.ets` | yes | no | generic / interface / function | planned | 方法签名 |
| GEN-CAND-013 | generic_interface | class implements 泛型接口 | pass | P0 | `04_generic/xts/pass/generic_interface_implements_pass.ets` | yes | no | generic / interface / class | planned | implements |
| GEN-CAND-014 | generic_method | 类中泛型方法 | pass | P0 | `04_generic/xts/pass/generic_method_in_class_pass.ets` | yes | no | generic / function / class | planned | TS 核心行为 |
| GEN-CAND-015 | generic_method | 泛型方法显式实参 | pass | P0 | `04_generic/xts/pass/generic_method_explicit_arg_pass.ets` | yes | no | generic / function | planned | 显式传入 |
| GEN-CAND-016 | type_parameter | 单泛型参数声明 | pass | P0 | `04_generic/xts/pass/generic_single_type_param_pass.ets` | yes | no | generic / declarations | planned | TS 核心行为 |
| GEN-CAND-017 | type_parameter | 泛型参数在函数体使用 | pass | P0 | `04_generic/xts/pass/generic_type_param_usage_pass.ets` | yes | no | generic / function | planned | 参数使用 |
| GEN-CAND-018 | multiple_type_parameters | 多泛型参数声明 | pass | P0 | `04_generic/xts/pass/generic_multi_type_param_pass.ets` | yes | no | generic / declarations | planned | TS 核心行为 |
| GEN-CAND-019 | multiple_type_parameters | 两参数泛型函数 | pass | P0 | `04_generic/xts/pass/generic_two_param_function_pass.ets` | yes | no | generic / function | planned | 两参数 |
| GEN-CAND-020 | generic_constraint | 约束声明 | boundary | P0 | `04_generic/xts/boundary/generic_constraint_declaration_boundary.ets` | yes | no | generic / types | planned | 支持待确认 |
| GEN-CAND-021 | generic_constraint | 约束不满足 fail_compile | fail_compile | P0 | `04_generic/xts/fail_compile/generic_constraint_violation_fail_compile.ets` | no | no | generic / types | planned | 编译错误 |
| GEN-CAND-022 | default_type_parameter | 默认参数声明 | boundary | P0 | `04_generic/xts/boundary/generic_default_param_boundary.ets` | yes | no | generic / typescript | planned | 支持待确认 |
| GEN-CAND-023 | explicit_type_argument | 显式实参传入 | pass | P0 | `04_generic/xts/pass/generic_explicit_arg_pass.ets` | yes | no | generic / function | planned | TS 核心行为 |
| GEN-CAND-024 | type_argument_inference | 单参数推断 | pass | P0 | `04_generic/xts/pass/generic_inference_single_pass.ets` | yes | no | generic / function | planned | TS 核心行为 |
| GEN-CAND-025 | type_argument_inference | 多参数推断 | pass | P0 | `04_generic/xts/pass/generic_inference_multi_pass.ets` | yes | no | generic / function | planned | 多参数推断 |
| GEN-CAND-026 | nested_generic | 嵌套泛型 Array<Array<T>> | pass | P0 | `04_generic/xts/pass/generic_nested_array_pass.ets` | yes | no | generic / types | planned | TS 核心行为 |
| GEN-CAND-027 | generic_array_object | Array<T> 基础 | pass | P0 | `04_generic/xts/pass/generic_array_basic_pass.ets` | yes | no | generic / types | planned | TS 核心行为 |
| GEN-CAND-028 | generic_array_object | Record<K, V> 边界 | boundary | P0 | `04_generic/xts/boundary/generic_record_boundary.ets` | yes | no | generic / types | planned | 支持待确认 |
| GEN-CAND-029 | generic_array_object | Promise<T> 边界 | boundary | P0 | `04_generic/xts/boundary/generic_promise_boundary.ets` | yes | no | generic / types | planned | 支持待确认 |
| GEN-CAND-030 | generic_union_boundary | 泛型与 union type | boundary | P0 | `04_generic/xts/boundary/generic_union_boundary.ets` | yes | no | generic / types | planned | 支持待确认 |
| GEN-CAND-031 | generic_runtime_erasure | 泛型运行时擦除验证 | boundary | P0 | `04_generic/xts/boundary/generic_runtime_erasure_boundary.ets` | yes | no | generic / types | planned | 擦除行为 |
| GEN-CAND-032 | generic_runtime_erasure | typeof 泛型参数 | boundary | P0 | `04_generic/xts/boundary/generic_typeof_boundary.ets` | yes | no | generic / types / operators | planned | 无运行时值 |
| GEN-CAND-033 | generic_runtime_erasure | instanceof 泛型参数 | fail_compile | P0 | `04_generic/xts/fail_compile/generic_instanceof_fail_compile.ets` | no | no | generic / types / operators | planned | 无运行时原型 |
| GEN-CAND-034 | generic_duplicate_parameter | 重复类型参数名 fail_compile | fail_compile | P1 | `04_generic/xts/fail_compile/generic_duplicate_param_fail_compile.ets` | no | no | generic / declarations | planned | 编译错误 |
| GEN-CAND-035 | module_export_import_boundary | 泛型函数导出 | boundary | P0 | `04_generic/xts/boundary/generic_export_function_boundary.ets` | yes | no | generic / module | planned | 导出边界 |
| GEN-CAND-036 | module_export_import_boundary | 泛型类导出 | boundary | P0 | `04_generic/xts/boundary/generic_export_class_boundary.ets` | yes | no | generic / module | planned | 导出边界 |
| GEN-CAND-037 | typescript_compatibility_boundary | TS generic 语法兼容 | boundary | P0 | `04_generic/xts/boundary/generic_ts_compatibility_boundary.ets` | yes | no | generic / typescript | planned | 兼容状态 |
| GEN-CAND-038 | arkts_dynamic_boundary | 动态 ArkTS 泛型支持 | boundary | P0 | `04_generic/xts/boundary/generic_arkts_support_boundary.ets` | yes | no | generic | planned | 支持状态 |
| GEN-CAND-039 | arkts_dynamic_boundary | 动态与静态差异 | boundary | P0 | `04_generic/xts/boundary/generic_dynamic_vs_static_boundary.ets` | yes | no | generic | planned | 动态/静态差异 |
| GEN-CAND-040 | generic_function | 泛型函数返回类型推断 | boundary | P1 | `04_generic/xts/boundary/generic_function_return_inference_boundary.ets` | yes | no | generic / function | planned | 返回推断 |
| GEN-CAND-041 | generic_class | 泛型类静态成员边界 | boundary | P1 | `04_generic/xts/boundary/generic_class_static_member_boundary.ets` | yes | no | generic / class | planned | 静态成员 |
| GEN-CAND-042 | generic_class | 泛型类构造器参数 | pass | P1 | `04_generic/xts/pass/generic_class_constructor_param_pass.ets` | yes | no | generic / class | planned | 构造器 |
| GEN-CAND-043 | generic_method | 泛型方法类型推断 | pass | P1 | `04_generic/xts/pass/generic_method_inference_pass.ets` | yes | no | generic / function | planned | 推断 |
| GEN-CAND-044 | nested_generic | 嵌套泛型对象 | pass | P1 | `04_generic/xts/pass/generic_nested_object_pass.ets` | yes | no | generic / types | planned | 嵌套对象 |
| GEN-CAND-045 | generic_constraint | 约束运行时检查 | boundary | P1 | `04_generic/xts/boundary/generic_constraint_runtime_check_boundary.ets` | yes | no | generic / types | planned | 运行时检查 |

## Stage 1 Update Summary

Stage 1 生成了 28 个 `.ets` 文件，对应 28 个 candidate 标记为 created，17 个保持 planned。

### Created Candidates (28)

| Candidate ID | 实际路径 |
|---|---|
| GEN-CAND-001 | `xts/pass/generic_function_basic_pass.ets` |
| GEN-CAND-002 | `xts/pass/generic_function_explicit_type_argument_pass.ets` |
| GEN-CAND-003 | `xts/pass/generic_function_inference_pass.ets` |
| GEN-CAND-004 | `xts/pass/generic_function_multiple_type_parameters_pass.ets` |
| GEN-CAND-005 | `xts/boundary/generic_function_constraint_boundary.ets` |
| GEN-CAND-006 | `xts/pass/generic_class_basic_pass.ets` |
| GEN-CAND-007 | `xts/pass/generic_class_basic_pass.ets` |
| GEN-CAND-008 | `xts/pass/generic_class_instance_member_pass.ets` |
| GEN-CAND-009 | `xts/boundary/generic_class_static_member_boundary.ets` |
| GEN-CAND-010 | `xts/pass/generic_interface_basic_pass.ets` |
| GEN-CAND-011 | `xts/pass/generic_interface_property_pass.ets` |
| GEN-CAND-012 | `xts/pass/generic_interface_method_pass.ets` |
| GEN-CAND-013 | `xts/pass/generic_interface_basic_pass.ets` |
| GEN-CAND-014 | `xts/pass/generic_method_in_class_pass.ets` |
| GEN-CAND-015 | `xts/pass/generic_method_in_class_pass.ets` |
| GEN-CAND-016 | `xts/pass/generic_function_basic_pass.ets` |
| GEN-CAND-017 | `xts/pass/generic_function_basic_pass.ets` |
| GEN-CAND-018 | `xts/pass/generic_function_multiple_type_parameters_pass.ets` |
| GEN-CAND-019 | `xts/pass/generic_function_multiple_type_parameters_pass.ets` |
| GEN-CAND-020 | `xts/boundary/generic_function_constraint_boundary.ets` |
| GEN-CAND-022 | `xts/boundary/generic_function_default_type_parameter_boundary.ets` |
| GEN-CAND-023 | `xts/pass/generic_function_explicit_type_argument_pass.ets` |
| GEN-CAND-024 | `xts/pass/generic_function_inference_pass.ets` |
| GEN-CAND-025 | `xts/pass/generic_function_inference_pass.ets` |
| GEN-CAND-026 | `xts/pass/generic_nested_array_pass.ets` |
| GEN-CAND-027 | `xts/pass/generic_array_type_pass.ets` |
| GEN-CAND-031 | `xts/boundary/generic_runtime_erasure_boundary.ets` |
| GEN-CAND-032 | `xts/boundary/generic_type_parameter_typeof_boundary.ets` |

### Additional Files Without Direct Candidate

| 文件 | Coverage IDs | 用例类型 |
|---|---|---|
| `xts/boundary/generic_class_constructor_parameter_boundary.ets` | GEN-CLASS-004 | boundary |
| `xts/boundary/generic_interface_extends_boundary.ets` | GEN-IF-005 | boundary |
| `xts/boundary/generic_method_in_object_boundary.ets` | GEN-METHOD-004 | boundary |
| `xts/boundary/generic_method_override_boundary.ets` | GEN-METHOD-005 | boundary |
| `xts/pass/generic_nested_object_pass.ets` | GEN-NEST-002 | pass |
| `xts/boundary/generic_record_like_object_boundary.ets` | GEN-ARR-002 | boundary |
| `xts/boundary/generic_union_type_boundary.ets` | GEN-UNION-001 | boundary |
| `xts/boundary/generic_constraint_violation_boundary.ets` | GEN-CONST-004 | boundary |
| `xts/boundary/generic_type_parameter_instanceof_boundary.ets` | GEN-RT-003 | boundary |
| `xts/boundary/generic_export_boundary.ets` | GEN-MOD-001, GEN-MOD-002 | boundary |
| `xts/regression/generic_basic_regression.ets` | GEN-FUNC-001, GEN-CLASS-001, GEN-IF-001 | regression |
