# Keyword First Batch Candidate Index

## Summary

| 项目 | 数量 |
|---|---:|
| 首批候选数量 | 50 |
| P0 候选数量 | 30 |
| P1 候选数量 | 20 |
| P2 候选数量 | 0 |
| ohosTest 适用候选 | 38 |
| 需要 test262 对照候选 | 35 |

## Candidate List

| Candidate ID | 关键字方向 | Test Point | Case Type | Priority | Suggested File Path | Suitable for ohosTest | Needs test262 | Related Chapter | Status | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| KW-CAND-001 | declaration_keywords | var 关键字正常声明 | pass | P0 | `keywords/xts/pass/keyword_var_declaration_pass.ets` | yes | yes | keywords / declarations | planned | ES 核心行为 |
| KW-CAND-002 | declaration_keywords | let 关键字正常声明 | pass | P0 | `keywords/xts/pass/keyword_let_declaration_pass.ets` | yes | yes | keywords / declarations | planned | ES 核心行为 |
| KW-CAND-003 | declaration_keywords | const 关键字正常声明 | pass | P0 | `keywords/xts/pass/keyword_const_declaration_pass.ets` | yes | yes | keywords / declarations | planned | ES 核心行为 |
| KW-CAND-004 | declaration_keywords | function 关键字正常声明 | pass | P0 | `keywords/xts/pass/keyword_function_declaration_pass.ets` | yes | yes | keywords / function | planned | ES 核心行为 |
| KW-CAND-005 | declaration_keywords | class 关键字正常声明 | pass | P0 | `keywords/xts/pass/keyword_class_declaration_pass.ets` | yes | yes | keywords / class | planned | ES 核心行为 |
| KW-CAND-006 | declaration_keywords | var 关键字作变量名 fail_compile | fail_compile | P0 | `keywords/xts/fail_compile/keyword_var_as_identifier_fail_compile.ets` | no | yes | keywords | planned | SyntaxError |
| KW-CAND-007 | statement_keywords | if/else 关键字正常使用 | pass | P0 | `keywords/xts/pass/keyword_if_else_pass.ets` | yes | yes | keywords / statements | planned | ES 核心行为 |
| KW-CAND-008 | statement_keywords | switch/case/default 关键字正常使用 | pass | P0 | `keywords/xts/pass/keyword_switch_case_default_pass.ets` | yes | yes | keywords / statements | planned | ES 核心行为 |
| KW-CAND-009 | statement_keywords | for/while/do 关键字正常使用 | pass | P0 | `keywords/xts/pass/keyword_for_while_do_pass.ets` | yes | yes | keywords / statements | planned | ES 核心行为 |
| KW-CAND-010 | statement_keywords | break/continue 关键字正常使用 | pass | P0 | `keywords/xts/pass/keyword_break_continue_pass.ets` | yes | yes | keywords / statements | planned | ES 核心行为 |
| KW-CAND-011 | statement_keywords | return 关键字在函数外 fail_compile | fail_compile | P0 | `keywords/xts/fail_compile/keyword_return_outside_function_fail_compile.ets` | no | yes | keywords / statements | planned | SyntaxError |
| KW-CAND-012 | statement_keywords | throw/try/catch/finally 关键字正常使用 | pass | P0 | `keywords/xts/pass/keyword_throw_try_catch_finally_pass.ets` | yes | yes | keywords / statements | planned | ES 核心行为 |
| KW-CAND-013 | operator_keywords | typeof 关键字正常使用 | pass | P0 | `keywords/xts/pass/keyword_typeof_pass.ets` | yes | yes | keywords / operators / types | planned | ES 核心行为 |
| KW-CAND-014 | operator_keywords | void 关键字正常使用 | pass | P0 | `keywords/xts/pass/keyword_void_pass.ets` | yes | yes | keywords / operators | planned | ES 核心行为 |
| KW-CAND-015 | operator_keywords | delete 关键字正常使用 | pass | P0 | `keywords/xts/pass/keyword_delete_pass.ets` | yes | yes | keywords / operators | planned | ES 核心行为 |
| KW-CAND-016 | operator_keywords | instanceof 关键字正常使用 | pass | P0 | `keywords/xts/pass/keyword_instanceof_pass.ets` | yes | yes | keywords / operators / class | planned | ES 核心行为 |
| KW-CAND-017 | operator_keywords | in 关键字正常使用 | pass | P0 | `keywords/xts/pass/keyword_in_pass.ets` | yes | yes | keywords / operators | planned | ES 核心行为 |
| KW-CAND-018 | operator_keywords | new 关键字正常使用 | pass | P0 | `keywords/xts/pass/keyword_new_pass.ets` | yes | yes | keywords / operators / class | planned | ES 核心行为 |
| KW-CAND-019 | literal_keywords | true/false 字面量关键字 | pass | P0 | `keywords/xts/pass/keyword_true_false_literal_pass.ets` | yes | yes | keywords / types | planned | ES 核心行为 |
| KW-CAND-020 | literal_keywords | null 字面量关键字 | pass | P0 | `keywords/xts/pass/keyword_null_literal_pass.ets` | yes | yes | keywords / types | planned | ES 核心行为 |
| KW-CAND-021 | reserved_words | 关键字作变量名 fail_compile | fail_compile | P0 | `keywords/xts/fail_compile/keyword_reserved_as_var_name_fail_compile.ets` | no | yes | keywords | planned | SyntaxError |
| KW-CAND-022 | reserved_words | 关键字作函数名 fail_compile | fail_compile | P0 | `keywords/xts/fail_compile/keyword_reserved_as_func_name_fail_compile.ets` | no | yes | keywords | planned | SyntaxError |
| KW-CAND-023 | async_generator_keywords | async 上下文关键字标记函数 | boundary | P0 | `keywords/xts/boundary/keyword_async_function_boundary.ets` | yes | no | keywords / function | planned | 支持待确认 |
| KW-CAND-024 | async_generator_keywords | await 在 async 函数内 | boundary | P0 | `keywords/xts/boundary/keyword_await_in_async_boundary.ets` | yes | no | keywords / function | planned | 支持待确认 |
| KW-CAND-025 | async_generator_keywords | await 在非 async 上下文 fail_compile | fail_compile | P0 | `keywords/xts/fail_compile/keyword_await_non_async_fail_compile.ets` | no | yes | keywords / function | planned | SyntaxError |
| KW-CAND-026 | async_generator_keywords | yield 在非 generator 上下文 fail_compile | fail_compile | P1 | `keywords/xts/fail_compile/keyword_yield_non_generator_fail_compile.ets` | no | yes | keywords / function | planned | SyntaxError |
| KW-CAND-027 | strict_mode_reserved_words | implements 严格模式 fail_compile | fail_compile | P0 | `keywords/xts/fail_compile/keyword_implements_strict_fail_compile.ets` | no | yes | keywords | planned | 严格模式限制 |
| KW-CAND-028 | strict_mode_reserved_words | interface 严格模式 fail_compile | fail_compile | P0 | `keywords/xts/fail_compile/keyword_interface_strict_fail_compile.ets` | no | yes | keywords | planned | 严格模式限制 |
| KW-CAND-029 | strict_mode_reserved_words | private 严格模式 fail_compile | fail_compile | P0 | `keywords/xts/fail_compile/keyword_private_strict_fail_compile.ets` | no | yes | keywords | planned | 严格模式限制 |
| KW-CAND-030 | future_reserved_words | enum 作标识符边界 | boundary | P0 | `keywords/xts/boundary/keyword_enum_boundary.ets` | yes | yes | keywords | planned | ES 未来保留字 |
| KW-CAND-031 | future_reserved_words | enum 关键字声明（TS 扩展） | boundary | P0 | `keywords/xts/boundary/keyword_enum_declaration_boundary.ets` | yes | no | keywords / typescript | planned | TS enum 支持 |
| KW-CAND-032 | contextual_keywords | of 在 for-of 中作上下文关键字 | pass | P0 | `keywords/xts/pass/keyword_of_for_of_pass.ets` | yes | yes | keywords / statements | planned | 上下文关键字 |
| KW-CAND-033 | contextual_keywords | as 在 import 中作别名 | pass | P0 | `../06_module/xts/integration/keyword_as_import_pass.ets` | yes | yes | keywords / module | planned | 上下文关键字 |
| KW-CAND-034 | contextual_keywords | from 在 import 中作来源 | pass | P0 | `../06_module/xts/integration/keyword_from_import_pass.ets` | yes | yes | keywords / module | planned | 上下文关键字 |
| KW-CAND-035 | typescript_keywords | type 关键字作类型别名 | boundary | P0 | `keywords/xts/boundary/keyword_type_alias_boundary.ets` | yes | no | keywords / typescript | planned | 支持待确认 |
| KW-CAND-036 | typescript_keywords | namespace 关键字 | boundary | P0 | `keywords/xts/boundary/keyword_namespace_boundary.ets` | yes | no | keywords / typescript | planned | 支持待确认 |
| KW-CAND-037 | typescript_keywords | declare 关键字 | boundary | P0 | `keywords/xts/boundary/keyword_declare_boundary.ets` | yes | no | keywords / typescript | planned | 支持待确认 |
| KW-CAND-038 | arkts_dynamic_keywords_boundary | with 语句是否完全禁止 | boundary | P0 | `keywords/xts/boundary/keyword_with_statement_boundary.ets` | no | yes | keywords / statements | planned | ES 严格禁止 |
| KW-CAND-039 | arkts_dynamic_keywords_boundary | 动态 ArkTS 默认是否严格模式 | boundary | P0 | `keywords/xts/boundary/keyword_default_strict_boundary.ets` | yes | no | keywords | planned | 模式确认 |
| KW-CAND-040 | identifier_boundary | break 作变量名 fail_compile | fail_compile | P0 | `keywords/xts/fail_compile/keyword_break_as_identifier_fail_compile.ets` | no | yes | keywords | planned | SyntaxError |
| KW-CAND-041 | identifier_boundary | function 作变量名 fail_compile | fail_compile | P0 | `keywords/xts/fail_compile/keyword_function_as_identifier_fail_compile.ets` | no | yes | keywords | planned | SyntaxError |
| KW-CAND-042 | identifier_boundary | class 作变量名 fail_compile | fail_compile | P0 | `keywords/xts/fail_compile/keyword_class_as_identifier_fail_compile.ets` | no | yes | keywords | planned | SyntaxError |
| KW-CAND-043 | identifier_boundary | typeof 作变量名 fail_compile | fail_compile | P1 | `keywords/xts/fail_compile/keyword_typeof_as_identifier_fail_compile.ets` | no | yes | keywords | planned | SyntaxError |
| KW-CAND-044 | property_name_boundary | 关键字作对象属性名 | boundary | P1 | `keywords/xts/boundary/keyword_property_name_object_boundary.ets` | yes | no | keywords | planned | ES 允许，ArkTS 待确认 |
| KW-CAND-045 | property_name_boundary | 关键字作点访问属性名 | boundary | P1 | `keywords/xts/boundary/keyword_dot_property_name_boundary.ets` | yes | no | keywords | planned | ES 允许，ArkTS 待确认 |
| KW-CAND-046 | property_name_boundary | 关键字作计算属性 | pass | P1 | `keywords/xts/pass/keyword_computed_property_pass.ets` | yes | yes | keywords | planned | ES 核心行为 |
| KW-CAND-047 | statement_keywords | debugger 关键字正常使用 | boundary | P1 | `keywords/xts/boundary/keyword_debugger_boundary.ets` | yes | yes | keywords / statements | planned | 运行时行为待确认 |
| KW-CAND-048 | strict_mode_reserved_words | protected 严格模式 fail_compile | fail_compile | P1 | `keywords/xts/fail_compile/keyword_protected_strict_fail_compile.ets` | no | yes | keywords | planned | 严格模式限制 |
| KW-CAND-049 | strict_mode_reserved_words | public 严格模式 fail_compile | fail_compile | P1 | `keywords/xts/fail_compile/keyword_public_strict_fail_compile.ets` | no | yes | keywords | planned | 严格模式限制 |
| KW-CAND-050 | typescript_keywords | abstract 关键字 | boundary | P1 | `keywords/xts/boundary/keyword_abstract_boundary.ets` | yes | no | keywords / typescript / class | planned | 支持待确认 |

