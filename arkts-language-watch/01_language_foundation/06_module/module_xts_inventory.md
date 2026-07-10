# Module XTS Inventory

## Summary

| 项目 | 数量 |
|---|---:|
| .ets 文件总数 | 33 |
| 主用例文件数量 | 23 |
| helper 文件数量 | 10 |
| pass 主用例数量 | 10 |
| fail_compile 主用例数量 | 0 |
| fail_runtime 主用例数量 | 0 |
| boundary 主用例数量 | 12 |
| regression 主用例数量 | 1 |

## Inventory By Type

| 用例类型 | 数量 | 目录 |
|---|---:|---|
| pass | 10 | `xts/pass/` |
| fail_compile | 0 | `xts/fail_compile/` |
| fail_runtime | 0 | `xts/fail_runtime/` |
| boundary | 12 | `xts/boundary/` |
| regression | 1 | `xts/regression/` |
| helper | 10 | `xts/helpers/` |

## Module Direction Summary

| Module 方向 | pass | fail_compile | fail_runtime | boundary | regression | helper | 合计 |
|---|---:|---:|---:|---:|---:|---:|---:|
| module_scope | 1 | 0 | 0 | 2 | 0 | 0 | 3 |
| named_export | 1 | 0 | 0 | 0 | 0 | 1 | 2 |
| default_export | 2 | 0 | 0 | 0 | 0 | 2 | 4 |
| export_list | 1 | 0 | 0 | 0 | 0 | 0 | 1 |
| export_rename | 1 | 0 | 0 | 0 | 0 | 0 | 1 |
| named_import | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| default_import | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| namespace_import | 1 | 0 | 0 | 1 | 0 | 0 | 2 |
| import_rename | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| side_effect_import | 1 | 0 | 0 | 0 | 1 | 1 | 3 |
| re_export_named | 1 | 0 | 0 | 0 | 0 | 2 | 3 |
| export_star | 0 | 0 | 0 | 1 | 0 | 0 | 1 |
| export_star_as_namespace | 0 | 0 | 0 | 1 | 0 | 0 | 1 |
| live_binding | 1 | 0 | 0 | 1 | 0 | 1 | 3 |
| circular_dependency | 0 | 0 | 0 | 2 | 0 | 2 | 4 |
| dynamic_import_boundary | 0 | 0 | 0 | 1 | 0 | 0 | 1 |
| top_level_await_boundary | 0 | 0 | 0 | 1 | 0 | 0 | 1 |
| type_only_import_export_boundary | 0 | 0 | 0 | 1 | 0 | 1 | 2 |
| duplicate_export | 0 | 0 | 0 | 1 | 0 | 0 | 1 |
| missing_export | 0 | 0 | 0 | 1 | 0 | 0 | 1 |
| ambiguous_export | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| module_path_resolution | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| typescript_compatibility_boundary | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| arkts_dynamic_boundary | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

## Main Case List

