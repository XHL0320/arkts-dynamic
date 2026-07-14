# Generic First Batch Candidate Index

## Summary

| 项目 | 数量 |
|---|---:|
| 首批候选数量 | 45 |
| generated 候选数量 | 31 |
| planned 候选数量 | 14 |
| P0 候选数量 | 25 |
| P1 候选数量 | 20 |
| P2 候选数量 | 0 |
| 主用例文件 | 28 |
| Additional Files (无直接 Candidate) | 0 |

## Candidate List

| Candidate ID | Case ID | Generic 方向 | 测试点 | 用例类型 | 优先级 | Generation Status | Validation Status | Actual Path | Coverage ID | 所属阶段 | 备注 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| GEN-CAND-001 | GEN-PASS-004 | generic_function | 泛型函数基础声明 | pass | P0 | generated | validation_pending | `xts/pass/generic_function_basic_pass.ets` | GEN-FUNC-001 | Stage 1 | TS 核心行为 |
| GEN-CAND-002 | GEN-PASS-005 | generic_function | 显式类型实参 | pass | P0 | generated | validation_pending | `xts/pass/generic_function_explicit_type_argument_pass.ets` | GEN-FUNC-002 | Stage 1 | 显式传入 |
| GEN-CAND-003 | GEN-PASS-006 | generic_function | 类型推断 | pass | P0 | generated | validation_pending | `xts/pass/generic_function_inference_pass.ets` | GEN-FUNC-003 | Stage 1 | 推断 |
| GEN-CAND-004 | GEN-PASS-007 | generic_function | 多类型参数 | pass | P0 | generated | validation_pending | `xts/pass/generic_function_multiple_type_parameters_pass.ets` | GEN-FUNC-004 | Stage 1 | 多参数 |
| GEN-CAND-005 | none | generic_function | 泛型函数运行时擦除 | boundary | P0 | planned | planned | `~xts/boundary/generic_function_runtime_erasure_boundary.ets` | GEN-FUNC-006 | Stage 0 | 擦除行为 |
| GEN-CAND-006 | GEN-PASS-002 | generic_class | 泛型类基础声明 | pass | P0 | generated | validation_pending | `xts/pass/generic_class_basic_pass.ets` | GEN-CLASS-001 | Stage 1 | TS 核心行为 |
| GEN-CAND-007 | GEN-PASS-002 | generic_class | 泛型类实例化 | pass | P0 | generated | validation_pending | `xts/pass/generic_class_basic_pass.ets` | GEN-CLASS-002 | Stage 1 | 实例化 |
| GEN-CAND-008 | GEN-PASS-003 | generic_class | 实例成员类型 | pass | P0 | generated | validation_pending | `xts/pass/generic_class_instance_member_pass.ets` | GEN-CLASS-003 | Stage 1 | 成员类型 |
| GEN-CAND-009 | none | generic_class | 泛型类运行时擦除 | boundary | P0 | planned | planned | `~xts/boundary/generic_class_runtime_erasure_boundary.ets` | GEN-CLASS-006 | Stage 0 | 擦除行为 |
| GEN-CAND-010 | GEN-PASS-008 | generic_interface | 泛型接口基础声明 | pass | P0 | generated | validation_pending | `xts/pass/generic_interface_basic_pass.ets` | GEN-IF-001 | Stage 1 | TS 核心行为 |
| GEN-CAND-011 | GEN-PASS-010 | generic_interface | 泛型接口属性 | pass | P0 | generated | validation_pending | `xts/pass/generic_interface_property_pass.ets` | GEN-IF-002 | Stage 1 | 属性类型 |
| GEN-CAND-012 | GEN-PASS-009 | generic_interface | 泛型接口方法 | pass | P0 | generated | validation_pending | `xts/pass/generic_interface_method_pass.ets` | GEN-IF-003 | Stage 1 | 方法签名 |
| GEN-CAND-013 | GEN-PASS-008 | generic_interface | class implements 泛型接口 | pass | P0 | generated | validation_pending | `xts/pass/generic_interface_basic_pass.ets` | GEN-IF-004 | Stage 1 | implements |
| GEN-CAND-014 | GEN-PASS-011 | generic_method | 类中泛型方法 | pass | P0 | generated | validation_pending | `xts/pass/generic_method_in_class_pass.ets` | GEN-METHOD-001 | Stage 1 | TS 核心行为 |
| GEN-CAND-015 | GEN-PASS-011 | generic_method | 泛型方法显式实参 | pass | P0 | generated | validation_pending | `xts/pass/generic_method_in_class_pass.ets` | GEN-METHOD-002 | Stage 1 | 显式传入 |
| GEN-CAND-016 | none | type_parameter | 单泛型参数声明 | pass | P0 | planned | planned | `~xts/pass/generic_single_type_param_pass.ets` | GEN-TYPEPARAM-001 | Stage 0 | TS 核心行为 |
| GEN-CAND-017 | GEN-PASS-004 | type_parameter | 泛型参数在函数体使用 | pass | P0 | generated | validation_pending | `xts/pass/generic_function_basic_pass.ets` | GEN-TYPEPARAM-004 | Stage 1 | 参数使用 |
| GEN-CAND-018 | none | multiple_type_parameters | 多泛型参数声明 | pass | P0 | planned | planned | `~xts/pass/generic_multi_type_param_pass.ets` | GEN-MULTI-001 | Stage 0 | TS 核心行为 |
| GEN-CAND-019 | GEN-PASS-007 | multiple_type_parameters | 两参数泛型函数 | pass | P0 | generated | validation_pending | `xts/pass/generic_function_multiple_type_parameters_pass.ets` | GEN-MULTI-002 | Stage 1 | 两参数 |
| GEN-CAND-020 | GEN-BOUND-005 | generic_constraint | 约束声明 | boundary | P0 | generated | spec_pending | `xts/boundary/generic_function_constraint_boundary.ets` | GEN-CONST-001 | Stage 1 | 支持待确认 |
| GEN-CAND-021 | none | generic_constraint | 约束不满足 fail_compile | fail_compile | P0 | planned | planned | `~xts/fail_compile/generic_constraint_violation_fail_compile.ets` | GEN-CONST-003 | Stage 0 | 编译错误 |
| GEN-CAND-022 | GEN-BOUND-006 | default_type_parameter | 默认参数声明 | boundary | P0 | generated | spec_pending | `xts/boundary/generic_function_default_type_parameter_boundary.ets` | GEN-DEF-001 | Stage 1 | 支持待确认 |
| GEN-CAND-023 | GEN-PASS-005 | explicit_type_argument | 显式实参传入 | pass | P0 | generated | validation_pending | `xts/pass/generic_function_explicit_type_argument_pass.ets` | GEN-EXPL-001 | Stage 1 | TS 核心行为 |
| GEN-CAND-024 | GEN-PASS-006 | type_argument_inference | 单参数推断 | pass | P0 | generated | validation_pending | `xts/pass/generic_function_inference_pass.ets` | GEN-INFER-001 | Stage 1 | TS 核心行为 |
| GEN-CAND-025 | none | type_argument_inference | 多参数推断 | pass | P0 | planned | planned | `~xts/pass/generic_inference_multi_pass.ets` | GEN-INFER-002 | Stage 0 | 多参数推断 |
| GEN-CAND-026 | GEN-PASS-012 | nested_generic | 嵌套泛型 Array<Array<T>> | pass | P0 | generated | validation_pending | `xts/pass/generic_nested_array_pass.ets` | GEN-NEST-001 | Stage 1 | TS 核心行为 |
| GEN-CAND-027 | GEN-PASS-001 | generic_array_object | Array<T> 基础 | pass | P0 | generated | validation_pending | `xts/pass/generic_array_type_pass.ets` | GEN-ARR-001 | Stage 1 | TS 核心行为 |
| GEN-CAND-028 | GEN-BOUND-010 | generic_array_object | Record<K, V> 边界 | boundary | P0 | generated | spec_pending | `xts/boundary/generic_record_like_object_boundary.ets` | GEN-ARR-002 | Stage 1 | 支持待确认 |
| GEN-CAND-029 | none | generic_array_object | Promise<T> 边界 | boundary | P0 | planned | planned | `~xts/boundary/generic_promise_boundary.ets` | GEN-ARR-003 | Stage 0 | 支持待确认 |
| GEN-CAND-030 | GEN-BOUND-014 | generic_union_boundary | 泛型与 union type | boundary | P0 | generated | spec_pending | `xts/boundary/generic_union_type_boundary.ets` | GEN-UNION-001 | Stage 1 | 支持待确认 |
| GEN-CAND-031 | GEN-BOUND-011 | generic_runtime_erasure | 泛型运行时擦除验证 | boundary | P0 | generated | spec_pending | `xts/boundary/generic_runtime_erasure_boundary.ets` | GEN-RT-001 | Stage 1 | 擦除行为 |
| GEN-CAND-032 | GEN-BOUND-013 | generic_runtime_erasure | typeof 泛型参数 | boundary | P0 | generated | spec_pending | `xts/boundary/generic_type_parameter_typeof_boundary.ets` | GEN-RT-002 | Stage 1 | 无运行时值 |
| GEN-CAND-033 | none | generic_runtime_erasure | instanceof 泛型参数 | fail_compile | P0 | planned | planned | `~xts/fail_compile/generic_instanceof_fail_compile.ets` | GEN-RT-003 | Stage 0 | 无运行时原型 |
| GEN-CAND-034 | none | generic_duplicate_parameter | 重复类型参数名 fail_compile | fail_compile | P1 | planned | planned | `~xts/fail_compile/generic_duplicate_param_fail_compile.ets` | GEN-DUP-001 | Stage 0 | 编译错误 |
| GEN-CAND-035 | GEN-BOUND-004 | module_export_import_boundary | 泛型函数导出 | boundary | P0 | generated | spec_pending | `xts/boundary/generic_export_boundary.ets` | GEN-MOD-001 | Stage 1 | 导出边界 |
| GEN-CAND-036 | GEN-BOUND-004 | module_export_import_boundary | 泛型类导出 | boundary | P0 | generated | spec_pending | `xts/boundary/generic_export_boundary.ets` | GEN-MOD-002 | Stage 1 | 导出边界 |
| GEN-CAND-037 | none | typescript_compatibility_boundary | TS generic 语法兼容 | boundary | P0 | planned | planned | `~xts/boundary/generic_ts_compatibility_boundary.ets` | GEN-TSCOMP-001 | Stage 0 | 兼容状态 |
| GEN-CAND-038 | none | arkts_dynamic_boundary | 动态 ArkTS 泛型支持 | boundary | P0 | planned | planned | `~xts/boundary/generic_arkts_support_boundary.ets` | GEN-ARKTS-001 | Stage 0 | 支持状态 |
| GEN-CAND-039 | none | arkts_dynamic_boundary | 动态与静态差异 | boundary | P0 | planned | planned | `~xts/boundary/generic_dynamic_vs_static_boundary.ets` | GEN-ARKTS-002 | Stage 0 | 动态/静态差异 |
| GEN-CAND-040 | none | generic_function | 泛型函数返回类型推断 | boundary | P1 | planned | planned | `~xts/boundary/generic_function_return_inference_boundary.ets` | GEN-FUNC-005 | Stage 0 | 返回推断 |
| GEN-CAND-041 | GEN-BOUND-002 | generic_class | 泛型类静态成员边界 | boundary | P1 | generated | spec_pending | `xts/boundary/generic_class_static_member_boundary.ets` | GEN-CLASS-005 | Stage 1 | 静态成员 |
| GEN-CAND-042 | GEN-BOUND-001 | generic_class | 泛型类构造器参数 | boundary | P1 | generated | spec_pending | `xts/boundary/generic_class_constructor_parameter_boundary.ets` | GEN-CLASS-004 | Stage 1 | 原计划 pass 实际为 boundary |
| GEN-CAND-043 | none | generic_method | 泛型方法类型推断 | pass | P1 | planned | planned | `~xts/pass/generic_method_inference_pass.ets` | GEN-METHOD-003 | Stage 0 | 推断 |
| GEN-CAND-044 | GEN-PASS-013 | nested_generic | 嵌套泛型对象 | pass | P1 | generated | validation_pending | `xts/pass/generic_nested_object_pass.ets` | GEN-NEST-002 | Stage 1 | 嵌套对象 |
| GEN-CAND-045 | GEN-BOUND-003 | generic_constraint | 约束运行时检查 | boundary | P1 | generated | spec_pending | `xts/boundary/generic_constraint_violation_boundary.ets` | GEN-CONST-005 | Stage 1 | 运行时检查 |

## Historical Snapshot: Stage 1 Update

> **Note**: Stage 1 generated 28 `.ets` files. All 28 files have Case IDs registered in Task 3D.
