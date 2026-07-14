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
| validation_pending | 14 |
| spec_pending | 14 |
| verified_* | 0 |

## Inventory By Type

| 用例类型 | 数量 | 目录 |
|---|---:|---|
| pass | 13 | `xts/pass/` |
| fail_compile | 0 | `xts/fail_compile/` |
| fail_runtime | 0 | `xts/fail_runtime/` |
| boundary | 14 | `xts/boundary/` |
| regression | 1 | `xts/regression/` |

## Case List

| 序号 | 文件路径 | 用例类型 | Case ID | Coverage ID | Generic 方向 | 所属阶段 | 备注 |
|---|---|---|---|---|---|---|---|
| 1 | `xts/pass/generic_array_type_pass.ets` | pass | GEN-PASS-001 | GEN-ARR-001 | generic_array_object | Stage 1 | TS 核心行为 |
| 2 | `xts/pass/generic_class_basic_pass.ets` | pass | GEN-PASS-002 | GEN-CLASS-001, GEN-CLASS-002 | generic_class | Stage 1 | TS 核心行为 |
| 3 | `xts/pass/generic_class_instance_member_pass.ets` | pass | GEN-PASS-003 | GEN-CLASS-003 | generic_class | Stage 1 | 成员类型 |
| 4 | `xts/pass/generic_function_basic_pass.ets` | pass | GEN-PASS-004 | GEN-FUNC-001, GEN-TYPEPARAM-004 | generic_function | Stage 1 | TS 核心行为 |
| 5 | `xts/pass/generic_function_explicit_type_argument_pass.ets` | pass | GEN-PASS-005 | GEN-EXPL-001, GEN-FUNC-002 | explicit_type_argument | Stage 1 | 显式传入 |
| 6 | `xts/pass/generic_function_inference_pass.ets` | pass | GEN-PASS-006 | GEN-FUNC-003, GEN-INFER-001 | type_argument_inference | Stage 1 | 推断 |
| 7 | `xts/pass/generic_function_multiple_type_parameters_pass.ets` | pass | GEN-PASS-007 | GEN-FUNC-004, GEN-MULTI-002 | multiple_type_parameters | Stage 1 | 多参数 |
| 8 | `xts/pass/generic_interface_basic_pass.ets` | pass | GEN-PASS-008 | GEN-IF-001, GEN-IF-004 | generic_interface | Stage 1 | TS 核心行为 |
| 9 | `xts/pass/generic_interface_method_pass.ets` | pass | GEN-PASS-009 | GEN-IF-003 | generic_interface | Stage 1 | 方法签名 |
| 10 | `xts/pass/generic_interface_property_pass.ets` | pass | GEN-PASS-010 | GEN-IF-002 | generic_interface | Stage 1 | 属性类型 |
| 11 | `xts/pass/generic_method_in_class_pass.ets` | pass | GEN-PASS-011 | GEN-METHOD-001, GEN-METHOD-002 | generic_method | Stage 1 | TS 核心行为 |
| 12 | `xts/pass/generic_nested_array_pass.ets` | pass | GEN-PASS-012 | GEN-NEST-001 | nested_generic | Stage 1 | 嵌套数组 |
| 13 | `xts/pass/generic_nested_object_pass.ets` | pass | GEN-PASS-013 | GEN-NEST-002 | nested_generic | Stage 1 | 嵌套对象 |
| 14 | `xts/boundary/generic_class_constructor_parameter_boundary.ets` | boundary | GEN-BOUND-001 | GEN-CLASS-004 | generic_class | Stage 1 | 构造器参数 |
| 15 | `xts/boundary/generic_class_static_member_boundary.ets` | boundary | GEN-BOUND-002 | GEN-CLASS-005 | generic_class | Stage 1 | 静态成员 |
| 16 | `xts/boundary/generic_constraint_violation_boundary.ets` | boundary | GEN-BOUND-003 | GEN-CONST-004, GEN-CONST-005 | generic_constraint | Stage 1 | 约束违反 |
| 17 | `xts/boundary/generic_export_boundary.ets` | boundary | GEN-BOUND-004 | GEN-MOD-001, GEN-MOD-002 | module_export_import_boundary | Stage 1 | 导出 |
| 18 | `xts/boundary/generic_function_constraint_boundary.ets` | boundary | GEN-BOUND-005 | GEN-CONST-001, GEN-CONST-002 | generic_constraint | Stage 1 | 约束声明 |
| 19 | `xts/boundary/generic_function_default_type_parameter_boundary.ets` | boundary | GEN-BOUND-006 | GEN-DEF-001, GEN-DEF-002 | default_type_parameter | Stage 1 | 默认参数 |
| 20 | `xts/boundary/generic_interface_extends_boundary.ets` | boundary | GEN-BOUND-007 | GEN-IF-005 | generic_interface | Stage 1 | 接口 extends |
| 21 | `xts/boundary/generic_method_in_object_boundary.ets` | boundary | GEN-BOUND-008 | GEN-METHOD-004 | generic_method | Stage 1 | 对象方法 |
| 22 | `xts/boundary/generic_method_override_boundary.ets` | boundary | GEN-BOUND-009 | GEN-METHOD-005 | generic_method | Stage 1 | override |
| 23 | `xts/boundary/generic_record_like_object_boundary.ets` | boundary | GEN-BOUND-010 | GEN-ARR-002 | generic_array_object | Stage 1 | Record |
| 24 | `xts/boundary/generic_runtime_erasure_boundary.ets` | boundary | GEN-BOUND-011 | GEN-RT-001, GEN-RT-005 | generic_runtime_erasure | Stage 1 | 擦除 |
| 25 | `xts/boundary/generic_type_parameter_instanceof_boundary.ets` | boundary | GEN-BOUND-012 | GEN-RT-003 | generic_runtime_erasure | Stage 1 | instanceof |
| 26 | `xts/boundary/generic_type_parameter_typeof_boundary.ets` | boundary | GEN-BOUND-013 | GEN-RT-002 | generic_runtime_erasure | Stage 1 | typeof |
| 27 | `xts/boundary/generic_union_type_boundary.ets` | boundary | GEN-BOUND-014 | GEN-UNION-001, GEN-UNION-004 | generic_union_boundary | Stage 1 | union |
| 28 | `xts/regression/generic_basic_regression.ets` | regression | GEN-REGR-001 | GEN-CLASS-001, GEN-FUNC-001, GEN-IF-001 | generic_function | Stage 1 | 回归验证 |
