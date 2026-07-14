# This Keyword First Batch Candidate Index

## Summary

| 项目 | 数量 |
|---|---:|
| 首批候选数量 | 45 |
| P0 候选数量 | 25 |
| P1 候选数量 | 20 |
| P2 候选数量 | 0 |
| ohosTest 适用候选 | 35 |
| 需要 test262 对照候选 | 22 |

## Candidate List

| Candidate ID | Case ID | This Keyword 方向 | 测试点 | 用例类型 | 优先级 | Generation Status | Validation Status | Actual Path | Coverage ID | 所属阶段 | 备注 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| TK-CAND-001 | — | global_this_boundary | globalThis 访问 | pass | P0 | planned | planned | — | TK-GLB-002 | This Keyword Stage 1 | ES 核心行为; Historical mapping rejected in Task 3A: actual case coverage does not include TK-GLB-002 |
| TK-CAND-002 | THIS-BOUND-009 | module_top_level_this | 模块顶层 this | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_module_top_level_boundary.ets | TK-MOD-001 | This Keyword Stage 1 | 模块模式待确认 |
| TK-CAND-003 | THIS-PASS-009 | function_call_this | 普通函数 strict this | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_function_call_basic_pass.ets | TK-FUNC-001, TK-SM-001 | This Keyword Stage 1 | ES 核心行为 |
| TK-CAND-004 | THIS-BOUND-010 | function_call_this | 嵌套函数 this 丢失 | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_nested_normal_function_boundary.ets | TK-NST-001, TK-NST-003, TK-FUNC-005 | This Keyword Stage 1 | 经典 bug |
| TK-CAND-005 | THIS-PASS-011 | method_call_this | obj.method() this | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_method_call_receiver_pass.ets | TK-MTHD-001 | This Keyword Stage 1 | ES 核心行为 |
| TK-CAND-006 | THIS-BOUND-007 | method_call_this | 方法提取 this 丢失 | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_extracted_method_boundary.ets | TK-EM-001, TK-MTHD-005 | This Keyword Stage 1 | 经典 bug |
| TK-CAND-007 | THIS-PASS-002 | arrow_lexical_this | 箭头函数 lexical this | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_arrow_lexical_this_pass.ets | TK-ARR-001 | This Keyword Stage 1 | ES2015 |
| TK-CAND-008 | THIS-PASS-013 | arrow_lexical_this | 嵌套箭头保持 this | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_nested_arrow_preserves_this_pass.ets | TK-ARR-002 | This Keyword Stage 1 | 多层捕获 |
| TK-CAND-009 | — | arrow_lexical_this | call 不改变箭头 this | pass | P0 | planned | planned | — | — | This Keyword Stage 1 | call 无效 |
| TK-CAND-010 | — | arrow_lexical_this | bind 不改变箭头 this | pass | P0 | planned | planned | — | TK-ARR-004 | This Keyword Stage 1 | bind 无效; Historical mapping rejected in Task 3A: actual case coverage does not include TK-ARR-004 |
| TK-CAND-011 | THIS-PASS-004 | call_apply_bind_this | f.call(obj) this | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_call_changes_this_pass.ets | TK-CAB-001 | This Keyword Stage 1 | ES 核心行为 |
| TK-CAND-012 | THIS-PASS-001 | call_apply_bind_this | f.apply(obj) this | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_apply_changes_this_pass.ets | TK-CAB-002 | This Keyword Stage 1 | ES 核心行为 |
| TK-CAND-013 | THIS-PASS-003 | call_apply_bind_this | f.bind(obj)() this | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_bind_changes_this_pass.ets | TK-CAB-003 | This Keyword Stage 1 | ES 核心行为 |
| TK-CAND-014 | THIS-BOUND-002 | call_apply_bind_this | bind 后 call 不改变 | pass | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_bind_ignores_later_call_boundary.ets | TK-CAB-004 | This Keyword Stage 1 | 永久绑定 |
| TK-CAND-015 | THIS-PASS-014 | object_literal_method_this | 对象字面量方法 this | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_object_literal_method_pass.ets | TK-OLM-001, TK-OLM-002 | This Keyword Stage 1 | ES 核心行为 |
| TK-CAND-016 | THIS-PASS-005 | class_constructor_this | base constructor this | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_constructor_pass.ets | TK-CC-001, TK-CC-002 | This Keyword Stage 1 | ES2015 |
| TK-CAND-017 | THIS-PASS-005 | class_constructor_this | constructor 字段 this | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_constructor_pass.ets | TK-CC-001, TK-CC-002 | This Keyword Stage 1 | 字段初始化 |
| TK-CAND-018 | THIS-PASS-006 | class_instance_method_this | 实例方法 this | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_instance_method_pass.ets | TK-CIM-001, TK-CIM-004 | This Keyword Stage 1 | ES2015 |
| TK-CAND-019 | — | class_instance_method_this | 方法提取 this 丢失 | boundary | P0 | planned | planned | — | TK-CIM-003 | This Keyword Stage 1 | 经典 bug; Historical mapping rejected in Task 3A: actual case coverage does not include TK-CIM-003 |
| TK-CAND-020 | THIS-BOUND-005 | derived_class_this_super_boundary | super() 前使用 this | fail_runtime | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_derived_before_super_boundary.ets | TK-DCS-001, TK-DCS-003 | This Keyword Stage 1 | ReferenceError |
| TK-CAND-021 | THIS-PASS-008 | derived_class_this_super_boundary | super() 后使用 this | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_derived_after_super_pass.ets | TK-DCS-002, TK-DCS-004 | This Keyword Stage 1 | 已初始化 |
| TK-CAND-022 | THIS-PASS-016 | static_this | static 方法 this | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_static_method_pass.ets | TK-STC-001, TK-STC-002 | This Keyword Stage 1 | ES2015 |
| TK-CAND-023 | THIS-PASS-016 | static_this | static 方法调用 static | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_static_method_pass.ets | TK-STC-001, TK-STC-002 | This Keyword Stage 1 | this.method() |
| TK-CAND-024 | THIS-PASS-010 | getter_setter_this | getter this | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_getter_receiver_pass.ets | TK-GS-001 | This Keyword Stage 1 | accessor |
| TK-CAND-025 | THIS-PASS-015 | getter_setter_this | setter this | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_setter_receiver_pass.ets | TK-GS-002 | This Keyword Stage 1 | accessor |
| TK-CAND-026 | THIS-BOUND-007 | extracted_method_this | 方法提取 this 丢失 | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_extracted_method_boundary.ets | TK-EM-001, TK-MTHD-005 | This Keyword Stage 1 | 经典 bug |
| TK-CAND-027 | THIS-BOUND-003 | callback_this_boundary | callback this 丢失 | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_callback_boundary.ets | TK-CB-001, TK-CB-002 | This Keyword Stage 1 | 经典 bug |
| TK-CAND-028 | — | callback_this_boundary | 箭头 callback this | pass | P0 | planned | planned | — | — | This Keyword Stage 1 | 箭头修复 |
| TK-CAND-029 | — | callback_this_boundary | bind callback this | pass | P0 | planned | planned | — | TK-CB-003 | This Keyword Stage 1 | bind 修复 |
| TK-CAND-030 | THIS-PASS-009 | strict_mode_this_boundary | strict 函数 this undefined | pass | P0 | generated | validation_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_function_call_basic_pass.ets | TK-FUNC-001, TK-SM-001 | This Keyword Stage 1 | strict mode |
| TK-CAND-031 | THIS-BOUND-011 | this_parameter_boundary | this parameter 支持 | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_parameter_boundary.ets | TK-TP-001 | This Keyword Stage 1 | TS 特性 |
| TK-CAND-032 | THIS-BOUND-012 | this_type_boundary | polymorphic this | boundary | P0 | generated | spec_pending | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_polymorphic_this_boundary.ets | TK-TT-001, TK-TT-003 | This Keyword Stage 1 | TS 特性 |
| TK-CAND-033 | — | typescript_compatibility_boundary | TS this 兼容 | boundary | P0 | planned | planned | — | TK-TSCOMP-001 | This Keyword Stage 1 | 兼容状态 |
| TK-CAND-034 | — | arkts_dynamic_boundary | 动态 ArkTS this 支持 | boundary | P0 | planned | planned | — | TK-ARKTS-001 | This Keyword Stage 1 | 支持状态 |
| TK-CAND-035 | — | arkts_dynamic_boundary | 动态与静态差异 | boundary | P0 | planned | planned | — | — | This Keyword Stage 1 | 动态/静态 |
| TK-CAND-036 | — | function_call_this | 普通函数非 strict this | boundary | P1 | planned | planned | — | — | This Keyword Stage 1 | globalThis |
| TK-CAND-037 | — | method_call_this | 链式调用 this | pass | P1 | planned | planned | — | TK-MTHD-002 | This Keyword Stage 1 | 链式 receiver |
| TK-CAND-038 | — | arrow_lexical_this | 箭头在对象字面量中 | boundary | P1 | planned | planned | — | — | This Keyword Stage 1 | 捕获外层 |
| TK-CAND-039 | — | call_apply_bind_this | call 传 null/undefined | boundary | P1 | planned | planned | — | TK-CAB-005 | This Keyword Stage 1 | null this |
| TK-CAND-040 | — | class_instance_method_this | 实例方法返回 this | pass | P1 | planned | planned | — | TK-CIM-002 | This Keyword Stage 1 | 链式 |
| TK-CAND-041 | — | class_field_this_boundary | 实例字段 this | boundary | P1 | planned | planned | — | — | This Keyword Stage 1 | 初始化顺序 |
| TK-CAND-042 | — | derived_class_this_super_boundary | super() 前访问字段 | fail_runtime | P1 | planned | planned | — | — | This Keyword Stage 1 | ReferenceError |
| TK-CAND-043 | — | static_this | static 字段 this | boundary | P1 | planned | planned | — | TK-STC-003 | This Keyword Stage 1 | 初始化 |
| TK-CAND-044 | — | callback_this_boundary | forEach callback this | boundary | P1 | planned | planned | — | TK-CB-004 | This Keyword Stage 1 | 内置 callback |
| TK-CAND-045 | — | strict_mode_this_boundary | 模块自动 strict | boundary | P1 | planned | planned | — | TK-SM-003 | This Keyword Stage 1 | 模块 strict |

