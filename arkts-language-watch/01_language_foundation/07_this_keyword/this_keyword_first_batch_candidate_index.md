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

| Candidate ID | This Keyword 方向 | Test Point | Case Type | Priority | Suggested File Path | Suitable for ohosTest | Needs test262 | Related Chapter | Status | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| TK-CAND-001 | global_this_boundary | globalThis 访问 | pass | P0 | `07_this_keyword/xts/pass/global_this_access_pass.ets` | yes | yes | this_keyword / types | planned | ES 核心行为 |
| TK-CAND-002 | module_top_level_this | 模块顶层 this | boundary | P0 | `07_this_keyword/xts/boundary/module_top_this_boundary.ets` | yes | no | this_keyword / module | planned | 模块模式待确认 |
| TK-CAND-003 | function_call_this | 普通函数 strict this | pass | P0 | `07_this_keyword/xts/pass/function_call_strict_this_pass.ets` | yes | yes | this_keyword / function | planned | ES 核心行为 |
| TK-CAND-004 | function_call_this | 嵌套函数 this 丢失 | boundary | P0 | `07_this_keyword/xts/boundary/nested_function_this_loss_boundary.ets` | yes | yes | this_keyword / function | planned | 经典 bug |
| TK-CAND-005 | method_call_this | obj.method() this | pass | P0 | `07_this_keyword/xts/pass/method_call_this_pass.ets` | yes | yes | this_keyword / function | planned | ES 核心行为 |
| TK-CAND-006 | method_call_this | 方法提取 this 丢失 | boundary | P0 | `07_this_keyword/xts/boundary/extracted_method_this_boundary.ets` | yes | yes | this_keyword / function | planned | 经典 bug |
| TK-CAND-007 | arrow_lexical_this | 箭头函数 lexical this | pass | P0 | `07_this_keyword/xts/pass/arrow_lexical_this_pass.ets` | yes | yes | this_keyword / function | planned | ES2015 |
| TK-CAND-008 | arrow_lexical_this | 嵌套箭头保持 this | pass | P0 | `07_this_keyword/xts/pass/nested_arrow_this_pass.ets` | yes | yes | this_keyword / function | planned | 多层捕获 |
| TK-CAND-009 | arrow_lexical_this | call 不改变箭头 this | pass | P0 | `07_this_keyword/xts/pass/arrow_call_unchanged_pass.ets` | yes | yes | this_keyword / function | planned | call 无效 |
| TK-CAND-010 | arrow_lexical_this | bind 不改变箭头 this | pass | P0 | `07_this_keyword/xts/pass/arrow_bind_unchanged_pass.ets` | yes | yes | this_keyword / function | planned | bind 无效 |
| TK-CAND-011 | call_apply_bind_this | f.call(obj) this | pass | P0 | `07_this_keyword/xts/pass/call_this_pass.ets` | yes | yes | this_keyword / function | planned | ES 核心行为 |
| TK-CAND-012 | call_apply_bind_this | f.apply(obj) this | pass | P0 | `07_this_keyword/xts/pass/apply_this_pass.ets` | yes | yes | this_keyword / function | planned | ES 核心行为 |
| TK-CAND-013 | call_apply_bind_this | f.bind(obj)() this | pass | P0 | `07_this_keyword/xts/pass/bind_this_pass.ets` | yes | yes | this_keyword / function | planned | ES 核心行为 |
| TK-CAND-014 | call_apply_bind_this | bind 后 call 不改变 | pass | P0 | `07_this_keyword/xts/pass/bind_call_unchanged_pass.ets` | yes | yes | this_keyword / function | planned | 永久绑定 |
| TK-CAND-015 | object_literal_method_this | 对象字面量方法 this | pass | P0 | `07_this_keyword/xts/pass/object_literal_method_this_pass.ets` | yes | yes | this_keyword / function | planned | ES 核心行为 |
| TK-CAND-016 | class_constructor_this | base constructor this | pass | P0 | `07_this_keyword/xts/pass/base_constructor_this_pass.ets` | yes | yes | this_keyword / class | planned | ES2015 |
| TK-CAND-017 | class_constructor_this | constructor 字段 this | pass | P0 | `07_this_keyword/xts/pass/constructor_field_this_pass.ets` | yes | yes | this_keyword / class | planned | 字段初始化 |
| TK-CAND-018 | class_instance_method_this | 实例方法 this | pass | P0 | `07_this_keyword/xts/pass/instance_method_this_pass.ets` | yes | yes | this_keyword / class | planned | ES2015 |
| TK-CAND-019 | class_instance_method_this | 方法提取 this 丢失 | boundary | P0 | `07_this_keyword/xts/boundary/class_method_extract_boundary.ets` | yes | no | this_keyword / class | planned | 经典 bug |
| TK-CAND-020 | derived_class_this_super_boundary | super() 前使用 this | fail_runtime | P0 | `07_this_keyword/xts/fail_runtime/derived_this_before_super_fail_runtime.ets` | yes | yes | this_keyword / class | planned | ReferenceError |
| TK-CAND-021 | derived_class_this_super_boundary | super() 后使用 this | pass | P0 | `07_this_keyword/xts/pass/derived_this_after_super_pass.ets` | yes | yes | this_keyword / class | planned | 已初始化 |
| TK-CAND-022 | static_this | static 方法 this | pass | P0 | `07_this_keyword/xts/pass/static_method_this_pass.ets` | yes | yes | this_keyword / class | planned | ES2015 |
| TK-CAND-023 | static_this | static 方法调用 static | pass | P0 | `07_this_keyword/xts/pass/static_method_call_static_pass.ets` | yes | yes | this_keyword / class | planned | this.method() |
| TK-CAND-024 | getter_setter_this | getter this | pass | P0 | `07_this_keyword/xts/pass/getter_this_pass.ets` | yes | yes | this_keyword / class | planned | accessor |
| TK-CAND-025 | getter_setter_this | setter this | pass | P0 | `07_this_keyword/xts/pass/setter_this_pass.ets` | yes | yes | this_keyword / class | planned | accessor |
| TK-CAND-026 | extracted_method_this | 方法提取 this 丢失 | boundary | P0 | `07_this_keyword/xts/boundary/extracted_method_this_boundary.ets` | yes | yes | this_keyword / function | planned | 经典 bug |
| TK-CAND-027 | callback_this_boundary | callback this 丢失 | boundary | P0 | `07_this_keyword/xts/boundary/callback_this_loss_boundary.ets` | yes | no | this_keyword / function | planned | 经典 bug |
| TK-CAND-028 | callback_this_boundary | 箭头 callback this | pass | P0 | `07_this_keyword/xts/pass/arrow_callback_this_pass.ets` | yes | yes | this_keyword / function | planned | 箭头修复 |
| TK-CAND-029 | callback_this_boundary | bind callback this | pass | P0 | `07_this_keyword/xts/pass/bind_callback_this_pass.ets` | yes | yes | this_keyword / function | planned | bind 修复 |
| TK-CAND-030 | strict_mode_this_boundary | strict 函数 this undefined | pass | P0 | `07_this_keyword/xts/pass/strict_function_this_pass.ets` | yes | yes | this_keyword / function | planned | strict mode |
| TK-CAND-031 | this_parameter_boundary | this parameter 支持 | boundary | P0 | `07_this_keyword/xts/boundary/this_parameter_boundary.ets` | yes | no | this_keyword / typescript | planned | TS 特性 |
| TK-CAND-032 | this_type_boundary | polymorphic this | boundary | P0 | `07_this_keyword/xts/boundary/polymorphic_this_boundary.ets` | yes | no | this_keyword / typescript | planned | TS 特性 |
| TK-CAND-033 | typescript_compatibility_boundary | TS this 兼容 | boundary | P0 | `07_this_keyword/xts/boundary/ts_this_compatibility_boundary.ets` | yes | no | this_keyword / typescript | planned | 兼容状态 |
| TK-CAND-034 | arkts_dynamic_boundary | 动态 ArkTS this 支持 | boundary | P0 | `07_this_keyword/xts/boundary/arkts_this_support_boundary.ets` | yes | no | this_keyword | planned | 支持状态 |
| TK-CAND-035 | arkts_dynamic_boundary | 动态与静态差异 | boundary | P0 | `07_this_keyword/xts/boundary/arkts_dynamic_vs_static_boundary.ets` | yes | no | this_keyword | planned | 动态/静态 |
| TK-CAND-036 | function_call_this | 普通函数非 strict this | boundary | P1 | `07_this_keyword/xts/boundary/function_call_non_strict_this_boundary.ets` | yes | yes | this_keyword / function | planned | globalThis |
| TK-CAND-037 | method_call_this | 链式调用 this | pass | P1 | `07_this_keyword/xts/pass/chained_method_this_pass.ets` | yes | yes | this_keyword / function | planned | 链式 receiver |
| TK-CAND-038 | arrow_lexical_this | 箭头在对象字面量中 | boundary | P1 | `07_this_keyword/xts/boundary/arrow_in_object_boundary.ets` | yes | no | this_keyword / function | planned | 捕获外层 |
| TK-CAND-039 | call_apply_bind_this | call 传 null/undefined | boundary | P1 | `07_this_keyword/xts/boundary/call_null_boundary.ets` | yes | yes | this_keyword / function | planned | null this |
| TK-CAND-040 | class_instance_method_this | 实例方法返回 this | pass | P1 | `07_this_keyword/xts/pass/instance_method_return_this_pass.ets` | yes | yes | this_keyword / class | planned | 链式 |
| TK-CAND-041 | class_field_this_boundary | 实例字段 this | boundary | P1 | `07_this_keyword/xts/boundary/class_field_this_boundary.ets` | yes | no | this_keyword / class | planned | 初始化顺序 |
| TK-CAND-042 | derived_class_this_super_boundary | super() 前访问字段 | fail_runtime | P1 | `07_this_keyword/xts/fail_runtime/derived_field_before_super_fail_runtime.ets` | yes | no | this_keyword / class | planned | ReferenceError |
| TK-CAND-043 | static_this | static 字段 this | boundary | P1 | `07_this_keyword/xts/boundary/static_field_this_boundary.ets` | yes | no | this_keyword / class | planned | 初始化 |
| TK-CAND-044 | callback_this_boundary | forEach callback this | boundary | P1 | `07_this_keyword/xts/boundary/foreach_callback_this_boundary.ets` | yes | no | this_keyword / function | planned | 内置 callback |
| TK-CAND-045 | strict_mode_this_boundary | 模块自动 strict | boundary | P1 | `07_this_keyword/xts/boundary/module_auto_strict_boundary.ets` | yes | no | this_keyword / module | planned | 模块 strict |

