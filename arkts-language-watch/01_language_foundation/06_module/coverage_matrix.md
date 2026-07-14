# Module Coverage Matrix

| Coverage ID | Module 方向 | 测试点 | 用例类型 | 优先级 | Coverage Status | Case ID | Actual Path | Validation Status | Helper ID | 关联章节 | 风险点 | 备注 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| MOD-SCOPE-001 | module_scope | 模块作用域隔离 | integration | P0 | generated | MODULE-PASS-009 | `06_module/xts/pass/module_scope_isolation_pass.ets` | validation_pending | MODULE-HELP-006 | module / declarations | 低 | ES 核心行为 |
| MOD-SCOPE-002 | module_scope | 模块自动严格模式 | integration | P0 | no | `06_module/xts/pass/module_strict_mode_pass` | module | 低 | ES 核心行为 |
| MOD-SCOPE-003 | module_scope | 顶层 this 为 undefined | integration | P0 | no | `06_module/xts/pass/module_top_this_undefined_pass` | module | 低 | ES 核心行为 |
| MOD-SCOPE-004 | module_scope | 模块顶层声明隔离 | integration | P1 | no | `06_module/xts/pass/module_decl_isolation_pass` | module / declarations | 低 | 隔离 |
| MOD-SCOPE-005 | module_scope | 模块作用域嵌套 | integration | P2 | no | `06_module/xts/pass/module_nested_scope_pass` | module / declarations | 低 | 嵌套 |
| MOD-NE-001 | named_export | export const | integration | P0 | no | `06_module/xts/pass/export_const_pass` | module / declarations | 低 | ES 核心行为 |
| MOD-NE-002 | named_export | export function | integration | P0 | no | `06_module/xts/pass/export_function_pass` | module / function | 低 | ES 核心行为 |
| MOD-NE-003 | named_export | export class | integration | P0 | no | `06_module/xts/pass/export_class_pass` | module / class | 低 | ES 核心行为 |
| MOD-NE-004 | named_export | export interface 边界 | boundary | P0 | no | `06_module/xts/boundary/export_interface_boundary` | module / interface | 高 | 类型层导出 |
| MOD-NE-005 | named_export | export generic function 边界 | boundary | P1 | no | `06_module/xts/boundary/export_generic_boundary` | module / generic | 高 | 类型层导出 |
| MOD-DE-001 | default_export | default export value | integration | P0 | no | `06_module/xts/pass/default_export_value_pass` | module | 低 | ES 核心行为 |
| MOD-DE-002 | default_export | default export function | integration | P0 | no | `06_module/xts/pass/default_export_function_pass` | module / function | 低 | ES 核心行为 |
| MOD-DE-003 | default_export | default export class | integration | P0 | no | `06_module/xts/pass/default_export_class_pass` | module / class | 低 | ES 核心行为 |
| MOD-DE-004 | default_export | 重复 default export fail_compile | fail_compile | P0 | no | `06_module/xts/fail_compile/duplicate_default_export_fail_compile` | module | 中 | SyntaxError |
| MOD-DE-005 | default_export | default + named 混合导出 | integration | P1 | no | `06_module/xts/pass/default_named_mixed_pass` | module | 低 | 混合 |
| MOD-EL-001 | export_list | export list 多导出 | integration | P0 | no | `06_module/xts/pass/export_list_pass` | module | 低 | ES 核心行为 |
| MOD-EL-002 | export_list | export list 空 | boundary | P2 | no | `06_module/xts/boundary/export_list_empty_boundary` | module | 低 | 空列表 |
| MOD-EL-003 | export_list | export list 与声明导出混合 | integration | P1 | no | `06_module/xts/pass/export_list_mixed_pass` | module | 低 | 混合 |
| MOD-EL-004 | export_list | export list 重复导出 fail_compile | fail_compile | P1 | no | `06_module/xts/fail_compile/export_list_duplicate_fail_compile` | module | 中 | SyntaxError |
| MOD-EL-005 | export_list | export list 不存在名称 fail_compile | fail_compile | P1 | no | `06_module/xts/fail_compile/export_list_missing_fail_compile` | module | 中 | SyntaxError |
| MOD-ER-001 | export_rename | export rename | integration | P0 | no | `06_module/xts/pass/export_rename_pass` | module | 低 | ES 核心行为 |
| MOD-ER-002 | export_rename | export as default | integration | P1 | no | `06_module/xts/pass/export_as_default_pass` | module | 低 | as default |
| MOD-ER-003 | export_rename | export rename 不存在 fail_compile | fail_compile | P1 | no | `06_module/xts/fail_compile/export_rename_missing_fail_compile` | module | 中 | SyntaxError |
| MOD-ER-004 | export_rename | export rename 重复 fail_compile | fail_compile | P2 | no | `06_module/xts/fail_compile/export_rename_duplicate_fail_compile` | module | 中 | SyntaxError |
| MOD-ER-005 | export_rename | export rename 多个 | integration | P2 | no | `06_module/xts/pass/export_rename_multiple_pass` | module | 低 | 多重命名 |
| MOD-NI-001 | named_import | import named | integration | P0 | no | `06_module/xts/pass/import_named_pass` | module / declarations | 低 | ES 核心行为 |
| MOD-NI-002 | named_import | import named 多个 | integration | P0 | no | `06_module/xts/pass/import_named_multiple_pass` | module | 低 | 多导入 |
| MOD-NI-003 | named_import | import named 值正确 | integration | P0 | no | `06_module/xts/pass/import_named_value_pass` | module | 低 | 值匹配 |
| MOD-NI-004 | named_import | missing export import fail_compile | fail_compile | P0 | no | `06_module/xts/fail_compile/import_missing_export_fail_compile` | module | 中 | SyntaxError |
| MOD-NI-005 | named_import | 同名 import fail_compile | fail_compile | P1 | no | `06_module/xts/fail_compile/import_duplicate_name_fail_compile` | module | 中 | SyntaxError |
| MOD-DI-001 | default_import | import default | integration | P0 | no | `06_module/xts/pass/import_default_pass` | module | 低 | ES 核心行为 |
| MOD-DI-002 | default_import | import default + named | integration | P0 | no | `06_module/xts/pass/import_default_named_pass` | module | 低 | 混合导入 |
| MOD-DI-003 | default_import | import default 值正确 | integration | P0 | no | `06_module/xts/pass/import_default_value_pass` | module | 低 | 值匹配 |
| MOD-DI-004 | default_import | missing default import | boundary | P1 | no | `06_module/xts/boundary/import_missing_default_boundary` | module | 中 | 无 default |
| MOD-DI-005 | default_import | default import 无 default export | boundary | P1 | no | `06_module/xts/boundary/import_default_no_export_boundary` | module | 中 | 无 default |
| MOD-NSI-001 | namespace_import | import * as ns | integration | P0 | no | `06_module/xts/pass/import_namespace_pass` | module / types | 低 | ES 核心行为 |
| MOD-NSI-002 | namespace_import | namespace 访问属性 | integration | P0 | no | `06_module/xts/pass/namespace_access_pass` | module | 低 | 属性访问 |
| MOD-NSI-003 | namespace_import | namespace 包含 default | integration | P1 | no | `06_module/xts/pass/namespace_default_pass` | module | 低 | ns.default |
| MOD-NSI-004 | namespace_import | namespace 对象只读 TypeError | fail_runtime | P0 | no | `06_module/xts/fail_runtime/namespace_readonly_fail_runtime` | module | 中 | TypeError |
| MOD-NSI-005 | namespace_import | namespace 支持边界 | boundary | P0 | no | `06_module/xts/boundary/namespace_import_boundary` | module | 高 | 支持待确认 |
| MOD-IR-001 | import_rename | import rename | integration | P0 | no | `06_module/xts/pass/import_rename_pass` | module | 低 | ES 核心行为 |
| MOD-IR-002 | import_rename | import rename 多个 | integration | P1 | no | `06_module/xts/pass/import_rename_multiple_pass` | module | 低 | 多重命名 |
| MOD-IR-003 | import_rename | import rename 不存在 fail_compile | fail_compile | P1 | no | `06_module/xts/fail_compile/import_rename_missing_fail_compile` | module | 中 | SyntaxError |
| MOD-IR-004 | import_rename | import rename 同名 fail_compile | fail_compile | P2 | no | `06_module/xts/fail_compile/import_rename_duplicate_fail_compile` | module | 中 | SyntaxError |
| MOD-IR-005 | import_rename | import rename as default | integration | P2 | no | `06_module/xts/pass/import_rename_as_default_pass` | module | 低 | as default |
| MOD-SSI-001 | side_effect_import | side-effect import 执行 | integration | P0 | no | `06_module/xts/pass/side_effect_import_pass` | module / statements | 低 | ES 核心行为 |
| MOD-SSI-002 | side_effect_import | side-effect import 不导入绑定 | integration | P1 | no | `06_module/xts/pass/side_effect_no_binding_pass` | module | 低 | 不导入 |
| MOD-SSI-003 | side_effect_import | side-effect import 多次 | boundary | P2 | no | `06_module/xts/boundary/side_effect_multiple_boundary` | module | 中 | 多次执行 |
| MOD-SSI-004 | side_effect_import | side-effect import 执行顺序 | boundary | P1 | no | `06_module/xts/boundary/side_effect_order_boundary` | module | 中 | 执行顺序 |
| MOD-SSI-005 | side_effect_import | side-effect import 不存在模块 | boundary | P2 | no | `06_module/xts/boundary/side_effect_missing_boundary` | module | 中 | 不存在 |
| MOD-RE-001 | re_export_named | re-export named | integration | P0 | no | `06_module/xts/pass/re_export_named_pass` | module | 低 | ES 核心行为 |
| MOD-RE-002 | re_export_named | re-export rename | integration | P0 | no | `06_module/xts/pass/re_export_rename_pass` | module | 低 | 重命名转发 |
| MOD-RE-003 | re_export_named | re-export 不创建本地绑定 | integration | P1 | no | `06_module/xts/pass/re_export_no_local_binding_pass` | module | 低 | 不创建 |
| MOD-RE-004 | re_export_named | re-export missing fail_compile | fail_compile | P1 | no | `06_module/xts/fail_compile/re_export_missing_fail_compile` | module | 中 | SyntaxError |
| MOD-RE-005 | re_export_named | re-export 支持边界 | boundary | P0 | no | `06_module/xts/boundary/re_export_boundary` | module | 高 | 支持待确认 |
| MOD-ES-001 | export_star | export * from | integration | P0 | no | `06_module/xts/pass/export_star_pass` | module | 低 | ES 核心行为 |
| MOD-ES-002 | export_star | export * 不转发 default | integration | P1 | no | `06_module/xts/pass/export_star_no_default_pass` | module | 低 | 不转发 default |
| MOD-ES-003 | export_star | export * 冲突 ambiguous | boundary | P1 | no | `06_module/xts/boundary/export_star_conflict_boundary` | module | 中 | ambiguous |
| MOD-ES-004 | export_star | export * 多来源 | integration | P2 | no | `06_module/xts/pass/export_star_multiple_pass` | module | 低 | 多来源 |
| MOD-ES-005 | export_star | export * 支持边界 | boundary | P0 | no | `06_module/xts/boundary/export_star_boundary` | module | 高 | 支持待确认 |
| MOD-ESAN-001 | export_star_as_namespace | export * as ns | boundary | P0 | no | `06_module/xts/boundary/export_star_as_namespace_boundary` | module | 高 | ES2020 |
| MOD-ESAN-002 | export_star_as_namespace | namespace 对象属性 | boundary | P1 | no | `06_module/xts/boundary/export_star_ns_access_boundary` | module | 中 | 属性访问 |
| MOD-ESAN-003 | export_star_as_namespace | namespace 只读 | boundary | P1 | no | `06_module/xts/boundary/export_star_ns_readonly_boundary` | module | 中 | 只读 |
| MOD-ESAN-004 | export_star_as_namespace | 与 named export 共存 | boundary | P2 | no | `06_module/xts/boundary/export_star_ns_coexist_boundary` | module | 中 | 共存 |
| MOD-LB-001 | live_binding | export let 修改后 import 可见 | integration | P0 | no | `06_module/xts/pass/live_binding_let_pass` | module / declarations | 中 | live binding |
| MOD-LB-002 | live_binding | export const 引用不变 | integration | P0 | no | `06_module/xts/pass/live_binding_const_pass` | module | 低 | 引用稳定 |
| MOD-LB-003 | live_binding | export function 绑定不变 | integration | P1 | no | `06_module/xts/pass/live_binding_function_pass` | module / function | 低 | 绑定稳定 |
| MOD-LB-004 | live_binding | live binding 支持边界 | boundary | P0 | no | `06_module/xts/boundary/live_binding_boundary` | module / declarations | 高 | 支持待确认 |
| MOD-LB-005 | live_binding | live binding 运行时验证 | regression | P1 | no | `06_module/xts/regression/live_binding_regression` | module | 中 | 回归验证 |
| MOD-CD-001 | circular_dependency | 循环依赖基础 | boundary | P0 | no | `06_module/xts/boundary/circular_dependency_basic_boundary` | module | 高 | 循环依赖 |
| MOD-CD-002 | circular_dependency | 循环依赖初始化顺序 | boundary | P0 | no | `06_module/xts/boundary/circular_dependency_init_order_boundary` | module | 高 | 初始化顺序 |
| MOD-CD-003 | circular_dependency | 循环依赖未初始化 undefined | boundary | P1 | no | `06_module/xts/boundary/circular_dependency_undefined_boundary` | module / null_safety | 高 | undefined |
| MOD-CD-004 | circular_dependency | 循环依赖函数提升 | boundary | P1 | no | `06_module/xts/boundary/circular_dependency_hoist_boundary` | module / declarations | 中 | 函数提升 |
| MOD-CD-005 | circular_dependency | 循环依赖 class TDZ | boundary | P1 | no | `06_module/xts/boundary/circular_dependency_class_tdz_boundary` | module / class | 高 | class TDZ |
| MOD-DI2-001 | dynamic_import_boundary | dynamic import 支持 | boundary | P0 | no | `06_module/xts/boundary/dynamic_import_boundary` | module | 高 | ES2020 |
| MOD-DI2-002 | dynamic_import_boundary | dynamic import 返回 Promise | boundary | P0 | no | `06_module/xts/boundary/dynamic_import_promise_boundary` | module | 高 | Promise |
| MOD-DI2-003 | dynamic_import_boundary | dynamic import namespace | boundary | P1 | no | `06_module/xts/boundary/dynamic_import_namespace_boundary` | module | 中 | namespace |
| MOD-DI2-004 | dynamic_import_boundary | dynamic import 错误处理 | boundary | P1 | no | `06_module/xts/boundary/dynamic_import_error_boundary` | module | 中 | 错误处理 |
| MOD-TLA-001 | top_level_await_boundary | top-level await 支持 | boundary | P0 | no | `06_module/xts/boundary/top_level_await_boundary` | module | 高 | ES2022 |
| MOD-TLA-002 | top_level_await_boundary | top-level await 执行顺序 | boundary | P1 | no | `06_module/xts/boundary/tla_order_boundary` | module | 中 | 阻塞 |
| MOD-TLA-003 | top_level_await_boundary | top-level await 错误处理 | boundary | P1 | no | `06_module/xts/boundary/tla_error_boundary` | module | 中 | 错误 |
| MOD-TLA-004 | top_level_await_boundary | top-level await 与 dynamic import | boundary | P2 | no | `06_module/xts/boundary/tla_dynamic_import_boundary` | module | 中 | 组合 |
| MOD-TIO-001 | type_only_import_export_boundary | import type 支持 | boundary | P0 | no | `06_module/xts/boundary/import_type_boundary` | module / typescript | 高 | TS 特性 |
| MOD-TIO-002 | type_only_import_export_boundary | export type 支持 | boundary | P0 | no | `06_module/xts/boundary/export_type_boundary` | module / typescript | 高 | TS 特性 |
| MOD-TIO-003 | type_only_import_export_boundary | type-only 运行时擦除 | boundary | P0 | no | `06_module/xts/boundary/type_only_erasure_boundary` | module / types | 高 | 擦除 |
| MOD-TIO-004 | type_only_import_export_boundary | export interface 边界 | boundary | P1 | no | `06_module/xts/boundary/export_interface_type_boundary` | module / interface | 高 | 类型导出 |
| MOD-TIO-005 | type_only_import_export_boundary | export type alias 边界 | boundary | P1 | no | `06_module/xts/boundary/export_type_alias_boundary` | module / typescript | 高 | 类型别名导出 |
| MOD-DE2-001 | duplicate_export | 重复 named export fail_compile | fail_compile | P0 | no | `06_module/xts/fail_compile/duplicate_named_export_fail_compile` | module | 中 | SyntaxError |
| MOD-DE2-002 | duplicate_export | 重复 default export fail_compile | fail_compile | P0 | no | `06_module/xts/fail_compile/duplicate_default_fail_compile` | module | 中 | SyntaxError |
| MOD-DE2-003 | duplicate_export | export list 重复 fail_compile | fail_compile | P1 | no | `06_module/xts/fail_compile/export_list_duplicate_fail_compile` | module | 中 | SyntaxError |
| MOD-DE2-004 | duplicate_export | export * 与 named 冲突 | boundary | P2 | no | `06_module/xts/boundary/export_star_named_conflict_boundary` | module | 中 | 冲突 |
| MOD-DE2-005 | duplicate_export | 重复 export 检测方式 | boundary | P2 | no | `06_module/xts/boundary/duplicate_export_detection_boundary` | module | 中 | 检测 |
| MOD-ME-001 | missing_export | import 不存在的 named export | fail_compile | P0 | no | `06_module/xts/fail_compile/missing_named_export_fail_compile` | module | 中 | SyntaxError |
| MOD-ME-002 | missing_export | import 不存在的 default | boundary | P1 | no | `06_module/xts/boundary/missing_default_boundary` | module | 中 | 无 default |
| MOD-ME-003 | missing_export | import 不存在的 namespace | boundary | P1 | no | `06_module/xts/boundary/missing_namespace_boundary` | module | 中 | 无导出 |
| MOD-ME-004 | missing_export | re-export 不存在 fail_compile | fail_compile | P1 | no | `06_module/xts/fail_compile/re_export_missing_fail_compile` | module | 中 | SyntaxError |
| MOD-ME-005 | missing_export | 模块不存在 | boundary | P2 | no | `06_module/xts/boundary/module_not_found_boundary` | module | 中 | 不存在 |
| MOD-AE-001 | ambiguous_export | export * 冲突 ambiguous | boundary | P1 | no | `06_module/xts/boundary/ambiguous_export_boundary` | module | 中 | ambiguous |
| MOD-AE-002 | ambiguous_export | ambiguous import 边界 | boundary | P1 | no | `06_module/xts/boundary/ambiguous_import_boundary` | module | 中 | ambiguous |
| MOD-AE-003 | ambiguous_export | export * 冲突检测方式 | boundary | P2 | no | `06_module/xts/boundary/ambiguous_detection_boundary` | module | 中 | 检测 |
| MOD-AE-004 | ambiguous_export | explicit 优先于 star | boundary | P2 | no | `06_module/xts/boundary/explicit_over_star_boundary` | module | 低 | 优先级 |
| MOD-AE-005 | ambiguous_export | 多 export * 冲突 | boundary | P2 | no | `06_module/xts/boundary/multi_star_conflict_boundary` | module | 中 | 多冲突 |
| MOD-PR-001 | module_path_resolution | 相对路径解析 | boundary | P0 | no | `06_module/xts/boundary/relative_path_boundary` | module | 中 | 路径 |
| MOD-PR-002 | module_path_resolution | 文件扩展名解析 | boundary | P0 | no | `06_module/xts/boundary/extension_boundary` | module | 中 | 扩展名 |
| MOD-PR-003 | module_path_resolution | bare specifier 解析 | boundary | P1 | no | `06_module/xts/boundary/bare_specifier_boundary` | module | 中 | 包名 |
| MOD-PR-004 | module_path_resolution | 绝对路径解析 | boundary | P2 | no | `06_module/xts/boundary/absolute_path_boundary` | module | 低 | 绝对 |
| MOD-PR-005 | module_path_resolution | 路径大小写敏感 | boundary | P2 | no | `06_module/xts/boundary/path_case_boundary` | module | 中 | 大小写 |
| MOD-TSCOMP-001 | typescript_compatibility_boundary | TS module 兼容 | boundary | P0 | no | `06_module/xts/boundary/ts_module_compatibility_boundary` | module / typescript | 高 | 兼容状态 |
| MOD-TSCOMP-002 | typescript_compatibility_boundary | type-only 兼容 | boundary | P0 | no | `06_module/xts/boundary/type_only_compatibility_boundary` | module / typescript | 高 | TS 特性 |
| MOD-TSCOMP-003 | typescript_compatibility_boundary | namespace import 兼容 | boundary | P1 | no | `06_module/xts/boundary/namespace_compatibility_boundary` | module / typescript | 中 | namespace |
| MOD-TSCOMP-004 | typescript_compatibility_boundary | export * 兼容 | boundary | P1 | no | `06_module/xts/boundary/export_star_compatibility_boundary` | module / typescript | 中 | export * |
| MOD-ARKTS-001 | arkts_dynamic_boundary | 动态 ArkTS module 支持 | boundary | P0 | no | `06_module/xts/boundary/arkts_module_support_boundary` | module | 高 | 支持状态 |
| MOD-ARKTS-002 | arkts_dynamic_boundary | 动态与静态 ArkTS 差异 | boundary | P0 | no | `06_module/xts/boundary/arkts_dynamic_vs_static_boundary` | module | 高 | 动态/静态 |
| MOD-ARKTS-003 | arkts_dynamic_boundary | 模块运行时行为差异 | boundary | P1 | no | `06_module/xts/boundary/arkts_module_runtime_boundary` | module | 高 | 运行时差异 |
| MOD-ARKTS-004 | arkts_dynamic_boundary | 模块路径解析差异 | boundary | P1 | no | `06_module/xts/boundary/arkts_path_resolution_boundary` | module | 高 | 路径差异 |

