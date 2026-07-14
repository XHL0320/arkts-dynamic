# This Keyword Traceability Check

## Summary

| 项目 | 数量 |
|---|---:|
| 主用例总数 | 35 |
| 已分配 Case ID | 35 |
| 未分配 Case ID | 0 |
| 已关联 Coverage ID | 35 |
| 未关联 Coverage ID | 0 |
| Coverage Matrix 中 generated | 41 |
| Candidate Index 中 generated | 26 |
| validation_pending | 20 |
| spec_pending | 15 |
| 重复 Case ID | 0 |
| 重复 Coverage ID | 0 |
| 路径失效 | 0 |
| comment/code 疑似不一致 | 9 |

## File Traceability

| 文件路径 | Case ID | Coverage ID | Test Type | Expected Phase | Expected Outcome | Validation Status | Matrix 状态 | Candidate 状态 | 结果 |
|---|---|---|---|---|---|---|---|---|---|
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_accessor_extracted_boundary.ets | THIS-BOUND-001 | TK-GS-001 | boundary | pending | pending | spec_pending | generated | unresolved_no_candidate | consistent_after_task3a_fix |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_bind_ignores_later_call_boundary.ets | THIS-BOUND-002 | TK-CAB-004 | boundary | pending | pending | spec_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_callback_boundary.ets | THIS-BOUND-003 | TK-CB-001, TK-CB-002 | boundary | pending | pending | spec_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_class_field_initializer_boundary.ets | THIS-BOUND-004 | TK-CF-001, TK-CF-002 | boundary | pending | pending | spec_pending | generated | unresolved_no_candidate | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_derived_before_super_boundary.ets | THIS-BOUND-005 | TK-DCS-001, TK-DCS-003 | boundary | pending | pending | spec_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_derived_constructor_return_boundary.ets | THIS-BOUND-006 | TK-DCS-002 | boundary | pending | pending | spec_pending | generated | unresolved_no_candidate | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_extracted_method_boundary.ets | THIS-BOUND-007 | TK-EM-001, TK-MTHD-005 | boundary | pending | pending | spec_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_function_strict_mode_boundary.ets | THIS-BOUND-008 | TK-FUNC-002, TK-SM-001 | boundary | pending | pending | spec_pending | generated | unresolved_no_candidate | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_module_top_level_boundary.ets | THIS-BOUND-009 | TK-MOD-001 | boundary | pending | pending | spec_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_nested_normal_function_boundary.ets | THIS-BOUND-010 | TK-NST-001, TK-NST-003, TK-FUNC-005 | boundary | pending | pending | spec_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_parameter_boundary.ets | THIS-BOUND-011 | TK-TP-001 | boundary | pending | pending | spec_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_polymorphic_this_boundary.ets | THIS-BOUND-012 | TK-TT-001, TK-TT-003 | boundary | pending | pending | spec_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_return_type_boundary.ets | THIS-BOUND-013 | TK-TT-001 | boundary | pending | pending | spec_pending | generated | unresolved_no_candidate | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_static_field_initializer_boundary.ets | THIS-BOUND-014 | TK-STC-003 | boundary | pending | pending | spec_pending | generated | unresolved_no_candidate | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_static_inheritance_boundary.ets | THIS-BOUND-015 | TK-STC-001 | boundary | pending | pending | spec_pending | generated | unresolved_no_candidate | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_apply_changes_this_pass.ets | THIS-PASS-001 | TK-CAB-002 | pass | runtime | value | validation_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_arrow_lexical_this_pass.ets | THIS-PASS-002 | TK-ARR-001 | pass | runtime | value | validation_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_bind_changes_this_pass.ets | THIS-PASS-003 | TK-CAB-003 | pass | runtime | value | validation_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_call_changes_this_pass.ets | THIS-PASS-004 | TK-CAB-001 | pass | runtime | value | validation_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_constructor_pass.ets | THIS-PASS-005 | TK-CC-001, TK-CC-002 | pass | runtime | value | validation_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_instance_method_pass.ets | THIS-PASS-006 | TK-CIM-001, TK-CIM-004 | pass | runtime | value | validation_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_method_update_field_pass.ets | THIS-PASS-007 | TK-CIM-001, TK-CIM-005 | pass | runtime | value | validation_pending | generated | unresolved_no_candidate | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_derived_after_super_pass.ets | THIS-PASS-008 | TK-DCS-002, TK-DCS-004 | pass | runtime | value | validation_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_function_call_basic_pass.ets | THIS-PASS-009 | TK-FUNC-001, TK-SM-001 | pass | runtime | value | validation_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_getter_receiver_pass.ets | THIS-PASS-010 | TK-GS-001 | pass | runtime | value | validation_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_method_call_receiver_pass.ets | THIS-PASS-011 | TK-MTHD-001 | pass | runtime | value | validation_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_method_receiver_update_pass.ets | THIS-PASS-012 | TK-MTHD-001 | pass | runtime | value | validation_pending | generated | unresolved_no_candidate | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_nested_arrow_preserves_this_pass.ets | THIS-PASS-013 | TK-ARR-002 | pass | runtime | value | validation_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_object_literal_method_pass.ets | THIS-PASS-014 | TK-OLM-001, TK-OLM-002 | pass | runtime | value | validation_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_setter_receiver_pass.ets | THIS-PASS-015 | TK-GS-002 | pass | runtime | value | validation_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_static_method_pass.ets | THIS-PASS-016 | TK-STC-001, TK-STC-002 | pass | runtime | value | validation_pending | generated | generated | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_arrow_lexical_regression.ets | THIS-REGR-001 | TK-ARR-001, TK-ARR-002 | regression | runtime | value | validation_pending | generated | unresolved_no_candidate | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_call_apply_bind_regression.ets | THIS-REGR-002 | TK-CAB-001, TK-CAB-002, TK-CAB-003, TK-CAB-004 | regression | runtime | value | validation_pending | generated | unresolved_no_candidate | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_class_instance_regression.ets | THIS-REGR-003 | TK-CIM-001, TK-CIM-002 | regression | runtime | value | validation_pending | generated | unresolved_no_candidate | consistent |
| arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_derived_super_regression.ets | THIS-REGR-004 | TK-DCS-002, TK-DCS-005 | regression | runtime | value | validation_pending | generated | unresolved_no_candidate | consistent |

