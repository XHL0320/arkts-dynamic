# This Keyword Stage 1 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理目录数量 | 1 |
| 新增 pass 用例数量 | 16 |
| 新增 fail_compile 用例数量 | 0 |
| 新增 fail_runtime 用例数量 | 0 |
| 新增 boundary 用例数量 | 15 |
| 新增 regression 用例数量 | 4 |
| 新增 helper 文件数量 | 0 |
| 新增 .ets 文件总数 | 35 |
| 更新 coverage_matrix 文件数量 | 1 |
| 更新 candidate index 文件数量 | 1 |

## Generated Cases

| 文件 | This Keyword 方向 | 用例类型 | 测试点 | 是否适合 ohosTest | 是否需要 test262 对照 |
|---|---|---|---|---|---|
| `xts/pass/this_function_call_basic_pass.ets` | function_call_this | pass | 普通函数 this | yes | yes |
| `xts/pass/this_method_call_receiver_pass.ets` | method_call_this | pass | 方法 receiver this | yes | yes |
| `xts/pass/this_method_receiver_update_pass.ets` | method_call_this | pass | 方法 this 更新状态 | yes | yes |
| `xts/pass/this_arrow_lexical_this_pass.ets` | arrow_lexical_this | pass | 箭头 lexical this | yes | yes |
| `xts/pass/this_nested_arrow_preserves_this_pass.ets` | arrow_lexical_this | pass | 嵌套箭头 this | yes | yes |
| `xts/pass/this_call_changes_this_pass.ets` | call_apply_bind_this | pass | call this | yes | yes |
| `xts/pass/this_apply_changes_this_pass.ets` | call_apply_bind_this | pass | apply this | yes | yes |
| `xts/pass/this_bind_changes_this_pass.ets` | call_apply_bind_this | pass | bind this | yes | yes |
| `xts/pass/this_object_literal_method_pass.ets` | object_literal_method_this | pass | 对象字面量方法 this | yes | yes |
| `xts/pass/this_getter_receiver_pass.ets` | getter_setter_this | pass | getter this | yes | yes |
| `xts/pass/this_setter_receiver_pass.ets` | getter_setter_this | pass | setter this | yes | yes |
| `xts/pass/this_class_constructor_pass.ets` | class_constructor_this | pass | constructor this | yes | yes |
| `xts/pass/this_class_instance_method_pass.ets` | class_instance_method_this | pass | 实例方法 this | yes | yes |
| `xts/pass/this_class_method_update_field_pass.ets` | class_instance_method_this | pass | 方法更新字段 | yes | yes |
| `xts/pass/this_derived_after_super_pass.ets` | derived_class_this_super_boundary | pass | super 后 this | yes | yes |
| `xts/pass/this_static_method_pass.ets` | static_this | pass | static 方法 this | yes | yes |
| `xts/boundary/this_function_strict_mode_boundary.ets` | strict_mode_this_boundary | boundary | strict 函数 this | yes | yes |
| `xts/boundary/this_extracted_method_boundary.ets` | extracted_method_this | boundary | 方法提取 this 丢失 | yes | yes |
| `xts/boundary/this_nested_normal_function_boundary.ets` | nested_function_this | boundary | 嵌套普通函数 this | yes | yes |
| `xts/boundary/this_bind_ignores_later_call_boundary.ets` | call_apply_bind_this | boundary | bind 后 call | yes | yes |
| `xts/boundary/this_accessor_extracted_boundary.ets` | getter_setter_this | boundary | accessor 提取 | yes | no |
| `xts/boundary/this_class_field_initializer_boundary.ets` | class_field_this_boundary | boundary | 字段初始化 this | yes | no |
| `xts/boundary/this_derived_before_super_boundary.ets` | derived_class_this_super_boundary | boundary | super 前 this | yes | yes |
| `xts/boundary/this_derived_constructor_return_boundary.ets` | derived_class_this_super_boundary | boundary | constructor return | yes | no |
| `xts/boundary/this_static_field_initializer_boundary.ets` | static_this | boundary | static 字段 this | yes | no |
| `xts/boundary/this_static_inheritance_boundary.ets` | static_this | boundary | static 继承 this | yes | no |
| `xts/boundary/this_callback_boundary.ets` | callback_this_boundary | boundary | callback this | yes | no |
| `xts/boundary/this_module_top_level_boundary.ets` | module_top_level_this | boundary | 模块顶层 this | yes | no |
| `xts/boundary/this_parameter_boundary.ets` | this_parameter_boundary | boundary | this parameter | yes | no |
| `xts/boundary/this_return_type_boundary.ets` | this_type_boundary | boundary | this 返回类型 | yes | no |
| `xts/boundary/this_polymorphic_this_boundary.ets` | this_type_boundary | boundary | polymorphic this | yes | no |
| `xts/regression/this_arrow_lexical_regression.ets` | arrow_lexical_this | regression | 箭头 lexical 回归 | yes | yes |
| `xts/regression/this_call_apply_bind_regression.ets` | call_apply_bind_this | regression | call/apply/bind 回归 | yes | yes |
| `xts/regression/this_class_instance_regression.ets` | class_instance_method_this | regression | class this 回归 | yes | yes |
| `xts/regression/this_derived_super_regression.ets` | derived_class_this_super_boundary | regression | derived super 回归 | yes | yes |

