# Interface Stage 0 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理目录数量 | 1 |
| 02_class 存在状态 | existed |
| 新增/补齐 README 数量 | 1 |
| 新增/补齐 spec_summary 数量 | 1 |
| 新增/补齐 test_design 数量 | 1 |
| 新增/补齐 coverage_matrix 数量 | 1 |
| 新增映射文档数量 | 2 |
| 总覆盖测试点数量 | 88 |
| 首批候选用例数量 | 45 |
| 本次生成 .ets 用例数量 | 0 |

## 02 Class Check

| 检查项 | 结果 | 备注 |
|---|---|---|
| `02_class` 目录是否存在 | 是 | 已存在，包含 .gitkeep 占位文件 |
| 是否修改 `02_class` | 否 | 本阶段不重复处理 class |
| 是否建议回头补 class | 否 | 用户确认 class 已做过 |

## Generated / Updated Files

| 文件 | 操作 | 说明 |
|---|---|---|
| `README.md` | 替换 | 从通用占位替换为 interface 体系定位文档，包含子目录结构表格和看护范围 |
| `spec_summary.md` | 新增 | 19 章节规范摘要，覆盖 interface 声明/属性/方法/可选/readonly/index/call/construct/extends/implements/结构兼容/merging/运行时擦除/TS兼容/ArkTS动态 |
| `test_design.md` | 新增 | 11 章节测试设计，覆盖正向语法/编译负向/运行时边界/结构兼容/class implements/extends/TS兼容/跨特性/回归/test262/XTS策略 |
| `coverage_matrix.md` | 新增 | 88 个测试点覆盖矩阵，覆盖 20 类 interface 方向 × 4-5 测试点 |
| `interface_first_batch_candidate_index.md` | 新增 | 45 个首批候选索引，P0 25/P1 20，所有状态为 planned |
| `interface_to_feature_mapping.md` | 新增 | interface 到 declarations/types/function/class/generic/module/typescript_compatibility 的完整映射，包含 ownership 规则和重复避免规则 |
| `issues/known_issues.md` | 新增 | interface 体系专用已知问题模板 |
| `issues/fixed_issues.md` | 新增 | interface 体系专用已修复问题模板 |
| `xts/pass/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_compile/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_runtime/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/regression/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/boundary/.gitkeep` | 新增 | 保留空目录结构 |

## Coverage Summary

| Interface 方向 | 覆盖点数量 | 首批候选数量 | 主要风险 |
|---|---:|---:|---|
| interface_declaration | 5 | 4 | 声明位置限制待确认 |
| property_signature | 5 | 2 | 编译期检查和运行时擦除待确认 |
| optional_property | 5 | 3 | 运行时检查行为待确认 |
| readonly_property | 5 | 3 | readonly 与 const 区别；运行时可变性 |
| method_signature | 5 | 3 | 方法签名与函数类型映射 |
| optional_method | 4 | 1 | 可选方法运行时行为 |
| interface_extends | 4 | 3 | 循环继承检测 |
| multiple_extends | 4 | 2 | 冲突成员处理 |
| class_implements | 5 | 3 | 缺少成员编译错误；运行时无关系 |
| structural_typing | 5 | 3 | excess property；运行时检查 |
| index_signature | 4 | 2 | 支持状态待确认 |
| call_signature | 4 | 1 | 支持状态待确认 |
| construct_signature | 4 | 1 | 支持状态待确认 |
| interface_merging | 4 | 2 | 支持状态待确认 |
| duplicate_member | 4 | 1 | 类型冲突处理 |
| runtime_erasure | 5 | 3 | 擦除行为待确认 |
| generic_interface_boundary | 4 | 1 | 支持状态待确认 |
| module_export_import_boundary | 4 | 2 | 导出/导入边界 |
| typescript_compatibility_boundary | 4 | 1 | TS 兼容状态 |
| arkts_dynamic_boundary | 4 | 2 | 动态/静态差异 |

## Cross Feature Mapping Summary

| 关联章节 | 映射关系 | 后续动作 |
|---|---|---|
| 00_the_basics/declarations | interface 声明位置/merging 归 interface；声明绑定归 declarations | interface 生成声明语法用例；declarations 做绑定 |
| 00_the_basics/types | 属性类型/runtime erasure 归 interface 边界；类型识别归 types | interface 生成擦除边界用例；types 做类型识别 |
| 01_function | 方法签名/call signature 归 interface；函数调用归 function | interface 生成签名用例；function 做调用 |
| 02_class | class implements 归 interface/class 交叉；class 语义归 class | interface 生成 implements 用例；class 做成员 |
| 04_generic | generic interface 边界归 interface；泛型规则归 generic | interface 做边界；generic 做泛型 |
| 06_module | interface export/import 边界归 interface；模块解析归 module | interface 做边界；module 做解析 |
| typescript_compatibility | index/call/construct/merging 边界归 interface；详细差异归 TS compat | interface 做边界；TS compat 做详细 |

## Notes

- 本阶段只做 interface 体系看护设计，不生成 XTS 用例。
- 本章节面向鸿蒙动态 ArkTS，不按静态 ArkTS checker 体系展开。
- 02_class 已按用户判断在前序阶段处理，本阶段不重复处理。
- 03_interface 是 class/generic/module/TS compatibility 的接口语法与支持边界入口。
- interface 在 ECMAScript 运行时中没有原生语义，后续映射重点是 TS/ArkTS compatibility。
- 后续 Interface Stage 1 可生成 P0/P1 XTS 候选。
- 本阶段未提交 commit，未 push 远程仓库。
- 03_interface 已有 3 个子目录（interface_property/interface_inheritance/abstract_class_and_interface），当前为 placeholder，后续可在 Stage 1 填充。