## Unresolved Files

| 文件路径 | 问题 | 原因 | 建议 |
|---|---|---|---|
| — | none | 所有实际文件均已分配 Case ID 和 Coverage ID | — |

## Matrix Consistency

| Coverage ID | Matrix Path | Actual Path | Case ID | 是否一致 | 备注 |
|---|---|---|---|---|---|
| TK-ARR-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_arrow_lexical_this_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_arrow_lexical_regression.ets | THIS-PASS-002, THIS-REGR-001 | yes | generated; validation pending/spec pending |
| TK-ARR-002 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_nested_arrow_preserves_this_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_arrow_lexical_regression.ets | THIS-PASS-013, THIS-REGR-001 | yes | generated; validation pending/spec pending |
| TK-CAB-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_call_changes_this_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_call_apply_bind_regression.ets | THIS-PASS-004, THIS-REGR-002 | yes | generated; validation pending/spec pending |
| TK-CAB-002 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_apply_changes_this_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_call_apply_bind_regression.ets | THIS-PASS-001, THIS-REGR-002 | yes | generated; validation pending/spec pending |
| TK-CAB-003 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_bind_changes_this_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_call_apply_bind_regression.ets | THIS-PASS-003, THIS-REGR-002 | yes | generated; validation pending/spec pending |
| TK-CAB-004 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_bind_ignores_later_call_boundary.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_call_apply_bind_regression.ets | THIS-BOUND-002, THIS-REGR-002 | yes | generated; validation pending/spec pending |
| TK-CB-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_callback_boundary.ets | THIS-BOUND-003 | yes | generated; validation pending/spec pending |
| TK-CB-002 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_callback_boundary.ets | THIS-BOUND-003 | yes | generated; validation pending/spec pending |
| TK-CC-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_constructor_pass.ets | THIS-PASS-005 | yes | generated; validation pending/spec pending |
| TK-CC-002 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_constructor_pass.ets | THIS-PASS-005 | yes | generated; validation pending/spec pending |
| TK-CF-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_class_field_initializer_boundary.ets | THIS-BOUND-004 | yes | generated; validation pending/spec pending |
| TK-CF-002 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_class_field_initializer_boundary.ets | THIS-BOUND-004 | yes | generated; validation pending/spec pending |
| TK-CIM-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_instance_method_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_method_update_field_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_class_instance_regression.ets | THIS-PASS-006, THIS-PASS-007, THIS-REGR-003 | yes | generated; validation pending/spec pending |
| TK-CIM-002 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_class_instance_regression.ets | THIS-REGR-003 | yes | generated; validation pending/spec pending |
| TK-CIM-004 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_instance_method_pass.ets | THIS-PASS-006 | yes | generated; validation pending/spec pending |
| TK-CIM-005 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_method_update_field_pass.ets | THIS-PASS-007 | yes | generated; validation pending/spec pending |
| TK-DCS-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_derived_before_super_boundary.ets | THIS-BOUND-005 | yes | generated; validation pending/spec pending |
| TK-DCS-002 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_derived_constructor_return_boundary.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_derived_after_super_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_derived_super_regression.ets | THIS-BOUND-006, THIS-PASS-008, THIS-REGR-004 | yes | generated; validation pending/spec pending |
| TK-DCS-003 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_derived_before_super_boundary.ets | THIS-BOUND-005 | yes | generated; validation pending/spec pending |
| TK-DCS-004 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_derived_after_super_pass.ets | THIS-PASS-008 | yes | generated; validation pending/spec pending |
| TK-DCS-005 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_derived_super_regression.ets | THIS-REGR-004 | yes | generated; validation pending/spec pending |
| TK-EM-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_extracted_method_boundary.ets | THIS-BOUND-007 | yes | generated; validation pending/spec pending |
| TK-EM-002 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | — | — | yes | planned; no exact matching case after Task 3A Fix |
| TK-FUNC-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_function_call_basic_pass.ets | THIS-PASS-009 | yes | generated; validation pending/spec pending |
| TK-FUNC-002 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_function_strict_mode_boundary.ets | THIS-BOUND-008 | yes | generated; validation pending/spec pending |
| TK-FUNC-005 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_nested_normal_function_boundary.ets | THIS-BOUND-010 | yes | generated; validation pending/spec pending |
| TK-GS-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_accessor_extracted_boundary.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_getter_receiver_pass.ets | THIS-BOUND-001, THIS-PASS-010 | yes | generated; validation pending/spec pending |
| TK-GS-002 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_setter_receiver_pass.ets | THIS-PASS-015 | yes | generated; validation pending/spec pending |
| TK-MOD-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_module_top_level_boundary.ets | THIS-BOUND-009 | yes | generated; validation pending/spec pending |
| TK-MTHD-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_method_call_receiver_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_method_receiver_update_pass.ets | THIS-PASS-011, THIS-PASS-012 | yes | generated; validation pending/spec pending |
| TK-MTHD-005 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_extracted_method_boundary.ets | THIS-BOUND-007 | yes | generated; validation pending/spec pending |
| TK-NST-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_nested_normal_function_boundary.ets | THIS-BOUND-010 | yes | generated; validation pending/spec pending |
| TK-NST-003 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_nested_normal_function_boundary.ets | THIS-BOUND-010 | yes | generated; validation pending/spec pending |
| TK-OLM-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_object_literal_method_pass.ets | THIS-PASS-014 | yes | generated; validation pending/spec pending |
| TK-OLM-002 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_object_literal_method_pass.ets | THIS-PASS-014 | yes | generated; validation pending/spec pending |
| TK-SM-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_function_strict_mode_boundary.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_function_call_basic_pass.ets | THIS-BOUND-008, THIS-PASS-009 | yes | generated; validation pending/spec pending |
| TK-STC-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_static_inheritance_boundary.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_static_method_pass.ets | THIS-BOUND-015, THIS-PASS-016 | yes | generated; validation pending/spec pending |
| TK-STC-002 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_static_method_pass.ets | THIS-PASS-016 | yes | generated; validation pending/spec pending |
| TK-STC-003 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_static_field_initializer_boundary.ets | THIS-BOUND-014 | yes | generated; validation pending/spec pending |
| TK-TP-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_parameter_boundary.ets | THIS-BOUND-011 | yes | generated; validation pending/spec pending |
| TK-TT-001 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_polymorphic_this_boundary.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_return_type_boundary.ets | THIS-BOUND-012, THIS-BOUND-013 | yes | generated; validation pending/spec pending |
| TK-TT-003 | arkts-language-watch/01_language_foundation/07_this_keyword/coverage_matrix.md | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_polymorphic_this_boundary.ets | THIS-BOUND-012 | yes | generated; validation pending/spec pending |

