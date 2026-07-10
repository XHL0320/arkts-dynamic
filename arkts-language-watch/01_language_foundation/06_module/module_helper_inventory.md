# Module Helper Inventory

## Summary

| 项目 | 数量 |
|---|---:|
| helper 文件总数 | 10 |
| 被主用例引用的 helper 数量 | 10 |
| 疑似未引用 helper 数量 | 0 |
| 主用例总数 | 23 |
| 存在 helper 依赖的主用例数量 | 15 |
| 疑似 import 路径风险数量 | 2 |

## Helper Directory Summary

| Helper 目录 | 文件数量 | 主要用途 |
|---|---:|---|
| `xts/helpers/named_export/` | 1 | named export/import、namespace import、scope isolation |
| `xts/helpers/default_export/` | 2 | default export value/function |
| `xts/helpers/re_export/` | 2 | re-export source 和转发、export star |
| `xts/helpers/side_effect/` | 1 | side-effect import |
| `xts/helpers/live_binding/` | 1 | live binding |
| `xts/helpers/circular/` | 2 | circular dependency (A↔B) |
| `xts/helpers/type_only/` | 1 | type-only/interface/generic export |

## Main Case To Helper Mapping

| 主用例文件 | 引用 helper 文件 | import 形式 | 是否存在 | 备注 |
|---|---|---|---|---|
| `module_named_export_import_pass.ets` | `helpers/named_export/module_named_export_helper.ets` | named import | 是 | 相对路径 |
| `module_default_export_value_pass.ets` | `helpers/default_export/module_default_value_helper.ets` | default import | 是 | 相对路径 |
| `module_default_export_function_pass.ets` | `helpers/default_export/module_default_function_helper.ets` | default import | 是 | 相对路径 |
| `module_export_list_pass.ets` | `helpers/re_export/module_re_export_source_helper.ets` | named import | 是 | 相对路径 |
| `module_export_rename_pass.ets` | `helpers/re_export/module_re_export_named_helper.ets` | named import (renamed) | 是 | 相对路径 |
| `module_namespace_import_pass.ets` | `helpers/named_export/module_named_export_helper.ets` | namespace import | 是 | 相对路径 |
| `module_side_effect_import_pass.ets` | `helpers/side_effect/module_side_effect_helper.ets` | side-effect + named | 是 | 相对路径 |
| `module_live_binding_update_pass.ets` | `helpers/live_binding/module_live_binding_helper.ets` | named import | 是 | 相对路径 |
| `module_scope_isolation_pass.ets` | `helpers/named_export/module_named_export_helper.ets` | named import | 是 | 相对路径 |
| `module_re_export_named_pass.ets` | `helpers/re_export/module_re_export_named_helper.ets` | named import | 是 | 相对路径 |
| `module_namespace_import_mutation_boundary.ets` | `helpers/named_export/module_named_export_helper.ets` | namespace import | 是 | 相对路径 |
| `module_export_star_boundary.ets` | `helpers/re_export/module_re_export_named_helper.ets` | namespace import | 是 | 相对路径 |
| `module_imported_binding_assignment_boundary.ets` | `helpers/live_binding/module_live_binding_helper.ets` | named import | 是 | 相对路径 |
| `module_circular_dependency_basic_boundary.ets` | `helpers/circular/module_circular_a_helper.ets` | named import | 是 | 相对路径 |
| `module_circular_initialization_boundary.ets` | `helpers/circular/module_circular_b_helper.ets` | named import | 是 | 相对路径 |
| `module_dynamic_import_boundary.ets` | `helpers/named_export/module_named_export_helper.ets` | named import (static) | 是 | 使用 static import 作为 reference |
| `module_type_only_import_boundary.ets` | `helpers/type_only/module_type_only_helper.ets` | named import (mixed) | 是 | 相对路径 |
| `module_side_effect_import_regression.ets` | `helpers/side_effect/module_side_effect_helper.ets` | side-effect + named | 是 | 相对路径 |

## Helper To Main Case Mapping

| helper 文件 | 被引用主用例 | 是否疑似孤儿 helper | 备注 |
|---|---|---|---|
| `named_export/module_named_export_helper.ets` | #1, #6, #9, #11, #20 | 否 | 核心 helper，被 5 个主用例引用 |
| `default_export/module_default_value_helper.ets` | #2 | 否 | 被 1 个主用例引用 |
| `default_export/module_default_function_helper.ets` | #3 | 否 | 被 1 个主用例引用 |
| `re_export/module_re_export_source_helper.ets` | #4, #5 (间接), #10 (间接), #12 (间接), #13 (间接) | 否 | 通过 re_export_named_helper 间接引用 |
| `re_export/module_re_export_named_helper.ets` | #5, #10, #12, #13 | 否 | 被 4 个主用例引用 |
| `side_effect/module_side_effect_helper.ets` | #7, #23 | 否 | 被 2 个主用例引用 |
| `live_binding/module_live_binding_helper.ets` | #8, #14 | 否 | 被 2 个主用例引用 |
| `circular/module_circular_a_helper.ets` | #16, #17 (间接) | 否 | 互相引用 B |
| `circular/module_circular_b_helper.ets` | #17, #16 (间接) | 否 | 互相引用 A |
| `type_only/module_type_only_helper.ets` | #22 | 否 | 被 1 个主用例引用 |

## Import Path Risk

| 主用例文件 | import 路径 | 疑似问题 | 建议 |
|---|---|---|---|
| 所有主用例 | `../helpers/xxx/yyy` | 是否需要 `.ets` 扩展名不确定 | 后续 hvigor 编译验证确认 |
| `module_re_export_named_helper.ets` | `from '../re_export/module_re_export_source_helper'` | re-export helper 内部 import 路径相对深度 | 后续验证路径解析 |

## Notes

- 本阶段只做静态文件关系核查，不执行编译验证。
- import 路径是否最终可被 ArkTS 工程解析，需要后续 DevEco / hvigor 验证。
- 所有 10 个 helper 文件均有明确的主用例引用，无孤儿 helper。
- circular helper A↔B 互相引用已标记清楚。
- type-only helper 被 boundary 主用例引用，用途明确。
- re_export_source_helper 通过 re_export_named_helper 间接被多个主用例使用。
