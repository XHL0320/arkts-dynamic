# Generic XTS Inventory

## Summary

| 项目 | 数量 |
|---|---:|
| .ets 文件总数 | 28 |
| pass 用例数量 | 13 |
| fail_compile 用例数量 | 0 |
| fail_runtime 用例数量 | 0 |
| boundary 用例数量 | 14 |
| regression 用例数量 | 1 |
| helper module 文件数量 | 0 |

## Inventory By Type

| 用例类型 | 数量 | 目录 |
|---|---:|---|
| pass | 13 | `xts/pass/` |
| fail_compile | 0 | `xts/fail_compile/` |
| fail_runtime | 0 | `xts/fail_runtime/` |
| boundary | 14 | `xts/boundary/` |
| regression | 1 | `xts/regression/` |

## Generic Direction Summary

| Generic 方向 | pass | fail_compile | fail_runtime | boundary | regression | 合计 |
|---|---:|---:|---:|---:|---:|---:|
| generic_function | 1 | 0 | 0 | 0 | 1 | 2 |
| generic_class | 2 | 0 | 0 | 2 | 0 | 4 |
| generic_interface | 3 | 0 | 0 | 1 | 0 | 4 |
| generic_method | 1 | 0 | 0 | 2 | 0 | 3 |
| type_parameter | 0 | 0 | 0 | 0 | 0 | 0 |
| multiple_type_parameters | 1 | 0 | 0 | 0 | 0 | 1 |
| generic_constraint | 0 | 0 | 0 | 2 | 0 | 2 |
| default_type_parameter | 0 | 0 | 0 | 1 | 0 | 1 |
| explicit_type_argument | 1 | 0 | 0 | 0 | 0 | 1 |
| type_argument_inference | 1 | 0 | 0 | 0 | 0 | 1 |
| nested_generic | 2 | 0 | 0 | 0 | 0 | 2 |
| generic_array_object | 1 | 0 | 0 | 1 | 0 | 2 |
| generic_union_boundary | 0 | 0 | 0 | 1 | 0 | 1 |
| generic_runtime_erasure | 0 | 0 | 0 | 3 | 0 | 3 |
| generic_shadowing_boundary | 0 | 0 | 0 | 0 | 0 | 0 |
| generic_duplicate_parameter | 0 | 0 | 0 | 0 | 0 | 0 |
| module_export_import_boundary | 0 | 0 | 0 | 1 | 0 | 1 |
| typescript_compatibility_boundary | 0 | 0 | 0 | 0 | 0 | 0 |
| arkts_dynamic_boundary | 0 | 0 | 0 | 0 | 0 | 0 |

## Case List

| 序号 | 文件路径 | 用例类型 | Generic 方向 | 推测测试点 | 所属阶段 | 备注 |
|---|---|---|---|---|---|---|
| 1 | `xts/pass/generic_function_basic_pass.ets` | pass | generic_function | 泛型函数基础 | Stage 1 | TS 核心行为 |
| 2 | `xts/pass/generic_function_explicit_type_argument_pass.ets` | pass | explicit_type_argument | 显式类型实参 | Stage 1 | TS 核心行为 |
| 3 | `xts/pass/generic_function_inference_pass.ets` | pass | type_argument_inference | 类型推断 | Stage 1 | TS 核心行为 |
| 4 | `xts/pass/generic_function_multiple_type_parameters_pass.ets` | pass | multiple_type_parameters | 多类型参数 | Stage 1 | TS 核心行为 |
| 5 | `xts/pass/generic_class_basic_pass.ets` | pass | generic_class | 泛型类基础 | Stage 1 | TS 核心行为 |
| 6 | `xts/pass/generic_class_instance_member_pass.ets` | pass | generic_class | 实例成员 | Stage 1 | TS 核心行为 |
| 7 | `xts/pass/generic_interface_basic_pass.ets` | pass | generic_interface | 泛型接口基础 | Stage 1 | TS 核心行为 |
| 8 | `xts/pass/generic_interface_property_pass.ets` | pass | generic_interface | 泛型接口属性 | Stage 1 | TS 核心行为 |
| 9 | `xts/pass/generic_interface_method_pass.ets` | pass | generic_interface | 泛型接口方法 | Stage 1 | TS 核心行为 |
| 10 | `xts/pass/generic_method_in_class_pass.ets` | pass | generic_method | 类中泛型方法 | Stage 1 | TS 核心行为 |
| 11 | `xts/pass/generic_nested_array_pass.ets` | pass | nested_generic | 嵌套泛型数组 | Stage 1 | TS 核心行为 |
| 12 | `xts/pass/generic_nested_object_pass.ets` | pass | nested_generic | 嵌套泛型对象 | Stage 1 | TS 核心行为 |
| 13 | `xts/pass/generic_array_type_pass.ets` | pass | generic_array_object | Array<T> 类型 | Stage 1 | TS 核心行为 |
| 14 | `xts/boundary/generic_function_constraint_boundary.ets` | boundary | generic_constraint | 泛型约束 | Stage 1 | 支持待确认 |
| 15 | `xts/boundary/generic_function_default_type_parameter_boundary.ets` | boundary | default_type_parameter | 默认类型参数 | Stage 1 | 支持待确认 |
| 16 | `xts/boundary/generic_class_constructor_parameter_boundary.ets` | boundary | generic_class | 构造器参数 | Stage 1 | 类型检查待确认 |
| 17 | `xts/boundary/generic_class_static_member_boundary.ets` | boundary | generic_class | 静态成员边界 | Stage 1 | 静态成员限制 |
| 18 | `xts/boundary/generic_interface_extends_boundary.ets` | boundary | generic_interface | 泛型接口 extends | Stage 1 | 支持待确认 |
| 19 | `xts/boundary/generic_method_in_object_boundary.ets` | boundary | generic_method | 对象泛型方法 | Stage 1 | 支持待确认 |
| 20 | `xts/boundary/generic_method_override_boundary.ets` | boundary | generic_method | 泛型方法 override | Stage 1 | override 行为 |
| 21 | `xts/boundary/generic_record_like_object_boundary.ets` | boundary | generic_array_object | Record-like 对象 | Stage 1 | 支持待确认 |
| 22 | `xts/boundary/generic_union_type_boundary.ets` | boundary | generic_union_boundary | 泛型与 union | Stage 1 | 支持待确认 |
| 23 | `xts/boundary/generic_constraint_violation_boundary.ets` | boundary | generic_constraint | 约束违反 | Stage 1 | enforcement 待确认 |
| 24 | `xts/boundary/generic_runtime_erasure_boundary.ets` | boundary | generic_runtime_erasure | 运行时擦除 | Stage 1 | 擦除行为待确认 |
| 25 | `xts/boundary/generic_type_parameter_typeof_boundary.ets` | boundary | generic_runtime_erasure | typeof 泛型参数 | Stage 1 | 无运行时值 |
| 26 | `xts/boundary/generic_type_parameter_instanceof_boundary.ets` | boundary | generic_runtime_erasure | instanceof 泛型参数 | Stage 1 | 无运行时原型 |
| 27 | `xts/boundary/generic_export_boundary.ets` | boundary | module_export_import_boundary | 泛型导出 | Stage 1 | 支持待确认 |
| 28 | `xts/regression/generic_basic_regression.ets` | regression | generic_function | 泛型基础回归 | Stage 1 | 回归验证 |