## Boundary Cases

| 文件 | 测试点 | 放入 boundary 原因 | 后续确认方式 |
|---|---|---|---|
| `this_function_strict_mode_boundary.ets` | strict 函数 this | strict/非 strict 差异待确认 | runtime smoke |
| `this_extracted_method_boundary.ets` | 方法提取 this 丢失 | this 变为 undefined/globalThis 待确认 | runtime smoke |
| `this_nested_normal_function_boundary.ets` | 嵌套普通函数 this | 内层函数 this 与外层不同 | runtime smoke |
| `this_bind_ignores_later_call_boundary.ets` | bind 后 call | bind 永久绑定行为待确认 | runtime smoke |
| `this_accessor_extracted_boundary.ets` | accessor 提取 | getter/setter 提取 this 行为 | runtime smoke |
| `this_class_field_initializer_boundary.ets` | 字段初始化 this | 字段初始化中 this 行为待确认 | runtime smoke |
| `this_derived_before_super_boundary.ets` | super 前 this | ReferenceError 行为待确认 | runtime smoke / compiler |
| `this_derived_constructor_return_boundary.ets` | constructor return | 返回对象影响 this | runtime smoke |
| `this_static_field_initializer_boundary.ets` | static 字段 this | static 字段中 this 为类构造器 | runtime smoke |
| `this_static_inheritance_boundary.ets` | static 继承 this | 继承链中 static this | runtime smoke |
| `this_callback_boundary.ets` | callback this | callback 丢失 receiver | runtime smoke |
| `this_module_top_level_boundary.ets` | 模块顶层 this | 模块模式 this 为 undefined | runtime smoke |
| `this_parameter_boundary.ets` | this parameter | TS 特性支持待确认 | compiler |
| `this_return_type_boundary.ets` | this 返回类型 | polymorphic this 支持待确认 | compiler |
| `this_polymorphic_this_boundary.ets` | polymorphic this | 继承链多态 this | compiler |

## Updated Documents

| 文件 | 更新内容 |
|---|---|
| `coverage_matrix.md` | 追加 Stage 1 Update Summary，记录 35 个生成文件与 coverage ID 映射 |
| `this_keyword_first_batch_candidate_index.md` | 追加 Stage 1 Update Summary，30 个 candidate 标记为 created，15 个保持 planned |

## Ownership Notes

| 测试点 | 归属判断 |
|---|---|
| function call this | this_keyword/function 交叉，本阶段从 this 绑定视角覆盖 |
| method receiver this | this_keyword/function 交叉，本阶段从 receiver 视角覆盖 |
| arrow lexical this | this_keyword/function 交叉，本阶段覆盖 this 捕获 |
| call/apply/bind | this_keyword/function/builtin 交叉，本阶段只覆盖 this 绑定 |
| class constructor this | this_keyword/class 交叉，本阶段覆盖 this 使用边界 |
| derived super before this | this_keyword/class 交叉，本阶段做 boundary |
| static this | this_keyword/class 交叉，本阶段覆盖 static this 边界 |
| module top-level this | this_keyword/module 交叉，本阶段做 boundary |
| this parameter / this type | this_keyword/TS compatibility 交叉，本阶段做 boundary |
| function call/return/closure | 不归 this_keyword，归 `01_function` |
| class constructor/member/inheritance | 不归 this_keyword，归 `02_class` |

## Notes

- 本阶段生成 This Keyword P0/P1 XTS 候选。
- 本阶段未进行 ECMA / test262 规范对齐。
- 本阶段未进行 TypeScript compatibility 完整映射。
- 本阶段未进行 DevEco / hvigor 实际编译验证。
- 本阶段未修改 `06_module` / `05_null_safety` / `04_generic` / `03_interface` / `02_class` / `01_function` / `00_the_basics`。
- 本阶段未提交 commit，未 push 远程仓库。
- 35 个 .ets 文件中 15 个为 boundary 类型，反映 this 在动态 ArkTS 中部分行为待确认。
- 0 个 fail_compile 文件，因为 this 支持状态不确定时不直接标为 fail_compile。
- 0 个 fail_runtime 文件，因为 derived super 前使用 this 的运行时行为不确定时优先放入 boundary。
- 4 个 regression 文件验证箭头 lexical this、call/apply/bind、class this 和 derived super/this 的核心行为。
- this 是 ECMAScript 原生能力，有真实运行时语义，因此更多测试点为 pass（真实运行时行为）。
- 13 个文件无直接 candidate ID，已记录在 candidate index 的 Additional Files 部分。