## Stage 1 Update Summary

Stage 1 生成了 28 个 `.ets` 文件，对应 32 个 candidate 标记为 created，18 个保持 planned。

### Created Candidates (32)

| Candidate ID | 实际路径 |
|---|---|
| KW-CAND-001 | `xts/pass/keyword_var_declaration_pass.ets` |
| KW-CAND-002 | `xts/pass/keyword_let_const_declaration_pass.ets` |
| KW-CAND-003 | `xts/pass/keyword_let_const_declaration_pass.ets` |
| KW-CAND-004 | `xts/pass/keyword_function_declaration_pass.ets` |
| KW-CAND-005 | `xts/pass/keyword_class_declaration_pass.ets` |
| KW-CAND-006 | `xts/fail_compile/keyword_reserved_word_as_variable_fail_compile.ets` |
| KW-CAND-007 | `xts/pass/keyword_if_else_pass.ets` |
| KW-CAND-008 | `xts/pass/keyword_switch_case_default_pass.ets` |
| KW-CAND-009 | `xts/pass/keyword_for_while_do_pass.ets` |
| KW-CAND-010 | `xts/pass/keyword_break_continue_pass.ets` |
| KW-CAND-011 | `xts/fail_compile/keyword_return_outside_function_fail_compile.ets` |
| KW-CAND-012 | `xts/pass/keyword_throw_try_catch_finally_pass.ets` |
| KW-CAND-013 | `xts/pass/keyword_typeof_delete_void_pass.ets` |
| KW-CAND-014 | `xts/pass/keyword_typeof_delete_void_pass.ets` |
| KW-CAND-015 | `xts/pass/keyword_typeof_delete_void_pass.ets` |
| KW-CAND-016 | `xts/pass/keyword_instanceof_in_new_pass.ets` |
| KW-CAND-017 | `xts/pass/keyword_instanceof_in_new_pass.ets` |
| KW-CAND-018 | `xts/pass/keyword_instanceof_in_new_pass.ets` |
| KW-CAND-019 | `xts/pass/keyword_true_false_null_literal_pass.ets` |
| KW-CAND-020 | `xts/pass/keyword_true_false_null_literal_pass.ets` |
| KW-CAND-021 | `xts/fail_compile/keyword_reserved_word_as_variable_fail_compile.ets` |
| KW-CAND-022 | `xts/fail_compile/keyword_reserved_word_as_function_fail_compile.ets` |
| KW-CAND-023 | `xts/boundary/keyword_async_function_boundary.ets` |
| KW-CAND-024 | `xts/boundary/keyword_await_in_async_boundary.ets` |
| KW-CAND-025 | `xts/fail_compile/keyword_await_outside_async_fail_compile.ets` |
| KW-CAND-030 | `xts/boundary/keyword_enum_reserved_boundary.ets` |
| KW-CAND-031 | `xts/boundary/keyword_enum_reserved_boundary.ets` |
| KW-CAND-035 | `xts/boundary/keyword_type_namespace_declare_boundary.ets` |
| KW-CAND-036 | `xts/boundary/keyword_type_namespace_declare_boundary.ets` |
| KW-CAND-037 | `xts/boundary/keyword_type_namespace_declare_boundary.ets` |
| KW-CAND-046 | `xts/pass/keyword_reserved_word_as_object_property_pass.ets` |
| KW-CAND-050 | `xts/boundary/keyword_abstract_readonly_boundary.ets` |

### Additional Files Without Direct Candidate (6)

以下文件在 Stage 1 生成，但没有对应的 candidate ID，对应 coverage matrix 中的测试点：

| 文件 | Coverage IDs | 用例类型 |
|---|---|---|
| `xts/fail_compile/keyword_literal_as_identifier_fail_compile.ets` | KW-LIT-004, KW-LIT-005 | fail_compile |
| `xts/boundary/keyword_super_boundary.ets` | KW-OP-007 | boundary |
| `xts/boundary/keyword_yield_contextual_boundary.ets` | KW-ASYNC-004 | boundary |
| `xts/boundary/keyword_import_export_boundary.ets` | KW-MOD-001, KW-MOD-002 | boundary |
| `xts/boundary/keyword_interface_strict_boundary.ets` | KW-STRICT-002, KW-FUT-003 | boundary |
| `xts/boundary/keyword_private_protected_public_static_boundary.ets` | KW-STRICT-004, KW-STRICT-005, KW-STRICT-006, KW-STRICT-007 | boundary |
