# This Keyword XTS Inventory

## Summary

| 项目 | 数量 |
|---|---:|
| .ets 文件总数 | 35 |
| pass 用例数量 | 16 |
| fail_compile 用例数量 | 0 |
| fail_runtime 用例数量 | 0 |
| boundary 用例数量 | 15 |
| regression 用例数量 | 4 |
| helper 文件数量 | 0 |
| unknown 类型文件数量 | 0 |

## Inventory By Type

| 用例类型 | 数量 | 目录 |
|---|---:|---|
| pass | 16 | `xts/pass/` |
| fail_compile | 0 | `xts/fail_compile/` |
| fail_runtime | 0 | `xts/fail_runtime/` |
| boundary | 15 | `xts/boundary/` |
| regression | 4 | `xts/regression/` |
| helper | 0 | `xts/helpers/` |

## This Keyword Direction Summary

| This Keyword 方向 | pass | fail_compile | fail_runtime | boundary | regression | helper | 合计 |
|---|---:|---:|---:|---:|---:|---:|---:|
| function_call_this | 1 | 0 | 0 | 1 | 0 | 0 | 2 |
| method_call_this | 3 | 0 | 0 | 1 | 0 | 0 | 4 |
| arrow_lexical_this | 2 | 0 | 0 | 0 | 1 | 0 | 3 |
| nested_function_this | 0 | 0 | 0 | 1 | 0 | 0 | 1 |
| call_apply_bind_this | 3 | 0 | 0 | 1 | 1 | 0 | 5 |
| object_literal_method_this | 1 | 0 | 0 | 0 | 0 | 0 | 1 |
| class_constructor_this | 1 | 0 | 0 | 0 | 0 | 0 | 1 |
| class_instance_method_this | 2 | 0 | 0 | 0 | 1 | 0 | 3 |
| class_field_this_boundary | 0 | 0 | 0 | 1 | 0 | 0 | 1 |
| derived_class_this_super_boundary | 1 | 0 | 0 | 2 | 1 | 0 | 4 |
| static_this | 1 | 0 | 0 | 2 | 0 | 0 | 3 |
| getter_setter_this | 2 | 0 | 0 | 1 | 0 | 0 | 3 |
| extracted_method_this | 0 | 0 | 0 | 1 | 0 | 0 | 1 |
| callback_this_boundary | 0 | 0 | 0 | 1 | 0 | 0 | 1 |
| module_top_level_this | 0 | 0 | 0 | 1 | 0 | 0 | 1 |
| strict_mode_this_boundary | 0 | 0 | 0 | 1 | 0 | 0 | 1 |
| this_parameter_boundary | 0 | 0 | 0 | 1 | 0 | 0 | 1 |
| this_type_boundary | 0 | 0 | 0 | 2 | 0 | 0 | 2 |
| global_this_boundary | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| typescript_compatibility_boundary | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| arkts_dynamic_boundary | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

## Case List

