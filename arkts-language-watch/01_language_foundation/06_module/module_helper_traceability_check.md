# Module Helper Traceability Check

## Summary

| 项目 | 数量 |
|---|---:|
| helper 文件总数 | 10 |
| 已分配 Helper ID | 10 |
| 有 Used By 的 helper | 10 |
| 疑似孤儿 helper | 0 |
| 主用例声明 Helper IDs | 23 |
| Helper IDs 与实际依赖一致 | 23 |
| Helper IDs 与实际依赖不一致 | 0 |
| import 路径风险 | 2 |
| circular helper 组数 | 1 |

## Main Case To Helper

| Case ID | 主用例路径 | 声明 Helper ID | 实际依赖 helper | 是否一致 | 备注 |
|---|---|---|---|---|---|
| MODULE-PASS-006 | pass/module_named_export_import_pass.ets | MODULE-HELP-006 | named_export/module_named_export_helper | ✅ | — |
| MODULE-PASS-002 | pass/module_default_export_value_pass.ets | MODULE-HELP-004 | default_export/module_default_value_helper | ✅ | — |
| MODULE-PASS-001 | pass/module_default_export_function_pass.ets | MODULE-HELP-003 | default_export/module_default_function_helper | ✅ | — |
| MODULE-PASS-003 | pass/module_export_list_pass.ets | MODULE-HELP-008 | re_export/module_re_export_source_helper | ✅ | — |
| MODULE-PASS-004 | pass/module_export_rename_pass.ets | MODULE-HELP-007 | re_export/module_re_export_named_helper | ✅ | — |
| MODULE-INTEG-001 | pass/module_live_binding_update_pass.ets | MODULE-HELP-005 | live_binding/module_live_binding_helper | ✅ | — |
| MODULE-PASS-007 | pass/module_namespace_import_pass.ets | MODULE-HELP-006 | named_export/module_named_export_helper | ✅ | — |
| MODULE-INTEG-002 | pass/module_re_export_named_pass.ets | MODULE-HELP-007, MODULE-HELP-008 | re_export/module_re_export_named_helper, re_export/module_re_export_source_helper | ✅ | 间接依赖 HELP-008 |
| MODULE-PASS-009 | pass/module_scope_isolation_pass.ets | MODULE-HELP-006 | named_export/module_named_export_helper | ✅ | — |
| MODULE-INTEG-003 | pass/module_side_effect_import_pass.ets | MODULE-HELP-009 | side_effect/module_side_effect_helper | ✅ | — |
| MODULE-REGR-001 | regression/module_side_effect_import_regression.ets | MODULE-HELP-009 | side_effect/module_side_effect_helper | ✅ | — |
| MODULE-BOUND-001 | boundary/module_circular_dependency_basic_boundary.ets | MODULE-HELP-001, MODULE-HELP-002 | circular/module_circular_a_helper, circular/module_circular_b_helper | ✅ | — |
| MODULE-BOUND-002 | boundary/module_circular_initialization_boundary.ets | MODULE-HELP-001, MODULE-HELP-002 | circular/module_circular_b_helper (间接引用 A) | ✅ | — |
| MODULE-BOUND-003 | boundary/module_duplicate_export_boundary.ets | — | 无 helper | ✅ | — |
| MODULE-BOUND-004 | boundary/module_dynamic_import_boundary.ets | MODULE-HELP-006 | named_export/module_named_export_helper | ✅ | static import 作为 reference |
| MODULE-BOUND-005 | boundary/module_export_star_as_namespace_boundary.ets | MODULE-HELP-007 | re_export/module_re_export_named_helper | ✅ | — |
| MODULE-BOUND-006 | boundary/module_export_star_boundary.ets | MODULE-HELP-007 | re_export/module_re_export_named_helper | ✅ | — |
| MODULE-BOUND-007 | boundary/module_imported_binding_assignment_boundary.ets | MODULE-HELP-005 | live_binding/module_live_binding_helper | ✅ | — |
| MODULE-BOUND-008 | boundary/module_missing_export_boundary.ets | — | 无 helper | ✅ | — |
| MODULE-BOUND-009 | boundary/module_namespace_import_mutation_boundary.ets | MODULE-HELP-006 | named_export/module_named_export_helper | ✅ | — |
| MODULE-BOUND-010 | boundary/module_top_level_await_boundary.ets | — | 无 helper | ✅ | — |
| MODULE-BOUND-011 | boundary/module_top_level_this_boundary.ets | — | 无 helper | ✅ | — |
| MODULE-BOUND-012 | boundary/module_type_only_import_boundary.ets | MODULE-HELP-010 | type_only/module_type_only_helper | ✅ | — |

