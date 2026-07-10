# Keyword Stage 1 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理目录数量 | 1 |
| 新增 pass 用例数量 | 13 |
| 新增 fail_compile 用例数量 | 5 |
| 新增 fail_runtime 用例数量 | 0 |
| 新增 boundary 用例数量 | 10 |
| 新增 regression 用例数量 | 0 |
| 新增 .ets 文件总数 | 28 |
| 更新 coverage_matrix 文件数量 | 1 |
| 更新 candidate index 文件数量 | 1 |

## Generated Cases

| 文件 | 关键字方向 | 用例类型 | 测试点 | 是否适合 ohosTest | 是否需要 test262 对照 |
|---|---|---|---|---|---|
| `xts/pass/keyword_var_declaration_pass.ets` | declaration_keywords | pass | var 关键字正常声明 | yes | yes |
| `xts/pass/keyword_let_const_declaration_pass.ets` | declaration_keywords | pass | let/const 关键字正常声明 | yes | yes |
| `xts/pass/keyword_function_declaration_pass.ets` | declaration_keywords | pass | function 关键字正常声明 | yes | yes |
| `xts/pass/keyword_class_declaration_pass.ets` | declaration_keywords | pass | class 关键字正常声明 | yes | yes |
| `xts/pass/keyword_if_else_pass.ets` | statement_keywords | pass | if/else 关键字正常使用 | yes | yes |
| `xts/pass/keyword_switch_case_default_pass.ets` | statement_keywords | pass | switch/case/default 关键字 | yes | yes |
| `xts/pass/keyword_for_while_do_pass.ets` | statement_keywords | pass | for/while/do 关键字 | yes | yes |
| `xts/pass/keyword_break_continue_pass.ets` | statement_keywords | pass | break/continue 关键字 | yes | yes |
| `xts/pass/keyword_throw_try_catch_finally_pass.ets` | statement_keywords | pass | throw/try/catch/finally 关键字 | yes | yes |
| `xts/pass/keyword_typeof_delete_void_pass.ets` | operator_keywords | pass | typeof/void/delete 关键字 | yes | yes |
| `xts/pass/keyword_instanceof_in_new_pass.ets` | operator_keywords | pass | instanceof/in/new 关键字 | yes | yes |
| `xts/pass/keyword_true_false_null_literal_pass.ets` | literal_keywords | pass | true/false/null 字面量关键字 | yes | yes |
| `xts/pass/keyword_reserved_word_as_object_property_pass.ets` | property_name_boundary | pass | 关键字作计算属性名 | yes | yes |
| `xts/fail_compile/keyword_return_outside_function_fail_compile.ets` | statement_keywords | fail_compile | return 在函数外 SyntaxError | no | yes |
| `xts/fail_compile/keyword_literal_as_identifier_fail_compile.ets` | literal_keywords | fail_compile | true/false/null 作标识符 | no | yes |
| `xts/fail_compile/keyword_reserved_word_as_variable_fail_compile.ets` | reserved_words | fail_compile | 保留字作变量名 | no | yes |
| `xts/fail_compile/keyword_reserved_word_as_function_fail_compile.ets` | reserved_words | fail_compile | 保留字作函数名 | no | yes |
| `xts/fail_compile/keyword_await_outside_async_fail_compile.ets` | async_generator_keywords | fail_compile | await 在非 async 上下文 | no | yes |
| `xts/boundary/keyword_super_boundary.ets` | operator_keywords | boundary | super 关键字在 class 上下文 | yes | yes |
| `xts/boundary/keyword_async_function_boundary.ets` | async_generator_keywords | boundary | async 关键字标记函数 | yes | no |
| `xts/boundary/keyword_await_in_async_boundary.ets` | async_generator_keywords | boundary | await 在 async 函数内 | yes | no |
| `xts/boundary/keyword_yield_contextual_boundary.ets` | async_generator_keywords | boundary | yield 上下文关键字 | yes | no |
| `xts/boundary/keyword_import_export_boundary.ets` | module_keywords | boundary | import/export 模块关键字 | no | no |
| `xts/boundary/keyword_enum_reserved_boundary.ets` | future_reserved_words | boundary | enum 保留字 + TS 声明 | yes | no |
| `xts/boundary/keyword_interface_strict_boundary.ets` | strict_mode_reserved_words | boundary | interface 严格模式 + TS 类型 | yes | no |
| `xts/boundary/keyword_private_protected_public_static_boundary.ets` | strict_mode_reserved_words | boundary | private/protected/public/static | yes | no |
| `xts/boundary/keyword_type_namespace_declare_boundary.ets` | typescript_keywords | boundary | type/namespace/declare | yes | no |
| `xts/boundary/keyword_abstract_readonly_boundary.ets` | typescript_keywords | boundary | abstract/readonly | yes | no |