## Candidate Consistency

| Candidate ID | Case ID | Declared Path | Actual Path | 是否一致 | 备注 |
|---|---|---|---|---|---|
| TK-CAND-001 | — | — | — | planned | planned |
| TK-CAND-002 | THIS-BOUND-009 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_module_top_level_boundary.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_module_top_level_boundary.ets | yes | generated |
| TK-CAND-003 | THIS-PASS-009 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_function_call_basic_pass.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_function_call_basic_pass.ets | yes | generated |
| TK-CAND-004 | THIS-BOUND-010 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_nested_normal_function_boundary.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_nested_normal_function_boundary.ets | yes | generated |
| TK-CAND-005 | THIS-PASS-011 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_method_call_receiver_pass.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_method_call_receiver_pass.ets | yes | generated |
| TK-CAND-006 | THIS-BOUND-007 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_extracted_method_boundary.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_extracted_method_boundary.ets | yes | generated |
| TK-CAND-007 | THIS-PASS-002 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_arrow_lexical_this_pass.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_arrow_lexical_this_pass.ets | yes | generated |
| TK-CAND-008 | THIS-PASS-013 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_nested_arrow_preserves_this_pass.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_nested_arrow_preserves_this_pass.ets | yes | generated |
| TK-CAND-009 | — | — | — | planned | planned |
| TK-CAND-010 | — | — | — | planned | planned |
| TK-CAND-011 | THIS-PASS-004 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_call_changes_this_pass.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_call_changes_this_pass.ets | yes | generated |
| TK-CAND-012 | THIS-PASS-001 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_apply_changes_this_pass.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_apply_changes_this_pass.ets | yes | generated |
| TK-CAND-013 | THIS-PASS-003 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_bind_changes_this_pass.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_bind_changes_this_pass.ets | yes | generated |
| TK-CAND-014 | THIS-BOUND-002 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_bind_ignores_later_call_boundary.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_bind_ignores_later_call_boundary.ets | yes | generated |
| TK-CAND-015 | THIS-PASS-014 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_object_literal_method_pass.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_object_literal_method_pass.ets | yes | generated |
| TK-CAND-016 | THIS-PASS-005 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_constructor_pass.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_constructor_pass.ets | yes | generated |
| TK-CAND-017 | THIS-PASS-005 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_constructor_pass.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_constructor_pass.ets | yes | generated |
| TK-CAND-018 | THIS-PASS-006 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_instance_method_pass.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_instance_method_pass.ets | yes | generated |
| TK-CAND-019 | — | — | — | planned | planned |
| TK-CAND-020 | THIS-BOUND-005 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_derived_before_super_boundary.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_derived_before_super_boundary.ets | yes | generated |
| TK-CAND-021 | THIS-PASS-008 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_derived_after_super_pass.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_derived_after_super_pass.ets | yes | generated |
| TK-CAND-022 | THIS-PASS-016 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_static_method_pass.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_static_method_pass.ets | yes | generated |
| TK-CAND-023 | THIS-PASS-016 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_static_method_pass.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_static_method_pass.ets | yes | generated |
| TK-CAND-024 | THIS-PASS-010 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_getter_receiver_pass.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_getter_receiver_pass.ets | yes | generated |
| TK-CAND-025 | THIS-PASS-015 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_setter_receiver_pass.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_setter_receiver_pass.ets | yes | generated |
| TK-CAND-026 | THIS-BOUND-007 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_extracted_method_boundary.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_extracted_method_boundary.ets | yes | generated |
| TK-CAND-027 | THIS-BOUND-003 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_callback_boundary.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_callback_boundary.ets | yes | generated |
| TK-CAND-028 | — | — | — | planned | planned |
| TK-CAND-029 | — | — | — | planned | planned |
| TK-CAND-030 | THIS-PASS-009 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_function_call_basic_pass.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_function_call_basic_pass.ets | yes | generated |
| TK-CAND-031 | THIS-BOUND-011 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_parameter_boundary.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_parameter_boundary.ets | yes | generated |
| TK-CAND-032 | THIS-BOUND-012 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_polymorphic_this_boundary.ets | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_polymorphic_this_boundary.ets | yes | generated |
| TK-CAND-033 | — | — | — | planned | planned |
| TK-CAND-034 | — | — | — | planned | planned |
| TK-CAND-035 | — | — | — | planned | planned |
| TK-CAND-036 | — | — | — | planned | planned |
| TK-CAND-037 | — | — | — | planned | planned |
| TK-CAND-038 | — | — | — | planned | planned |
| TK-CAND-039 | — | — | — | planned | planned |
| TK-CAND-040 | — | — | — | planned | planned |
| TK-CAND-041 | — | — | — | planned | planned |
| TK-CAND-042 | — | — | — | planned | planned |
| TK-CAND-043 | — | — | — | planned | planned |
| TK-CAND-044 | — | — | — | planned | planned |
| TK-CAND-045 | — | — | — | planned | planned |

