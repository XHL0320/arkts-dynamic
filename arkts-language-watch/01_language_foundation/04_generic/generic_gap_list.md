# Generic Gap List

## Summary

| 缺口类型 | 数量 |
|---|---:|
| P0 未覆盖 | 8 |
| P1 未覆盖 | 15 |
| P2 未覆盖 | 0 |
| boundary 待确认 | 14 |
| 需要后续 TypeScript / ArkTS 兼容比对 | 28 |
| 需要编译验证 | 28 |
| 需要运行验证 | 28 |

## P0 Gaps

| ID | Generic 方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| GEN-MULTI-001 | multiple_type_parameters | 多泛型参数声明 | planned | 生成 pass 用例 |
| GEN-FUNC-006 | generic_function | 泛型函数运行时擦除 | planned boundary | 确认后生成 boundary |
| GEN-CLASS-006 | generic_class | 泛型类运行时擦除 | planned boundary | 确认后生成 boundary |
| GEN-CONST-003 | generic_constraint | 约束不满足 fail_compile | planned fail_compile | 确认后生成 fail_compile 或 boundary |
| GEN-ARR-003 | generic_array_object | Promise<T> 边界 | planned boundary | 确认后生成 boundary |
| GEN-TSCOMP-001 | typescript_compatibility_boundary | TS generic 语法兼容 | planned boundary | 确认后生成 boundary |
| GEN-ARKTS-001 | arkts_dynamic_boundary | 动态 ArkTS 泛型支持 | planned boundary | 确认后生成 boundary |
| GEN-ARKTS-002 | arkts_dynamic_boundary | 动态与静态 ArkTS 泛型差异 | planned boundary | 确认后生成 boundary |

## P1 Gaps

| ID | Generic 方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| GEN-TYPEPARAM-002 | type_parameter | 泛型参数作用域 | planned | 生成 pass 用例 |
| GEN-FUNC-005 | generic_function | 泛型函数返回类型推断 | planned boundary | 确认后生成 |
| GEN-IF-005 | generic_interface | 泛型接口运行时擦除 | planned boundary | 确认后生成 |
| GEN-METHOD-003 | generic_method | 泛型方法类型推断 | planned | 生成 pass 用例 |
| GEN-MULTI-003 | multiple_type_parameters | 三参数泛型 | planned | 生成 pass 用例 |
| GEN-MULTI-004 | multiple_type_parameters | 多参数独立推断 | planned | 生成 pass 用例 |
| GEN-DEF-003 | default_type_parameter | 默认参数与显式实参 | planned boundary | 确认后生成 |
| GEN-EXPL-003 | explicit_type_argument | 显式实参覆盖推断 | planned boundary | 确认后生成 |
| GEN-INFER-003 | type_argument_inference | 推断为字面量类型 | planned boundary | 确认后生成 |
| GEN-NEST-003 | nested_generic | 嵌套泛型 Map | planned boundary | 确认后生成 |
| GEN-ARR-004 | generic_array_object | Map<K, V> 边界 | planned boundary | 确认后生成 |
| GEN-UNION-002 | generic_union_boundary | 泛型与 intersection type | planned boundary | 确认后生成 |
| GEN-UNION-003 | generic_union_boundary | 泛型与 conditional type | planned boundary | 确认后生成 |
| GEN-DUP-001 | generic_duplicate_parameter | 重复类型参数名 fail_compile | planned fail_compile | 确认后生成 |
| GEN-MOD-003 | module_export_import_boundary | 泛型接口导出 | planned boundary | 确认后生成 |

## Boundary Pending Confirmation

| 文件路径/测试点 | 原因 | 后续确认方式 |
|---|---|---|
| `xts/boundary/generic_function_constraint_boundary.ets` | 约束支持待确认 | compiler |
| `xts/boundary/generic_function_default_type_parameter_boundary.ets` | 默认参数支持待确认 | compiler |
| `xts/boundary/generic_class_constructor_parameter_boundary.ets` | 构造器参数类型检查待确认 | compiler |
| `xts/boundary/generic_class_static_member_boundary.ets` | 静态成员与泛型限制待确认 | compiler |
| `xts/boundary/generic_interface_extends_boundary.ets` | 泛型接口 extends 支持待确认 | compiler |
| `xts/boundary/generic_method_in_object_boundary.ets` | 对象泛型方法支持待确认 | compiler |
| `xts/boundary/generic_method_override_boundary.ets` | 泛型方法 override 行为待确认 | compiler |
| `xts/boundary/generic_record_like_object_boundary.ets` | Record-like 对象支持待确认 | compiler |
| `xts/boundary/generic_union_type_boundary.ets` | 泛型与 union 支持待确认 | compiler |
| `xts/boundary/generic_constraint_violation_boundary.ets` | 约束 enforcement 待确认 | compiler |
| `xts/boundary/generic_runtime_erasure_boundary.ets` | 运行时擦除行为待确认 | runtime smoke |
| `xts/boundary/generic_type_parameter_typeof_boundary.ets` | typeof 行为待确认 | runtime smoke / compiler |
| `xts/boundary/generic_type_parameter_instanceof_boundary.ets` | instanceof 行为待确认 | runtime smoke / compiler |
| `xts/boundary/generic_export_boundary.ets` | 导出支持待确认 | compiler |

## Validation Pending

| 文件路径/测试点 | 需要验证内容 | 建议验证方式 |
|---|---|---|
| 全部 28 个 .ets 文件 | 编译是否通过、泛型语法是否支持 | DevEco / hvigor 编译 |
| 13 个 pass 文件 | 泛型语法和基本行为是否正确 | ohosTest 运行验证 |
| 14 个 boundary 文件 | 支持状态确认 | compiler 检查 + runtime smoke |
| 1 个 regression 文件 | 回归行为是否正确 | ohosTest 运行验证 |

## Mapping Pending

| 测试点 | 需要映射内容 | 后续动作 |
|---|---|---|
| 全部 28 个 .ets 文件 | TypeScript generic 规范映射 | 等主要语言域完成后统一进行 |
| coverage_matrix 91 个测试点 | TypeScript/ArkTS 兼容差异映射 | 等主要语言域完成后统一进行 |
| 泛型运行时擦除 | TypeScript generic erasure 规范 | 规范比对阶段确认 |
| 泛型约束 | TypeScript constraint 规范 | 规范比对阶段确认 |
| 泛型推断 | TypeScript inference 规范 | 规范比对阶段确认 |
| 泛型默认参数 | TypeScript default type parameter 规范 | 规范比对阶段确认 |
