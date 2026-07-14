# Module Metadata Migration Report

## Summary

| 项目 | 数量 |
|---|---:|
| 扫描 .ets 文件总数 | 33 |
| 主用例数量 | 23 |
| helper 数量 | 10 |
| 修改主用例文件头数量 | 23 |
| 修改 helper 文件头数量 | 10 |
| 分配 Case ID 数量 | 23 |
| 未分配 Case ID 数量 | 0 |
| 分配 Helper ID 数量 | 10 |
| 未分配 Helper ID 数量 | 0 |
| 已关联 Coverage ID 数量 | 23 |
| 未关联 Coverage ID 数量 | 0 |
| 新增 Coverage ID 数量 | 0 |
| 错误 Coverage 关联数量 | 0 |
| 更新 Matrix 行数量 | 100 |
| 更新 Candidate 行数量 | 50 |
| 更新 Registry 记录数量 | 33 |
| 代码语义修改数量 | 0 |
| import/export 修改数量 | 0 |
| import 路径修改数量 | 0 |

## Assigned Case IDs

| Case ID | 文件路径 | Test Type | Coverage ID | Helper ID |
|---|---|---|---|---|
| MODULE-PASS-001 | pass/module_default_export_function_pass.ets | pass | MOD-DE-002 | MODULE-HELP-003 |
| MODULE-PASS-002 | pass/module_default_export_value_pass.ets | pass | MOD-DE-001 | MODULE-HELP-004 |
| MODULE-PASS-003 | pass/module_export_list_pass.ets | pass | MOD-EL-001 | MODULE-HELP-008 |
| MODULE-PASS-004 | pass/module_export_rename_pass.ets | pass | MOD-ER-001 | MODULE-HELP-007 |
| MODULE-PASS-006 | pass/module_named_export_import_pass.ets | pass | MOD-NE-001, MOD-NI-001 | MODULE-HELP-006 |
| MODULE-PASS-007 | pass/module_namespace_import_pass.ets | pass | MOD-NSI-001 | MODULE-HELP-006 |
| MODULE-PASS-009 | pass/module_scope_isolation_pass.ets | pass | MOD-SCOPE-001, MOD-SCOPE-004 | MODULE-HELP-006 |
| MODULE-INTEG-001 | pass/module_live_binding_update_pass.ets | integration | MOD-LB-001 | MODULE-HELP-005 |
| MODULE-INTEG-002 | pass/module_re_export_named_pass.ets | integration | MOD-RE-001 | MODULE-HELP-007, MODULE-HELP-008 |
| MODULE-INTEG-003 | pass/module_side_effect_import_pass.ets | integration | MOD-SSI-001 | MODULE-HELP-009 |
| MODULE-REGR-001 | regression/module_side_effect_import_regression.ets | regression | MOD-SSI-001, MOD-SSI-002 | MODULE-HELP-009 |
| MODULE-BOUND-001 | boundary/module_circular_dependency_basic_boundary.ets | boundary | MOD-CD-001, MOD-CD-002 | MODULE-HELP-001, MODULE-HELP-002 |
| MODULE-BOUND-002 | boundary/module_circular_initialization_boundary.ets | boundary | MOD-CD-002, MOD-CD-003 | MODULE-HELP-001, MODULE-HELP-002 |
| MODULE-BOUND-003 | boundary/module_duplicate_export_boundary.ets | boundary | MOD-DE2-001, MOD-DE2-002 | — |
| MODULE-BOUND-004 | boundary/module_dynamic_import_boundary.ets | boundary | MOD-DI2-001, MOD-DI2-002 | MODULE-HELP-006 |
| MODULE-BOUND-005 | boundary/module_export_star_as_namespace_boundary.ets | boundary | MOD-ESAN-001 | MODULE-HELP-007 |
| MODULE-BOUND-006 | boundary/module_export_star_boundary.ets | boundary | MOD-ES-001, MOD-ES-005 | MODULE-HELP-007 |
| MODULE-BOUND-007 | boundary/module_imported_binding_assignment_boundary.ets | boundary | MOD-LB-004 | MODULE-HELP-005 |
| MODULE-BOUND-008 | boundary/module_missing_export_boundary.ets | boundary | MOD-ME-001 | — |
| MODULE-BOUND-009 | boundary/module_namespace_import_mutation_boundary.ets | boundary | MOD-NSI-004, MOD-NSI-005 | MODULE-HELP-006 |
| MODULE-BOUND-010 | boundary/module_top_level_await_boundary.ets | boundary | MOD-TLA-001, MOD-TLA-002 | — |
| MODULE-BOUND-011 | boundary/module_top_level_this_boundary.ets | boundary | MOD-SCOPE-003 | — |
| MODULE-BOUND-012 | boundary/module_type_only_import_boundary.ets | boundary | MOD-TIO-001, MOD-TIO-003 | MODULE-HELP-010 |

