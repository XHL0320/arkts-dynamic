# Module First Batch Candidate Index

## Summary

| 项目 | 数量 |
|---|---:|
| 首批候选数量 | 50 |
| P0 候选数量 | 30 |
| P1 候选数量 | 20 |
| P2 候选数量 | 0 |
| ohosTest 适用候选 | 35 |
| 需要 test262 对照候选 | 25 |

## Candidate List

| Candidate ID | Module 方向 | Test Point | Case Type | Priority | Suggested File Path | Suitable for ohosTest | Needs test262 | Related Chapter | Status | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| MOD-CAND-001 | module_scope | 模块作用域隔离 | integration | P0 | `06_module/xts/pass/module_scope_isolation_pass.ets` | yes | yes | module / declarations | planned | ES 核心行为 |
| MOD-CAND-002 | module_scope | 顶层 this 为 undefined | integration | P0 | `06_module/xts/pass/module_top_this_undefined_pass.ets` | yes | yes | module | planned | ES 核心行为 |
| MOD-CAND-003 | named_export | export const | integration | P0 | `06_module/xts/pass/export_const_pass.ets` | yes | yes | module / declarations | planned | ES 核心行为 |
| MOD-CAND-004 | named_export | export function | integration | P0 | `06_module/xts/pass/export_function_pass.ets` | yes | yes | module / function | planned | ES 核心行为 |
| MOD-CAND-005 | named_export | export class | integration | P0 | `06_module/xts/pass/export_class_pass.ets` | yes | yes | module / class | planned | ES 核心行为 |
| MOD-CAND-006 | named_export | export interface 边界 | boundary | P0 | `06_module/xts/boundary/export_interface_boundary.ets` | yes | no | module / interface | planned | 类型层导出 |
| MOD-CAND-007 | default_export | default export value | integration | P0 | `06_module/xts/pass/default_export_value_pass.ets` | yes | yes | module | planned | ES 核心行为 |
| MOD-CAND-008 | default_export | default export function | integration | P0 | `06_module/xts/pass/default_export_function_pass.ets` | yes | yes | module / function | planned | ES 核心行为 |
| MOD-CAND-009 | default_export | 重复 default fail_compile | fail_compile | P0 | `06_module/xts/fail_compile/duplicate_default_fail_compile.ets` | no | yes | module | planned | SyntaxError |
| MOD-CAND-010 | export_list | export list | integration | P0 | `06_module/xts/pass/export_list_pass.ets` | yes | yes | module | planned | ES 核心行为 |
| MOD-CAND-011 | export_rename | export rename | integration | P0 | `06_module/xts/pass/export_rename_pass.ets` | yes | yes | module | planned | ES 核心行为 |
| MOD-CAND-012 | named_import | import named | integration | P0 | `06_module/xts/pass/import_named_pass.ets` | yes | yes | module / declarations | planned | ES 核心行为 |
| MOD-CAND-013 | named_import | missing export fail_compile | fail_compile | P0 | `06_module/xts/fail_compile/import_missing_export_fail_compile.ets` | no | yes | module | planned | SyntaxError |
| MOD-CAND-014 | default_import | import default | integration | P0 | `06_module/xts/pass/import_default_pass.ets` | yes | yes | module | planned | ES 核心行为 |
| MOD-CAND-015 | default_import | import default + named | integration | P0 | `06_module/xts/pass/import_default_named_pass.ets` | yes | yes | module | planned | 混合导入 |
| MOD-CAND-016 | namespace_import | import * as ns | integration | P0 | `06_module/xts/pass/import_namespace_pass.ets` | yes | yes | module / types | planned | ES 核心行为 |
| MOD-CAND-017 | namespace_import | namespace 只读 TypeError | fail_runtime | P0 | `06_module/xts/fail_runtime/namespace_readonly_fail_runtime.ets` | yes | yes | module | planned | TypeError |
| MOD-CAND-018 | import_rename | import rename | integration | P0 | `06_module/xts/pass/import_rename_pass.ets` | yes | yes | module | planned | ES 核心行为 |
| MOD-CAND-019 | side_effect_import | side-effect import | integration | P0 | `06_module/xts/pass/side_effect_import_pass.ets` | yes | yes | module / statements | planned | ES 核心行为 |
| MOD-CAND-020 | re_export_named | re-export named | integration | P0 | `06_module/xts/pass/re_export_named_pass.ets` | yes | yes | module | planned | ES 核心行为 |
| MOD-CAND-021 | export_star | export * from | integration | P0 | `06_module/xts/pass/export_star_pass.ets` | yes | yes | module | planned | ES 核心行为 |
| MOD-CAND-022 | export_star_as_namespace | export * as ns | boundary | P0 | `06_module/xts/boundary/export_star_as_namespace_boundary.ets` | yes | no | module | planned | ES2020 |
| MOD-CAND-023 | live_binding | export let 修改后可见 | integration | P0 | `06_module/xts/pass/live_binding_let_pass.ets` | yes | yes | module / declarations | planned | live binding |
| MOD-CAND-024 | live_binding | live binding 支持边界 | boundary | P0 | `06_module/xts/boundary/live_binding_boundary.ets` | yes | no | module / declarations | planned | 支持待确认 |
| MOD-CAND-025 | circular_dependency | 循环依赖基础 | boundary | P0 | `06_module/xts/boundary/circular_dependency_basic_boundary.ets` | yes | yes | module | planned | 循环依赖 |
| MOD-CAND-026 | circular_dependency | 初始化顺序 | boundary | P0 | `06_module/xts/boundary/circular_dependency_init_order_boundary.ets` | yes | yes | module | planned | 初始化顺序 |
| MOD-CAND-027 | dynamic_import_boundary | dynamic import 支持 | boundary | P0 | `06_module/xts/boundary/dynamic_import_boundary.ets` | yes | no | module | planned | ES2020 |
| MOD-CAND-028 | top_level_await_boundary | top-level await 支持 | boundary | P0 | `06_module/xts/boundary/top_level_await_boundary.ets` | yes | no | module | planned | ES2022 |
| MOD-CAND-029 | type_only_import_export_boundary | import type 支持 | boundary | P0 | `06_module/xts/boundary/import_type_boundary.ets` | yes | no | module / typescript | planned | TS 特性 |
| MOD-CAND-030 | type_only_import_export_boundary | export type 支持 | boundary | P0 | `06_module/xts/boundary/export_type_boundary.ets` | yes | no | module / typescript | planned | TS 特性 |
| MOD-CAND-031 | duplicate_export | 重复 named fail_compile | fail_compile | P0 | `06_module/xts/fail_compile/duplicate_named_export_fail_compile.ets` | no | yes | module | planned | SyntaxError |
| MOD-CAND-032 | missing_export | import 不存在 named | fail_compile | P0 | `06_module/xts/fail_compile/missing_named_export_fail_compile.ets` | no | yes | module | planned | SyntaxError |
| MOD-CAND-033 | typescript_compatibility_boundary | TS module 兼容 | boundary | P0 | `06_module/xts/boundary/ts_module_compatibility_boundary.ets` | yes | no | module / typescript | planned | 兼容状态 |
| MOD-CAND-034 | arkts_dynamic_boundary | 动态 ArkTS module 支持 | boundary | P0 | `06_module/xts/boundary/arkts_module_support_boundary.ets` | yes | no | module | planned | 支持状态 |
| MOD-CAND-035 | arkts_dynamic_boundary | 动态与静态差异 | boundary | P0 | `06_module/xts/boundary/arkts_dynamic_vs_static_boundary.ets` | yes | no | module | planned | 动态/静态 |
| MOD-CAND-036 | module_path_resolution | 相对路径解析 | boundary | P0 | `06_module/xts/boundary/relative_path_boundary.ets` | yes | no | module | planned | 路径解析 |
| MOD-CAND-037 | module_path_resolution | 文件扩展名 | boundary | P0 | `06_module/xts/boundary/extension_boundary.ets` | yes | no | module | planned | 扩展名 |
| MOD-CAND-038 | named_export | export generic function 边界 | boundary | P1 | `06_module/xts/boundary/export_generic_boundary.ets` | yes | no | module / generic | planned | 类型层导出 |
| MOD-CAND-039 | export_list | export list 重复 fail_compile | fail_compile | P1 | `06_module/xts/fail_compile/export_list_duplicate_fail_compile.ets` | no | no | module | planned | SyntaxError |
| MOD-CAND-040 | export_rename | export as default | integration | P1 | `06_module/xts/pass/export_as_default_pass.ets` | yes | yes | module | planned | as default |
| MOD-CAND-041 | named_import | 同名 import fail_compile | fail_compile | P1 | `06_module/xts/fail_compile/import_duplicate_name_fail_compile.ets` | no | no | module | planned | SyntaxError |
| MOD-CAND-042 | namespace_import | namespace 包含 default | integration | P1 | `06_module/xts/pass/namespace_default_pass.ets` | yes | yes | module | planned | ns.default |
| MOD-CAND-043 | side_effect_import | side-effect 不导入绑定 | integration | P1 | `06_module/xts/pass/side_effect_no_binding_pass.ets` | yes | yes | module | planned | 不导入 |
| MOD-CAND-044 | re_export_named | re-export rename | integration | P1 | `06_module/xts/pass/re_export_rename_pass.ets` | yes | yes | module | planned | 重命名 |
| MOD-CAND-045 | export_star | export * 不转发 default | integration | P1 | `06_module/xts/pass/export_star_no_default_pass.ets` | yes | yes | module | planned | 不转发 |
| MOD-CAND-046 | live_binding | export const 引用不变 | integration | P1 | `06_module/xts/pass/live_binding_const_pass.ets` | yes | yes | module | planned | 引用稳定 |
| MOD-CAND-047 | circular_dependency | 未初始化 undefined | boundary | P1 | `06_module/xts/boundary/circular_dependency_undefined_boundary.ets` | yes | no | module / null_safety | planned | undefined |
| MOD-CAND-048 | type_only_import_export_boundary | type-only 运行时擦除 | boundary | P1 | `06_module/xts/boundary/type_only_erasure_boundary.ets` | yes | no | module / types | planned | 擦除 |
| MOD-CAND-049 | duplicate_export | export * 与 named 冲突 | boundary | P1 | `06_module/xts/boundary/export_star_named_conflict_boundary.ets` | yes | no | module | planned | 冲突 |
| MOD-CAND-050 | module_scope | 模块自动严格模式 | integration | P1 | `06_module/xts/pass/module_strict_mode_pass.ets` | yes | yes | module | planned | 严格模式 |

