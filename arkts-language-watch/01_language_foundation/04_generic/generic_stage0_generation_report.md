# Generic Stage 0 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理目录数量 | 1 |
| 新增/补齐 README 数量 | 1 |
| 新增/补齐 spec_summary 数量 | 1 |
| 新增/补齐 test_design 数量 | 1 |
| 新增/补齐 coverage_matrix 数量 | 1 |
| 新增映射文档数量 | 2 |
| 总覆盖测试点数量 | 91 |
| 首批候选用例数量 | 45 |
| 本次生成 .ets 用例数量 | 0 |

## Generated / Updated Files

| 文件 | 操作 | 说明 |
|---|---|---|
| `README.md` | 替换 | 从通用占位替换为 generic 体系定位文档，包含子目录结构和看护范围 |
| `spec_summary.md` | 新增 | 19 章节规范摘要，覆盖泛型函数/类/接口/方法/类型参数/约束/默认参数/显式实参/推断/嵌套泛型/运行时擦除/union边界/TS兼容/ArkTS动态 |
| `test_design.md` | 新增 | 13 章节测试设计，覆盖正向语法/编译负向/运行时擦除/泛型函数/类/接口/约束/推断/TS兼容/跨特性/回归/test262/XTS策略 |
| `coverage_matrix.md` | 新增 | 91 个测试点覆盖矩阵，覆盖 19 类 generic 方向 × 4-6 测试点 |
| `generic_first_batch_candidate_index.md` | 新增 | 45 个首批候选索引，P0 25/P1 20，所有状态为 planned |
| `generic_to_feature_mapping.md` | 新增 | generic 到 types/function/class/interface/module/typescript_compatibility 的完整映射，包含 ownership 规则和重复避免规则 |
| `issues/known_issues.md` | 新增 | generic 体系专用已知问题模板 |
| `issues/fixed_issues.md` | 新增 | generic 体系专用已修复问题模板 |
| `xts/pass/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_compile/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_runtime/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/regression/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/boundary/.gitkeep` | 新增 | 保留空目录结构（边界用例目录） |

## Coverage Summary

| Generic 方向 | 覆盖点数量 | 首批候选数量 | 主要风险 |
|---|---:|---:|---|
| generic_function | 6 | 5 | 运行时擦除；返回类型推断 |
| generic_class | 6 | 4 | 静态成员不能使用类泛型；运行时擦除 |
| generic_interface | 5 | 4 | 运行时擦除 |
| generic_method | 5 | 3 | 对象方法泛型边界 |
| type_parameter | 5 | 2 | 作用域规则 |
| multiple_type_parameters | 5 | 2 | 独立推断；顺序语义 |
| generic_constraint | 5 | 3 | 支持待确认；运行时检查 |
| default_type_parameter | 5 | 1 | 支持待确认 |
| explicit_type_argument | 5 | 1 | 覆盖推断行为 |
| type_argument_inference | 5 | 2 | union 推断；字面量推断 |
| nested_generic | 5 | 2 | Map 嵌套；深层嵌套 |
| generic_array_object | 5 | 3 | Record/Promise/Map 支持待确认 |
| generic_union_boundary | 4 | 1 | union/intersection/conditional 支持待确认 |
| generic_runtime_erasure | 5 | 3 | 擦除行为；typeof/instanceof |
| generic_shadowing_boundary | 4 | 0 | 遮蔽行为 |
| generic_duplicate_parameter | 4 | 1 | 重复参数名编译错误 |
| module_export_import_boundary | 4 | 2 | 导出/导入边界 |
| typescript_compatibility_boundary | 4 | 1 | TS 兼容状态 |
| arkts_dynamic_boundary | 4 | 2 | 动态/静态差异 |

## Cross Feature Mapping Summary

| 关联章节 | 映射关系 | 后续动作 |
|---|---|---|
| 00_the_basics/types | 泛型参数类型/runtime erasure 归 generic 边界；类型识别归 types | generic 生成擦除边界用例；types 做类型识别 |
| 01_function | 泛型函数/方法语法归 generic；函数调用归 function | generic 生成语法用例；function 做调用 |
| 02_class | 泛型类语法归 generic；class 语义归 class | generic 生成泛型类用例；class 做成员 |
| 03_interface | 泛型接口语法归 generic；interface 语义归 interface | generic 生成泛型接口用例；interface 做签名 |
| 06_module | 泛型 export/import 边界归 generic；模块解析归 module | generic 做边界；module 做解析 |
| typescript_compatibility | 默认参数/union/conditional 边界归 generic；详细差异归 TS compat | generic 做边界；TS compat 做详细 |

## Notes

- 本阶段只做 generic 体系看护设计，不生成 XTS 用例。
- 本章节面向鸿蒙动态 ArkTS，不按静态 ArkTS checker 体系展开。
- Generic 是 function/class/interface/module/TS compatibility 的泛型语法与支持边界入口。
- Generic 在 ECMAScript 运行时中没有原生语义，后续映射重点是 TS/ArkTS compatibility。
- 后续 Generic Stage 1 可生成 P0/P1 XTS 候选。
- 本阶段未提交 commit，未 push 远程仓库。
- 04_generic 已有 5 个子目录（generic_function/generic_class_and_interface/generic_constraints/generic_default/generic_type_and_function），当前为 placeholder，后续可在 Stage 1 填充。