| 序号 | 文件路径 | 用例类型 | Module 方向 | 推测测试点 | 所属阶段 | 备注 |
|---|---|---|---|---|---|---|
| 1 | `xts/pass/module_named_export_import_pass.ets` | pass | named_export/named_import | named export+import | Stage 1 | ES 核心行为 |
| 2 | `xts/pass/module_default_export_value_pass.ets` | pass | default_export | default export value | Stage 1 | ES 核心行为 |
| 3 | `xts/pass/module_default_export_function_pass.ets` | pass | default_export | default export function | Stage 1 | ES 核心行为 |
| 4 | `xts/pass/module_export_list_pass.ets` | pass | export_list | export list | Stage 1 | ES 核心行为 |
| 5 | `xts/pass/module_export_rename_pass.ets` | pass | export_rename | export rename | Stage 1 | ES 核心行为 |
| 6 | `xts/pass/module_namespace_import_pass.ets` | pass | namespace_import | namespace import | Stage 1 | ES 核心行为 |
| 7 | `xts/pass/module_side_effect_import_pass.ets` | pass | side_effect_import | side-effect import | Stage 1 | ES 核心行为 |
| 8 | `xts/pass/module_live_binding_update_pass.ets` | pass | live_binding | live binding update | Stage 1 | ES 核心行为 |
| 9 | `xts/pass/module_scope_isolation_pass.ets` | pass | module_scope | scope isolation | Stage 1 | ES 核心行为 |
| 10 | `xts/pass/module_re_export_named_pass.ets` | pass | re_export_named | re-export named | Stage 1 | ES 核心行为 |
| 11 | `xts/boundary/module_namespace_import_mutation_boundary.ets` | boundary | namespace_import | namespace mutation | Stage 1 | 只读待确认 |
| 12 | `xts/boundary/module_export_star_boundary.ets` | boundary | export_star | export * | Stage 1 | 支持待确认 |
| 13 | `xts/boundary/module_export_star_as_namespace_boundary.ets` | boundary | export_star_as_namespace | export * as ns | Stage 1 | ES2020 |
| 14 | `xts/boundary/module_imported_binding_assignment_boundary.ets` | boundary | live_binding | imported binding assign | Stage 1 | 只读待确认 |
| 15 | `xts/boundary/module_top_level_this_boundary.ets` | boundary | module_scope | top-level this | Stage 1 | undefined 待确认 |
| 16 | `xts/boundary/module_circular_dependency_basic_boundary.ets` | boundary | circular_dependency | circular basic | Stage 1 | 初始化顺序 |
| 17 | `xts/boundary/module_circular_initialization_boundary.ets` | boundary | circular_dependency | circular init order | Stage 1 | 未初始化边界 |
| 18 | `xts/boundary/module_missing_export_boundary.ets` | boundary | missing_export | missing export | Stage 1 | 检测方式待确认 |
| 19 | `xts/boundary/module_duplicate_export_boundary.ets` | boundary | duplicate_export | duplicate export | Stage 1 | 检测方式待确认 |
| 20 | `xts/boundary/module_dynamic_import_boundary.ets` | boundary | dynamic_import_boundary | dynamic import | Stage 1 | ES2020 |
| 21 | `xts/boundary/module_top_level_await_boundary.ets` | boundary | top_level_await_boundary | top-level await | Stage 1 | ES2022 |
| 22 | `xts/boundary/module_type_only_import_boundary.ets` | boundary | type_only_import_export_boundary | type-only import | Stage 1 | TS 特性 |
| 23 | `xts/regression/module_side_effect_import_regression.ets` | regression | side_effect_import | side-effect regression | Stage 1 | 回归验证 |

## Helper File List

| 序号 | 文件路径 | Helper 方向 | 被哪些主用例使用 | 备注 |
|---|---|---|---|---|
| 1 | `xts/helpers/named_export/module_named_export_helper.ets` | named export | #1, #6, #9, #20 | 核心 helper |
| 2 | `xts/helpers/default_export/module_default_value_helper.ets` | default export | #2 | default value |
| 3 | `xts/helpers/default_export/module_default_function_helper.ets` | default export | #3 | default function |
| 4 | `xts/helpers/re_export/module_re_export_source_helper.ets` | re-export source | #4, #5, #10, #12, #13 | re-export 源 |
| 5 | `xts/helpers/re_export/module_re_export_named_helper.ets` | re-export forward | #5, #10, #12, #13 | re-export 转发 |
| 6 | `xts/helpers/side_effect/module_side_effect_helper.ets` | side-effect | #7, #23 | 副作用模块 |
| 7 | `xts/helpers/live_binding/module_live_binding_helper.ets` | live binding | #8, #14 | live binding |
| 8 | `xts/helpers/circular/module_circular_a_helper.ets` | circular A | #16, #17 | 循环依赖 A |
| 9 | `xts/helpers/circular/module_circular_b_helper.ets` | circular B | #16, #17 | 循环依赖 B |
| 10 | `xts/helpers/type_only/module_type_only_helper.ets` | type-only | #22 | 类型层导出 |