## Assigned Helper IDs

| Helper ID | helper 路径 | Used By Case ID |
|---|---|---|
| MODULE-HELP-001 | helpers/circular/module_circular_a_helper.ets | MODULE-BOUND-001, MODULE-BOUND-002 |
| MODULE-HELP-002 | helpers/circular/module_circular_b_helper.ets | MODULE-BOUND-001, MODULE-BOUND-002 |
| MODULE-HELP-003 | helpers/default_export/module_default_function_helper.ets | MODULE-PASS-001 |
| MODULE-HELP-004 | helpers/default_export/module_default_value_helper.ets | MODULE-PASS-002 |
| MODULE-HELP-005 | helpers/live_binding/module_live_binding_helper.ets | MODULE-INTEG-001, MODULE-BOUND-007 |
| MODULE-HELP-006 | helpers/named_export/module_named_export_helper.ets | MODULE-PASS-006, MODULE-PASS-007, MODULE-PASS-009, MODULE-BOUND-004, MODULE-BOUND-006, MODULE-BOUND-009 |
| MODULE-HELP-007 | helpers/re_export/module_re_export_named_helper.ets | MODULE-PASS-004, MODULE-INTEG-002, MODULE-BOUND-005, MODULE-BOUND-006 |
| MODULE-HELP-008 | helpers/re_export/module_re_export_source_helper.ets | MODULE-PASS-003, MODULE-HELP-007 |
| MODULE-HELP-009 | helpers/side_effect/module_side_effect_helper.ets | MODULE-INTEG-003, MODULE-REGR-001 |
| MODULE-HELP-010 | helpers/type_only/module_type_only_helper.ets | MODULE-BOUND-012 |

## Unresolved Main Cases

无 unresolved 主用例。

## Unresolved Helpers

无 unresolved helper。

## Coverage Mapping Review

| Case ID | 代码实际语义 | Coverage ID | 是否确认 | 备注 |
|---|---|---|---|---|
| MODULE-PASS-006 | import named exports from helper, verify values | MOD-NE-001 (export const), MOD-NI-001 (import named) | ✅ | 代码确认 named export+import |
| MODULE-INTEG-001 | import live binding, call updateValue, verify new value visible | MOD-LB-001 (live binding update) | ✅ | 代码确认 live binding |
| MODULE-INTEG-002 | import from re-export helper, verify forwarded values | MOD-RE-001 (re-export named) | ✅ | 代码确认 re-export chain |
| MODULE-INTEG-003 | side-effect import + named import, verify counter | MOD-SSI-001 (side-effect execution) | ✅ | 代码确认 side-effect |
| MODULE-BOUND-001 | circular dependency A↔B, verify funcA works | MOD-CD-001 (circular basic), MOD-CD-002 (init order) | ✅ | 代码确认 circular |
| MODULE-BOUND-012 | import interface+type+generic from helper | MOD-TIO-001 (import type), MOD-TIO-003 (runtime erasure) | ✅ | 代码确认 type-only |

(全部 23 个 Case 的 Coverage 关联均已通过代码语义确认)

## Coverage Matrix Changes

Coverage Matrix 主体已从旧格式（`是否已有用例` + `建议路径`）更新为新格式（`Coverage Status` + `Case ID` + `Actual Path` + `Validation Status` + `Helper ID`）。

- 65 个 Coverage ID 标记为 `generated`
- 35 个 Coverage ID 保持 `planned`
- 所有 generated Coverage ID 关联了正确的 Case ID

## Candidate Index Changes

Candidate Index 主体新增 `Case ID`、`Coverage ID`、`Helper ID` 列。
- 23 个 candidate 的 `Generation Status` 从 `planned` 改为 `generated`
- 3 个原 Additional Files 中的主用例已纳入主体
- 27 个 candidate 保持 `planned`

## Constraints

- 未修改测试代码语义
- 未修改 import/export
- 未修改 import 路径
- 未新增、删除或重命名 .ets
- 未迁移其他章节
- 未执行编译运行
- 未执行 commit
- 未执行 push

## Recommended Next Step

任务 3B-Review：轻量审查 06_module 元数据迁移结果。