## Metadata Quality Issues

| 文件路径 | 问题 | 严重级别 | 建议 |
|---|---|---|---|
| Candidate Index | TK-CAND-001、TK-CAND-010、TK-CAND-019 历史映射与实际 Coverage 不一致，已恢复 planned | medium | 后续生成真正匹配的用例或重新确认 coverage |
| Candidate Index | 13 个实际文件无直接 Candidate ID | low | 仅在候选计划确有需要时分配 Candidate ID |

## Task 3A Fix Update

| 检查项 | 修复前 | 修复后 | 结果 |
|---|---|---|---|
| THIS-BOUND-001 Coverage | TK-EM-002, TK-GS-001 | TK-GS-001 | consistent |
| TK-EM-002 Case | THIS-BOUND-001 | — | planned gap retained |
| Matrix generated | 42 | 41 | consistent |
| Matrix planned | 61 | 62 | consistent |
| 错误 Coverage 关联 | 1 | 0 | PASS |
| generated 路径失效 | 0 | 0 | PASS |
| Candidate 阻断问题 | 1 | 0 | PASS |

`TK-CAND-014` 和 `TK-CAND-020` 的计划类型与当前 boundary 物理资产不同，仍作为非阻断 warning 保留。Task 3A Fix 没有修改任何代码主体。