## Stage 1 Update Summary

> 本节是历史快照。原 Created Candidates 与 Additional Files 已收敛到主体表格和下方 unresolved 区域，不再重复维护。

## Unresolved Actual Files

以下实际文件没有可确认的 Candidate ID；Case ID 与 Coverage ID 已正式落地。

| Case ID | Actual Path | Test Type | Coverage ID | Generation Status | Validation Status | 备注 |
|---|---|---|---|---|---|---|
| THIS-BOUND-001 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_accessor_extracted_boundary.ets | boundary | TK-GS-001 | generated | spec_pending | No direct Candidate ID; resolved_in_task3a_fix after removing incorrect TK-EM-002 association |
| THIS-BOUND-004 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_class_field_initializer_boundary.ets | boundary | TK-CF-001, TK-CF-002 | generated | spec_pending | No direct Candidate ID; resolved for Case/Coverage traceability in Task 3A |
| THIS-BOUND-006 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_derived_constructor_return_boundary.ets | boundary | TK-DCS-002 | generated | spec_pending | No direct Candidate ID; resolved for Case/Coverage traceability in Task 3A |
| THIS-BOUND-008 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_function_strict_mode_boundary.ets | boundary | TK-FUNC-002, TK-SM-001 | generated | spec_pending | No direct Candidate ID; resolved for Case/Coverage traceability in Task 3A |
| THIS-BOUND-013 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_return_type_boundary.ets | boundary | TK-TT-001 | generated | spec_pending | No direct Candidate ID; resolved for Case/Coverage traceability in Task 3A |
| THIS-BOUND-014 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_static_field_initializer_boundary.ets | boundary | TK-STC-003 | generated | spec_pending | No direct Candidate ID; resolved for Case/Coverage traceability in Task 3A |
| THIS-BOUND-015 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_static_inheritance_boundary.ets | boundary | TK-STC-001 | generated | spec_pending | No direct Candidate ID; resolved for Case/Coverage traceability in Task 3A |
| THIS-PASS-007 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_method_update_field_pass.ets | pass | TK-CIM-001, TK-CIM-005 | generated | validation_pending | No direct Candidate ID; resolved for Case/Coverage traceability in Task 3A |
| THIS-PASS-012 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_method_receiver_update_pass.ets | pass | TK-MTHD-001 | generated | validation_pending | No direct Candidate ID; resolved for Case/Coverage traceability in Task 3A |
| THIS-REGR-001 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_arrow_lexical_regression.ets | regression | TK-ARR-001, TK-ARR-002 | generated | validation_pending | No direct Candidate ID; resolved for Case/Coverage traceability in Task 3A |
| THIS-REGR-002 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_call_apply_bind_regression.ets | regression | TK-CAB-001, TK-CAB-002, TK-CAB-003, TK-CAB-004 | generated | validation_pending | No direct Candidate ID; resolved for Case/Coverage traceability in Task 3A |
| THIS-REGR-003 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_class_instance_regression.ets | regression | TK-CIM-001, TK-CIM-002 | generated | validation_pending | No direct Candidate ID; resolved for Case/Coverage traceability in Task 3A |
| THIS-REGR-004 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_derived_super_regression.ets | regression | TK-DCS-002, TK-DCS-005 | generated | validation_pending | No direct Candidate ID; resolved for Case/Coverage traceability in Task 3A |