## Stage 1 Update Summary

Stage 1 生成了 33 个 `.ets` 文件（10 helper + 10 pass + 12 boundary + 1 regression），对应 23 个 candidate 标记为 created，27 个保持 planned。

### Created Candidates (23)

| Candidate ID | 实际路径 |
|---|---|
| MOD-CAND-001 | `xts/pass/module_scope_isolation_pass.ets` |
| MOD-CAND-003 | `xts/pass/module_named_export_import_pass.ets` |
| MOD-CAND-004 | `xts/pass/module_named_export_import_pass.ets` |
| MOD-CAND-005 | `xts/pass/module_named_export_import_pass.ets` |
| MOD-CAND-007 | `xts/pass/module_default_export_value_pass.ets` |
| MOD-CAND-008 | `xts/pass/module_default_export_function_pass.ets` |
| MOD-CAND-010 | `xts/pass/module_export_list_pass.ets` |
| MOD-CAND-011 | `xts/pass/module_export_rename_pass.ets` |
| MOD-CAND-012 | `xts/pass/module_named_export_import_pass.ets` |
| MOD-CAND-016 | `xts/pass/module_namespace_import_pass.ets` |
| MOD-CAND-017 | `xts/boundary/module_namespace_import_mutation_boundary.ets` |
| MOD-CAND-019 | `xts/pass/module_side_effect_import_pass.ets` |
| MOD-CAND-020 | `xts/pass/module_re_export_named_pass.ets` |
| MOD-CAND-021 | `xts/boundary/module_export_star_boundary.ets` |
| MOD-CAND-022 | `xts/boundary/module_export_star_as_namespace_boundary.ets` |
| MOD-CAND-023 | `xts/pass/module_live_binding_update_pass.ets` |
| MOD-CAND-024 | `xts/boundary/module_imported_binding_assignment_boundary.ets` |
| MOD-CAND-025 | `xts/boundary/module_circular_dependency_basic_boundary.ets` |
| MOD-CAND-026 | `xts/boundary/module_circular_initialization_boundary.ets` |
| MOD-CAND-027 | `xts/boundary/module_dynamic_import_boundary.ets` |
| MOD-CAND-028 | `xts/boundary/module_top_level_await_boundary.ets` |
| MOD-CAND-029 | `xts/boundary/module_type_only_import_boundary.ets` |
| MOD-CAND-032 | `xts/boundary/module_missing_export_boundary.ets` |

### Additional Files Without Direct Candidate

| 文件 | 类型 |
|---|---|
| `xts/boundary/module_duplicate_export_boundary.ets` | boundary |
| `xts/boundary/module_top_level_this_boundary.ets` | boundary |
| `xts/regression/module_side_effect_import_regression.ets` | regression |
| 10 个 helper 文件 | helper |