## Boundary Cases

| 文件 | 测试点 | 放入 boundary 原因 | 后续确认方式 |
|---|---|---|---|
| `xts/boundary/keyword_super_boundary.ets` | super 关键字在 class 继承中 | 动态 ArkTS class 继承和 super 支持待确认 | compiler / runtime smoke |
| `xts/boundary/keyword_async_function_boundary.ets` | async 关键字标记函数 | 动态 ArkTS async/await 支持待确认 | compiler |
| `xts/boundary/keyword_await_in_async_boundary.ets` | await 在 async 函数内 | 动态 ArkTS await 支持待确认 | compiler / runtime |
| `xts/boundary/keyword_yield_contextual_boundary.ets` | yield 上下文关键字 | 动态 ArkTS generator/yield 支持待确认 | compiler |
| `xts/boundary/keyword_import_export_boundary.ets` | import/export 模块关键字 | 模块关键字语法和模块支持待确认 | compiler |
| `xts/boundary/keyword_enum_reserved_boundary.ets` | enum 保留字 + TS 声明 | ES 未来保留字 + TS 实现差异 | compiler |
| `xts/boundary/keyword_interface_strict_boundary.ets` | interface 严格模式保留字 | ES 严格保留 + TS 类型声明差异 | compiler |
| `xts/boundary/keyword_private_protected_public_static_boundary.ets` | 成员修饰关键字 | ES 严格保留 + TS 成员修饰差异 | compiler |
| `xts/boundary/keyword_type_namespace_declare_boundary.ets` | type/namespace/declare | TS 扩展关键字支持待确认 | compiler |
| `xts/boundary/keyword_abstract_readonly_boundary.ets` | abstract/readonly | TS 扩展关键字支持待确认 | compiler |

## Updated Documents

| 文件 | 更新内容 |
|---|---|
| `coverage_matrix.md` | 追加 Stage 1 Update Summary，记录 28 个生成文件与 coverage ID 映射 |
| `keyword_first_batch_candidate_index.md` | 追加 Stage 1 Update Summary，32 个 candidate 标记为 created，18 个保持 planned，6 个文件无直接 candidate 记录 |

## Ownership Notes

| 测试点 | 归属判断 |
|---|---|
| 关键字合法位置 | 归 `00_the_basics/keywords` |
| 保留字作为标识符非法 | 归 `00_the_basics/keywords` |
| 声明绑定语义 | 不归 keywords，归 `declarations` |
| 语句执行语义 | 不归 keywords，归 `statements` |
| 运算符运行语义 | 不归 keywords，归 `operators` |
| class/function/module 完整语义 | 不归 keywords，后续专题覆盖 |
| TS 兼容关键字 | keywords 做边界索引，详细差异后续归 `typescript_compatibility` |
| async/await Promise 调度 | 不归 keywords，后续归 `function` / async 专题 |
| import/export 模块解析 | 不归 keywords，归 `module` |

## Notes

- 本阶段生成 Keywords P0/P1 XTS 候选。
- 本阶段未进行 ECMA / test262 规范对齐，待 `00_the_basics` 首轮完成后统一比对。
- 本阶段未进行 DevEco / hvigor 实际编译验证。
- 本阶段未修改 declarations / types / operators / statements / function。
- 本阶段未提交 commit，未 push 远程仓库。
- 10 个 boundary 文件需要在编译验证阶段确认支持状态。
- 5 个 fail_compile 文件需要 hvigor 编译验证确认确实产生编译错误。
- 6 个文件无直接 candidate ID，已记录在 candidate index 的 Additional Files 部分。
