# Module Stage 0 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理目录数量 | 1 |
| 新增/补齐 README 数量 | 1 |
| 新增/补齐 spec_summary 数量 | 1 |
| 新增/补齐 test_design 数量 | 1 |
| 新增/补齐 coverage_matrix 数量 | 1 |
| 新增映射文档数量 | 2 |
| 总覆盖测试点数量 | 100 |
| 首批候选用例数量 | 50 |
| 本次生成 .ets 用例数量 | 0 |

## Generated / Updated Files

| 文件 | 操作 | 说明 |
|---|---|---|
| `README.md` | 替换 | 从通用占位替换为 module 体系定位文档，包含子目录结构和看护范围 |
| `spec_summary.md` | 新增 | 24 章节规范摘要，覆盖模块作用域/named export/default export/export list/export rename/named import/default import/namespace import/side-effect import/re-export/export star/export star as namespace/live binding/circular dependency/dynamic import/TLA/type-only import-export/duplicate export/missing export/ambiguous export/路径解析/运行时异常/编译负向/待确认 |
| `test_design.md` | 新增 | 16 章节测试设计，覆盖正向语法/正向运行时/编译负向/运行时异常/named export-import/default export-import/namespace/re-export/live binding/circular dependency/type-only/dynamic import-TLA/跨特性/回归/test262/XTS策略 |
| `coverage_matrix.md` | 新增 | 100 个测试点覆盖矩阵，覆盖 24 类 module 方向 × 4-5 测试点 |
| `module_first_batch_candidate_index.md` | 新增 | 50 个首批候选索引，P0 30/P1 20，所有状态为 planned |
| `module_to_feature_mapping.md` | 新增 | module 到 declarations/types/function/class/interface/generic/null_safety/typescript_compatibility 的完整映射 |
| `issues/known_issues.md` | 新增 | module 体系专用已知问题模板 |
| `issues/fixed_issues.md` | 新增 | module 体系专用已修复问题模板 |
| `xts/pass/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_compile/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_runtime/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/regression/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/boundary/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/helpers/.gitkeep` | 新增 | 保留空目录结构（跨文件 helper 模块） |

## Coverage Summary

| Module 方向 | 覆盖点数量 | 首批候选数量 | 主要风险 |
|---|---:|---:|---|
| module_scope | 5 | 3 | 低风险，ES 核心行为 |
| named_export | 5 | 5 | export interface/generic 类型层导出 |
| default_export | 5 | 3 | 重复 default SyntaxError |
| export_list | 5 | 2 | 重复导出检测 |
| export_rename | 5 | 2 | 重命名不存在检测 |
| named_import | 5 | 3 | missing export SyntaxError |
| default_import | 5 | 2 | missing default 边界 |
| namespace_import | 5 | 3 | 只读 TypeError；支持待确认 |
| import_rename | 5 | 1 | 重命名不存在检测 |
| side_effect_import | 5 | 2 | 执行顺序；多次执行 |
| re_export_named | 5 | 2 | 支持待确认 |
| export_star | 5 | 2 | 冲突 ambiguous；支持待确认 |
| export_star_as_namespace | 4 | 1 | ES2020 支持待确认 |
| live_binding | 5 | 3 | live binding 支持待确认 |
| circular_dependency | 5 | 3 | 初始化顺序；class TDZ |
| dynamic_import_boundary | 4 | 1 | ES2020 支持待确认 |
| top_level_await_boundary | 4 | 1 | ES2022 支持待确认 |
| type_only_import_export_boundary | 5 | 3 | TS 特性支持待确认 |
| duplicate_export | 5 | 2 | SyntaxError 检测 |
| missing_export | 5 | 1 | SyntaxError 检测 |
| ambiguous_export | 5 | 0 | ambiguous 检测 |
| module_path_resolution | 5 | 2 | 路径解析规则待确认 |
| typescript_compatibility_boundary | 4 | 1 | TS 兼容状态 |
| arkts_dynamic_boundary | 4 | 2 | 动态/静态差异 |

## Cross Feature Mapping Summary

| 关联章节 | 映射关系 | 后续动作 |
|---|---|---|
| 00_the_basics/declarations | 模块作用域/绑定归 module；声明绑定归 declarations | module 生成模块隔离用例；declarations 做绑定 |
| 00_the_basics/types | namespace import 归 module；类型识别归 types | module 生成 namespace 用例；types 做类型识别 |
| 01_function | export/import function 归 module 边界；函数调用归 function | module 做模块边界；function 做调用 |
| 02_class | export/import class 归 module 边界；class 语义归 class | module 做模块边界；class 做成员 |
| 03_interface | export/import interface 归 module 边界；interface 语义归 interface | module 做模块边界；interface 做签名 |
| 04_generic | export/import generic 归 module 边界；泛型规则归 generic | module 做模块边界；generic 做泛型 |
| 05_null_safety | 模块初始化 undefined 归 module 场景；null safety 归 null_safety | module 做场景；null_safety 做空值安全 |
| typescript_compatibility | type-only 边界归 module；详细差异归 TS compat | module 做边界；TS compat 做详细 |

## Notes

- 本阶段只做 module 体系看护设计，不生成 XTS 用例。
- 本章节面向鸿蒙动态 ArkTS，不按静态 ArkTS checker 体系展开。
- Module 是 declarations/function/class/interface/generic/null_safety/TS compatibility 的跨文件绑定与模块系统入口。
- ES module 是 ECMAScript 原生语言能力，有真实运行时语义（模块链接、执行、live binding）。
- 后续 Module Stage 1 可生成 P0/P1 XTS 候选。
- 本阶段未提交 commit，未 push 远程仓库。
- 06_module 已有 3 个子目录（export/import/top_level_statement），当前为 placeholder，后续可在 Stage 1 填充。
- module 测试通常需要多文件 helper 模块（`xts/helpers/` 目录已创建）。
