# Keyword XTS Inventory

## Summary

| 项目 | 数量 |
|---|---:|
| .ets 文件总数 | 28 |
| pass 用例数量 | 13 |
| fail_compile 用例数量 | 5 |
| fail_runtime 用例数量 | 0 |
| boundary 用例数量 | 10 |
| regression 用例数量 | 0 |
| helper module 文件数量 | 0 |

## Inventory By Type

| 用例类型 | 数量 | 目录 |
|---|---:|---|
| pass | 13 | `xts/pass/` |
| fail_compile | 5 | `xts/fail_compile/` |
| fail_runtime | 0 | `xts/fail_runtime/` |
| boundary | 10 | `xts/boundary/` |
| regression | 0 | `xts/regression/` |

## Keyword Direction Summary

| 关键字方向 | pass | fail_compile | fail_runtime | boundary | regression | 合计 |
|---|---:|---:|---:|---:|---:|---:|
| declaration_keywords | 4 | 0 | 0 | 0 | 0 | 4 |
| statement_keywords | 5 | 1 | 0 | 0 | 0 | 6 |
| operator_keywords | 2 | 0 | 0 | 1 | 0 | 3 |
| module_keywords | 0 | 0 | 0 | 1 | 0 | 1 |
| literal_keywords | 1 | 1 | 0 | 0 | 0 | 2 |
| async_generator_keywords | 0 | 1 | 0 | 3 | 0 | 4 |
| reserved_words | 0 | 1 | 0 | 0 | 0 | 1 |
| future_reserved_words | 0 | 0 | 0 | 1 | 0 | 1 |
| strict_mode_reserved_words | 0 | 0 | 0 | 2 | 0 | 2 |
| contextual_keywords | 0 | 0 | 0 | 0 | 0 | 0 |
| typescript_keywords | 0 | 0 | 0 | 2 | 0 | 2 |
| arkts_dynamic_keywords_boundary | 0 | 0 | 0 | 0 | 0 | 0 |
| identifier_boundary | 0 | 1 | 0 | 0 | 0 | 1 |
| property_name_boundary | 1 | 0 | 0 | 0 | 0 | 1 |

## Case List

| 序号 | 文件路径 | 用例类型 | 关键字方向 | 推测测试点 | 所属阶段 | 备注 |
|---|---|---|---|---|---|---|
| 1 | `xts/pass/keyword_var_declaration_pass.ets` | pass | declaration_keywords | var 关键字正常声明 | Stage 1 | ES 核心行为 |
| 2 | `xts/pass/keyword_let_const_declaration_pass.ets` | pass | declaration_keywords | let/const 关键字正常声明 | Stage 1 | ES 核心行为 |
| 3 | `xts/pass/keyword_function_declaration_pass.ets` | pass | declaration_keywords | function 关键字正常声明 | Stage 1 | ES 核心行为 |
| 4 | `xts/pass/keyword_class_declaration_pass.ets` | pass | declaration_keywords | class 关键字正常声明 | Stage 1 | ES 核心行为 |
| 5 | `xts/pass/keyword_if_else_pass.ets` | pass | statement_keywords | if/else 关键字正常使用 | Stage 1 | ES 核心行为 |
| 6 | `xts/pass/keyword_switch_case_default_pass.ets` | pass | statement_keywords | switch/case/default 关键字 | Stage 1 | ES 核心行为 |
| 7 | `xts/pass/keyword_for_while_do_pass.ets` | pass | statement_keywords | for/while/do 关键字 | Stage 1 | ES 核心行为 |
| 8 | `xts/pass/keyword_break_continue_pass.ets` | pass | statement_keywords | break/continue 关键字 | Stage 1 | ES 核心行为 |
| 9 | `xts/pass/keyword_throw_try_catch_finally_pass.ets` | pass | statement_keywords | throw/try/catch/finally 关键字 | Stage 1 | ES 核心行为 |
| 10 | `xts/pass/keyword_typeof_delete_void_pass.ets` | pass | operator_keywords | typeof/void/delete 关键字 | Stage 1 | ES 核心行为 |
| 11 | `xts/pass/keyword_instanceof_in_new_pass.ets` | pass | operator_keywords | instanceof/in/new 关键字 | Stage 1 | ES 核心行为 |
| 12 | `xts/pass/keyword_true_false_null_literal_pass.ets` | pass | literal_keywords | true/false/null 字面量关键字 | Stage 1 | ES 核心行为 |
| 13 | `xts/pass/keyword_reserved_word_as_object_property_pass.ets` | pass | property_name_boundary | 关键字作计算属性名 | Stage 1 | ES 核心行为 |
| 14 | `xts/fail_compile/keyword_return_outside_function_fail_compile.ets` | fail_compile | statement_keywords | return 在函数外 SyntaxError | Stage 1 | 语法错误 |
| 15 | `xts/fail_compile/keyword_literal_as_identifier_fail_compile.ets` | fail_compile | literal_keywords | true/false/null 作标识符 | Stage 1 | 语法错误 |
| 16 | `xts/fail_compile/keyword_reserved_word_as_variable_fail_compile.ets` | fail_compile | reserved_words | 保留字作变量名 | Stage 1 | 语法错误 |
| 17 | `xts/fail_compile/keyword_reserved_word_as_function_fail_compile.ets` | fail_compile | reserved_words | 保留字作函数名 | Stage 1 | 语法错误 |
| 18 | `xts/fail_compile/keyword_await_outside_async_fail_compile.ets` | fail_compile | async_generator_keywords | await 在非 async 上下文 | Stage 1 | 语法错误 |
| 19 | `xts/boundary/keyword_super_boundary.ets` | boundary | operator_keywords | super 关键字在 class 上下文 | Stage 1 | 支持待确认 |
| 20 | `xts/boundary/keyword_async_function_boundary.ets` | boundary | async_generator_keywords | async 关键字标记函数 | Stage 1 | 支持待确认 |
| 21 | `xts/boundary/keyword_await_in_async_boundary.ets` | boundary | async_generator_keywords | await 在 async 函数内 | Stage 1 | 支持待确认 |
| 22 | `xts/boundary/keyword_yield_contextual_boundary.ets` | boundary | async_generator_keywords | yield 上下文关键字 | Stage 1 | 支持待确认 |
| 23 | `xts/boundary/keyword_import_export_boundary.ets` | boundary | module_keywords | import/export 模块关键字 | Stage 1 | 支持待确认 |
| 24 | `xts/boundary/keyword_enum_reserved_boundary.ets` | boundary | future_reserved_words | enum 保留字 + TS 声明 | Stage 1 | 支持待确认 |
| 25 | `xts/boundary/keyword_interface_strict_boundary.ets` | boundary | strict_mode_reserved_words | interface 严格模式 + TS 类型 | Stage 1 | 支持待确认 |
| 26 | `xts/boundary/keyword_private_protected_public_static_boundary.ets` | boundary | strict_mode_reserved_words | private/protected/public/static | Stage 1 | 支持待确认 |
| 27 | `xts/boundary/keyword_type_namespace_declare_boundary.ets` | boundary | typescript_keywords | type/namespace/declare | Stage 1 | 支持待确认 |
| 28 | `xts/boundary/keyword_abstract_readonly_boundary.ets` | boundary | typescript_keywords | abstract/readonly | Stage 1 | 支持待确认 |