## Stage 1 Update Summary

以下 33 个 `.ets` 文件在 Module Stage 1 中生成（10 helper + 10 pass + 12 boundary + 1 regression）：

| 生成文件 | 类型 | 对应 Coverage IDs |
|---|---|---|
| `xts/helpers/named_export/module_named_export_helper.ets` | helper | MOD-NE-001~003, MOD-NI-001~003, MOD-NSI-001~003, MOD-SCOPE-001~003 |
| `xts/helpers/default_export/module_default_value_helper.ets` | helper | MOD-DE-001 |
| `xts/helpers/default_export/module_default_function_helper.ets` | helper | MOD-DE-002 |
| `xts/helpers/re_export/module_re_export_source_helper.ets` | helper | MOD-RE-001~005, MOD-ES-001~005 |
| `xts/helpers/re_export/module_re_export_named_helper.ets` | helper | MOD-RE-001~005, MOD-ES-001~005 |
| `xts/helpers/side_effect/module_side_effect_helper.ets` | helper | MOD-SSI-001~005 |
| `xts/helpers/live_binding/module_live_binding_helper.ets` | helper | MOD-LB-001~005 |
| `xts/helpers/circular/module_circular_a_helper.ets` | helper | MOD-CD-001~005 |
| `xts/helpers/circular/module_circular_b_helper.ets` | helper | MOD-CD-001~005 |
| `xts/helpers/type_only/module_type_only_helper.ets` | helper | MOD-TIO-001~005 |
| `xts/pass/module_named_export_import_pass.ets` | pass | MOD-NE-001~003, MOD-NI-001~003 |
| `xts/pass/module_default_export_value_pass.ets` | pass | MOD-DE-001 |
| `xts/pass/module_default_export_function_pass.ets` | pass | MOD-DE-002 |
| `xts/pass/module_export_list_pass.ets` | pass | MOD-EL-001 |
| `xts/pass/module_export_rename_pass.ets` | pass | MOD-ER-001 |
| `xts/pass/module_namespace_import_pass.ets` | pass | MOD-NSI-001~003 |
| `xts/pass/module_side_effect_import_pass.ets` | pass | MOD-SSI-001~002 |
| `xts/pass/module_live_binding_update_pass.ets` | pass | MOD-LB-001~003 |
| `xts/pass/module_scope_isolation_pass.ets` | pass | MOD-SCOPE-001, MOD-SCOPE-004 |
| `xts/pass/module_re_export_named_pass.ets` | pass | MOD-RE-001~003 |
| `xts/boundary/module_namespace_import_mutation_boundary.ets` | boundary | MOD-NSI-004 |
| `xts/boundary/module_export_star_boundary.ets` | boundary | MOD-ES-001~005 |
| `xts/boundary/module_export_star_as_namespace_boundary.ets` | boundary | MOD-ESAN-001~004 |
| `xts/boundary/module_imported_binding_assignment_boundary.ets` | boundary | MOD-LB-004 |
| `xts/boundary/module_top_level_this_boundary.ets` | boundary | MOD-SCOPE-003 |
| `xts/boundary/module_circular_dependency_basic_boundary.ets` | boundary | MOD-CD-001~002 |
| `xts/boundary/module_circular_initialization_boundary.ets` | boundary | MOD-CD-002~003 |
| `xts/boundary/module_missing_export_boundary.ets` | boundary | MOD-ME-001 |
| `xts/boundary/module_duplicate_export_boundary.ets` | boundary | MOD-DE2-001~002 |
| `xts/boundary/module_dynamic_import_boundary.ets` | boundary | MOD-DI2-001~002 |
| `xts/boundary/module_top_level_await_boundary.ets` | boundary | MOD-TLA-001~002 |
| `xts/boundary/module_type_only_import_boundary.ets` | boundary | MOD-TIO-001~005 |
| `xts/regression/module_side_effect_import_regression.ets` | regression | MOD-SSI-001~002 |