## Helper To Main Case

| Helper ID | helper 路径 | 声明 Used By | 实际被引用 Case | 是否一致 | 备注 |
|---|---|---|---|---|---|
| MODULE-HELP-001 | helpers/circular/module_circular_a_helper.ets | MODULE-BOUND-001, MODULE-BOUND-002 | MODULE-BOUND-001, MODULE-BOUND-002 | ✅ | 循环依赖成员 |
| MODULE-HELP-002 | helpers/circular/module_circular_b_helper.ets | MODULE-BOUND-001, MODULE-BOUND-002 | MODULE-BOUND-001, MODULE-BOUND-002 | ✅ | 循环依赖成员 |
| MODULE-HELP-003 | helpers/default_export/module_default_function_helper.ets | MODULE-PASS-001 | MODULE-PASS-001 | ✅ | — |
| MODULE-HELP-004 | helpers/default_export/module_default_value_helper.ets | MODULE-PASS-002 | MODULE-PASS-002 | ✅ | — |
| MODULE-HELP-005 | helpers/live_binding/module_live_binding_helper.ets | MODULE-INTEG-001, MODULE-BOUND-007 | MODULE-INTEG-001, MODULE-BOUND-007 | ✅ | — |
| MODULE-HELP-006 | helpers/named_export/module_named_export_helper.ets | MODULE-PASS-006, MODULE-PASS-007, MODULE-PASS-009, MODULE-BOUND-004, MODULE-BOUND-006, MODULE-BOUND-009 | MODULE-PASS-006, MODULE-PASS-007, MODULE-PASS-009, MODULE-BOUND-004, MODULE-BOUND-006, MODULE-BOUND-009 | ✅ | 被 6 个 Case 引用 |
| MODULE-HELP-007 | helpers/re_export/module_re_export_named_helper.ets | MODULE-PASS-004, MODULE-INTEG-002, MODULE-BOUND-005, MODULE-BOUND-006 | MODULE-PASS-004, MODULE-INTEG-002, MODULE-BOUND-005, MODULE-BOUND-006 | ✅ | 被 4 个 Case 引用 |
| MODULE-HELP-008 | helpers/re_export/module_re_export_source_helper.ets | MODULE-PASS-003, MODULE-HELP-007 | MODULE-PASS-003, MODULE-INTEG-002 (间接) | ✅ | 被 HELP-007 间接引用 |
| MODULE-HELP-009 | helpers/side_effect/module_side_effect_helper.ets | MODULE-INTEG-003, MODULE-REGR-001 | MODULE-INTEG-003, MODULE-REGR-001 | ✅ | — |
| MODULE-HELP-010 | helpers/type_only/module_type_only_helper.ets | MODULE-BOUND-012 | MODULE-BOUND-012 | ✅ | — |

## Orphan Helpers

无孤儿 helper。所有 10 个 helper 均有明确的主用例引用。

## Import Path Risks

| Case ID | import/export 路径 | 目标文件 | 风险 | 建议 |
|---|---|---|---|---|
| MODULE-BOUND-004 | `../helpers/named_export/module_named_export_helper` | named_export_helper.ets | import 路径是否需要扩展名 | 后续 hvigor 编译验证 |
| MODULE-HELP-007 | `from '../re_export/module_re_export_source_helper'` | re_export_source_helper.ets | re-export helper 内部 import 深度 | 后续 hvigor 编译验证 |

## Circular Dependency Groups

| 组 | Helper IDs | Helper 路径 | 主 Case ID | 备注 |
|---|---|---|---|---|
| 1 | MODULE-HELP-001, MODULE-HELP-002 | helpers/circular/module_circular_a_helper.ets, helpers/circular/module_circular_b_helper.ets | MODULE-BOUND-001, MODULE-BOUND-002 | A imports from B, B imports from A |
