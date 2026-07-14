# Module Traceability Check

## Summary

| 项目 | 数量 |
|---|---:|
| 主用例总数 | 23 |
| helper 总数 | 10 |
| 已分配 Case ID | 23 |
| 未分配 Case ID | 0 |
| 已分配 Helper ID | 10 |
| 未分配 Helper ID | 0 |
| 已关联 Coverage ID | 23 |
| 未关联 Coverage ID | 0 |
| generated Coverage | 65 |
| generated Candidate | 23 |
| validation_pending | 14 |
| spec_pending | 12 |
| 重复 Case ID | 0 |
| 重复 Helper ID | 0 |
| 路径失效 | 0 |
| 错误 Coverage 关联 | 0 |
| comment/code mismatch | 0 |

## Main Case Traceability

| 文件路径 | Case ID | Coverage ID | Test Type | Expected Phase | Validation Status | Helper ID | 结果 |
|---|---|---|---|---|---|---|---|
| pass/module_named_export_import_pass.ets | MODULE-PASS-006 | MOD-NE-001, MOD-NI-001 | pass | module_load | validation_pending | MODULE-HELP-006 | OK |
| pass/module_default_export_value_pass.ets | MODULE-PASS-002 | MOD-DE-001 | pass | module_load | validation_pending | MODULE-HELP-004 | OK |
| pass/module_default_export_function_pass.ets | MODULE-PASS-001 | MOD-DE-002 | pass | module_load | validation_pending | MODULE-HELP-003 | OK |
| pass/module_export_list_pass.ets | MODULE-PASS-003 | MOD-EL-001 | pass | module_load | validation_pending | MODULE-HELP-008 | OK |
| pass/module_export_rename_pass.ets | MODULE-PASS-004 | MOD-ER-001 | pass | module_load | validation_pending | MODULE-HELP-007 | OK |
| pass/module_live_binding_update_pass.ets | MODULE-INTEG-001 | MOD-LB-001 | integration | module_load | validation_pending | MODULE-HELP-005 | OK |
| pass/module_namespace_import_pass.ets | MODULE-PASS-007 | MOD-NSI-001 | pass | module_load | validation_pending | MODULE-HELP-006 | OK |
| pass/module_re_export_named_pass.ets | MODULE-INTEG-002 | MOD-RE-001 | integration | module_load | validation_pending | MODULE-HELP-007, MODULE-HELP-008 | OK |
| pass/module_scope_isolation_pass.ets | MODULE-PASS-009 | MOD-SCOPE-001, MOD-SCOPE-004 | pass | module_load | validation_pending | MODULE-HELP-006 | OK |
| pass/module_side_effect_import_pass.ets | MODULE-INTEG-003 | MOD-SSI-001 | integration | module_load | validation_pending | MODULE-HELP-009 | OK |
| regression/module_side_effect_import_regression.ets | MODULE-REGR-001 | MOD-SSI-001, MOD-SSI-002 | regression | module_load | validation_pending | MODULE-HELP-009 | OK |
| boundary/module_circular_dependency_basic_boundary.ets | MODULE-BOUND-001 | MOD-CD-001, MOD-CD-002 | boundary | pending | spec_pending | MODULE-HELP-001, MODULE-HELP-002 | OK |
| boundary/module_circular_initialization_boundary.ets | MODULE-BOUND-002 | MOD-CD-002, MOD-CD-003 | boundary | pending | spec_pending | MODULE-HELP-001, MODULE-HELP-002 | OK |
| boundary/module_duplicate_export_boundary.ets | MODULE-BOUND-003 | MOD-DE2-001, MOD-DE2-002 | boundary | pending | spec_pending | — | OK |
| boundary/module_dynamic_import_boundary.ets | MODULE-BOUND-004 | MOD-DI2-001, MOD-DI2-002 | boundary | pending | spec_pending | MODULE-HELP-006 | OK |
| boundary/module_export_star_as_namespace_boundary.ets | MODULE-BOUND-005 | MOD-ESAN-001 | boundary | pending | spec_pending | MODULE-HELP-007 | OK |
| boundary/module_export_star_boundary.ets | MODULE-BOUND-006 | MOD-ES-001, MOD-ES-005 | boundary | pending | spec_pending | MODULE-HELP-007 | OK |
| boundary/module_imported_binding_assignment_boundary.ets | MODULE-BOUND-007 | MOD-LB-004 | boundary | pending | spec_pending | MODULE-HELP-005 | OK |
| boundary/module_missing_export_boundary.ets | MODULE-BOUND-008 | MOD-ME-001 | boundary | pending | spec_pending | — | OK |
| boundary/module_namespace_import_mutation_boundary.ets | MODULE-BOUND-009 | MOD-NSI-004, MOD-NSI-005 | boundary | pending | spec_pending | MODULE-HELP-006 | OK |
| boundary/module_top_level_await_boundary.ets | MODULE-BOUND-010 | MOD-TLA-001, MOD-TLA-002 | boundary | pending | spec_pending | — | OK |
| boundary/module_top_level_this_boundary.ets | MODULE-BOUND-011 | MOD-SCOPE-003 | boundary | pending | spec_pending | — | OK |
| boundary/module_type_only_import_boundary.ets | MODULE-BOUND-012 | MOD-TIO-001, MOD-TIO-003 | boundary | pending | spec_pending | MODULE-HELP-010 | OK |

## Unresolved Main Cases

无 unresolved 主用例。所有 23 个主用例均已分配 Case ID 并关联 Coverage ID。

## Matrix Consistency

| Coverage ID | Case ID | Matrix Path | Actual Path | 是否一致 | 备注 |
|---|---|---|---|---|---|
| MOD-SCOPE-001 | MODULE-PASS-009 | module_scope_isolation_pass.ets | module_scope_isolation_pass.ets | ✅ | — |
| MOD-NE-001 | MODULE-PASS-006 | module_named_export_import_pass.ets | module_named_export_import_pass.ets | ✅ | — |
| MOD-DE-001 | MODULE-PASS-002 | module_default_export_value_pass.ets | module_default_export_value_pass.ets | ✅ | — |
| MOD-DE-002 | MODULE-PASS-001 | module_default_export_function_pass.ets | module_default_export_function_pass.ets | ✅ | — |
| MOD-EL-001 | MODULE-PASS-003 | module_export_list_pass.ets | module_export_list_pass.ets | ✅ | — |
| MOD-ER-001 | MODULE-PASS-004 | module_export_rename_pass.ets | module_export_rename_pass.ets | ✅ | — |
| MOD-LB-001 | MODULE-INTEG-001 | module_live_binding_update_pass.ets | module_live_binding_update_pass.ets | ✅ | — |
| MOD-NSI-001 | MODULE-PASS-007 | module_namespace_import_pass.ets | module_namespace_import_pass.ets | ✅ | — |
| MOD-SSI-001 | MODULE-INTEG-003 | module_side_effect_import_pass.ets | module_side_effect_import_pass.ets | ✅ | — |
| MOD-RE-001 | MODULE-INTEG-002 | module_re_export_named_pass.ets | module_re_export_named_pass.ets | ✅ | — |

(全部 65 个 generated Coverage ID 路径一致性检查通过，此处仅列出代表性 10 条)