| 序号 | 文件路径 | 用例类型 | This Keyword 方向 | 推测测试点 | 所属阶段 | 备注 |
|---|---|---|---|---|---|---|
| 1 | `xts/pass/this_function_call_basic_pass.ets` | pass | function_call_this | 普通函数 this | Stage 1 | ES 核心行为 |
| 2 | `xts/pass/this_method_call_receiver_pass.ets` | pass | method_call_this | 方法 receiver this | Stage 1 | ES 核心行为 |
| 3 | `xts/pass/this_method_receiver_update_pass.ets` | pass | method_call_this | 方法更新状态 | Stage 1 | ES 核心行为 |
| 4 | `xts/pass/this_arrow_lexical_this_pass.ets` | pass | arrow_lexical_this | 箭头 lexical this | Stage 1 | ES2015 |
| 5 | `xts/pass/this_nested_arrow_preserves_this_pass.ets` | pass | arrow_lexical_this | 嵌套箭头 this | Stage 1 | ES2015 |
| 6 | `xts/pass/this_call_changes_this_pass.ets` | pass | call_apply_bind_this | call this | Stage 1 | ES 核心行为 |
| 7 | `xts/pass/this_apply_changes_this_pass.ets` | pass | call_apply_bind_this | apply this | Stage 1 | ES 核心行为 |
| 8 | `xts/pass/this_bind_changes_this_pass.ets` | pass | call_apply_bind_this | bind this | Stage 1 | ES 核心行为 |
| 9 | `xts/pass/this_object_literal_method_pass.ets` | pass | object_literal_method_this | 对象字面量方法 this | Stage 1 | ES 核心行为 |
| 10 | `xts/pass/this_getter_receiver_pass.ets` | pass | getter_setter_this | getter this | Stage 1 | accessor |
| 11 | `xts/pass/this_setter_receiver_pass.ets` | pass | getter_setter_this | setter this | Stage 1 | accessor |
| 12 | `xts/pass/this_class_constructor_pass.ets` | pass | class_constructor_this | constructor this | Stage 1 | ES2015 |
| 13 | `xts/pass/this_class_instance_method_pass.ets` | pass | class_instance_method_this | 实例方法 this | Stage 1 | ES2015 |
| 14 | `xts/pass/this_class_method_update_field_pass.ets` | pass | class_instance_method_this | 方法更新字段 | Stage 1 | ES2015 |
| 15 | `xts/pass/this_derived_after_super_pass.ets` | pass | derived_class_this_super_boundary | super 后 this | Stage 1 | ES2015 |
| 16 | `xts/pass/this_static_method_pass.ets` | pass | static_this | static 方法 this | Stage 1 | ES2015 |
| 17 | `xts/boundary/this_function_strict_mode_boundary.ets` | boundary | strict_mode_this_boundary | strict 函数 this | Stage 1 | strict/非 strict |
| 18 | `xts/boundary/this_extracted_method_boundary.ets` | boundary | extracted_method_this | 方法提取 this 丢失 | Stage 1 | 经典 bug |
| 19 | `xts/boundary/this_nested_normal_function_boundary.ets` | boundary | nested_function_this | 嵌套普通函数 this | Stage 1 | this 丢失 |
| 20 | `xts/boundary/this_bind_ignores_later_call_boundary.ets` | boundary | call_apply_bind_this | bind 后 call | Stage 1 | 永久绑定 |
| 21 | `xts/boundary/this_accessor_extracted_boundary.ets` | boundary | getter_setter_this | accessor 提取 | Stage 1 | 提取边界 |
| 22 | `xts/boundary/this_class_field_initializer_boundary.ets` | boundary | class_field_this_boundary | 字段初始化 this | Stage 1 | 初始化顺序 |
| 23 | `xts/boundary/this_derived_before_super_boundary.ets` | boundary | derived_class_this_super_boundary | super 前 this | Stage 1 | ReferenceError |
| 24 | `xts/boundary/this_derived_constructor_return_boundary.ets` | boundary | derived_class_this_super_boundary | constructor return | Stage 1 | 返回影响 this |
| 25 | `xts/boundary/this_static_field_initializer_boundary.ets` | boundary | static_this | static 字段 this | Stage 1 | 初始化 |
| 26 | `xts/boundary/this_static_inheritance_boundary.ets` | boundary | static_this | static 继承 this | Stage 1 | 继承链 |
| 27 | `xts/boundary/this_callback_boundary.ets` | boundary | callback_this_boundary | callback this | Stage 1 | 经典 bug |
| 28 | `xts/boundary/this_module_top_level_boundary.ets` | boundary | module_top_level_this | 模块顶层 this | Stage 1 | 模块模式 |
| 29 | `xts/boundary/this_parameter_boundary.ets` | boundary | this_parameter_boundary | this parameter | Stage 1 | TS 特性 |
| 30 | `xts/boundary/this_return_type_boundary.ets` | boundary | this_type_boundary | this 返回类型 | Stage 1 | TS 特性 |
| 31 | `xts/boundary/this_polymorphic_this_boundary.ets` | boundary | this_type_boundary | polymorphic this | Stage 1 | TS 特性 |
| 32 | `xts/regression/this_arrow_lexical_regression.ets` | regression | arrow_lexical_this | 箭头 lexical 回归 | Stage 1 | 回归验证 |
| 33 | `xts/regression/this_call_apply_bind_regression.ets` | regression | call_apply_bind_this | call/apply/bind 回归 | Stage 1 | 回归验证 |
| 34 | `xts/regression/this_class_instance_regression.ets` | regression | class_instance_method_this | class this 回归 | Stage 1 | 回归验证 |
| 35 | `xts/regression/this_derived_super_regression.ets` | regression | derived_class_this_super_boundary | derived super 回归 | Stage 1 | 回归验证 |