## Stage 1 Update Summary

Stage 1 生成了 35 个 `.ets` 文件（16 pass + 15 boundary + 4 regression），对应 30 个 candidate 标记为 created，15 个保持 planned。

### Created Candidates (30)

| Candidate ID | 实际路径 |
|---|---|
| TK-CAND-001 | `xts/pass/this_function_call_basic_pass.ets` |
| TK-CAND-003 | `xts/pass/this_function_call_basic_pass.ets` |
| TK-CAND-005 | `xts/pass/this_method_call_receiver_pass.ets` |
| TK-CAND-007 | `xts/pass/this_arrow_lexical_this_pass.ets` |
| TK-CAND-008 | `xts/pass/this_nested_arrow_preserves_this_pass.ets` |
| TK-CAND-011 | `xts/pass/this_call_changes_this_pass.ets` |
| TK-CAND-012 | `xts/pass/this_apply_changes_this_pass.ets` |
| TK-CAND-013 | `xts/pass/this_bind_changes_this_pass.ets` |
| TK-CAND-015 | `xts/pass/this_object_literal_method_pass.ets` |
| TK-CAND-016 | `xts/pass/this_class_constructor_pass.ets` |
| TK-CAND-017 | `xts/pass/this_class_constructor_pass.ets` |
| TK-CAND-018 | `xts/pass/this_class_instance_method_pass.ets` |
| TK-CAND-021 | `xts/pass/this_derived_after_super_pass.ets` |
| TK-CAND-022 | `xts/pass/this_static_method_pass.ets` |
| TK-CAND-023 | `xts/pass/this_static_method_pass.ets` |
| TK-CAND-024 | `xts/pass/this_getter_receiver_pass.ets` |
| TK-CAND-025 | `xts/pass/this_setter_receiver_pass.ets` |
| TK-CAND-026 | `xts/boundary/this_extracted_method_boundary.ets` |
| TK-CAND-027 | `xts/boundary/this_callback_boundary.ets` |
| TK-CAND-030 | `xts/pass/this_function_call_basic_pass.ets` |
| TK-CAND-031 | `xts/boundary/this_parameter_boundary.ets` |
| TK-CAND-032 | `xts/boundary/this_polymorphic_this_boundary.ets` |
| TK-CAND-004 | `xts/boundary/this_nested_normal_function_boundary.ets` |
| TK-CAND-006 | `xts/boundary/this_extracted_method_boundary.ets` |
| TK-CAND-010 | `xts/pass/this_arrow_lexical_this_pass.ets` |
| TK-CAND-014 | `xts/boundary/this_bind_ignores_later_call_boundary.ets` |
| TK-CAND-019 | `xts/boundary/this_extracted_method_boundary.ets` |
| TK-CAND-020 | `xts/boundary/this_derived_before_super_boundary.ets` |
| TK-CAND-002 | `xts/boundary/this_module_top_level_boundary.ets` |

### Additional Files Without Direct Candidate

| 文件 | Coverage IDs | 用例类型 |
|---|---|---|
| `xts/pass/this_method_receiver_update_pass.ets` | TK-MTHD-001 | pass |
| `xts/boundary/this_function_strict_mode_boundary.ets` | TK-FUNC-002, TK-SM-001 | boundary |
| `xts/boundary/this_accessor_extracted_boundary.ets` | TK-GS-001 | boundary |
| `xts/boundary/this_class_field_initializer_boundary.ets` | TK-CF-001 | boundary |
| `xts/boundary/this_derived_constructor_return_boundary.ets` | TK-DCS-002 | boundary |
| `xts/boundary/this_static_field_initializer_boundary.ets` | TK-STC-003 | boundary |
| `xts/boundary/this_static_inheritance_boundary.ets` | TK-STC-001 | boundary |
| `xts/boundary/this_return_type_boundary.ets` | TK-TT-001 | boundary |
| `xts/regression/this_arrow_lexical_regression.ets` | TK-ARR-001 | regression |
| `xts/regression/this_call_apply_bind_regression.ets` | TK-CAB-001 | regression |
| `xts/regression/this_class_instance_regression.ets` | TK-CIM-001 | regression |
| `xts/regression/this_derived_super_regression.ets` | TK-DCS-002 | regression |
| `xts/pass/this_class_method_update_field_pass.ets` | TK-CIM-001 | pass |
