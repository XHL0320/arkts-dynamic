# Keyword Coverage Matrix

| ID | 关键字方向 | 测试点 | 用例类型 | 优先级 | 是否已有用例 | 建议路径 | 关联章节 | 风险点 | 备注 |
|---|---|---|---|---|---|---|---|---|---|
| KW-DECL-001 | declaration_keywords | var 关键字正常声明 | pass | P0 | no | `keywords/xts/pass/keyword_var_declaration_pass` | keywords / declarations | 低 | ES 核心行为 |
| KW-DECL-002 | declaration_keywords | let 关键字正常声明 | pass | P0 | no | `keywords/xts/pass/keyword_let_declaration_pass` | keywords / declarations | 低 | ES 核心行为 |
| KW-DECL-003 | declaration_keywords | const 关键字正常声明 | pass | P0 | no | `keywords/xts/pass/keyword_const_declaration_pass` | keywords / declarations | 低 | ES 核心行为 |
| KW-DECL-004 | declaration_keywords | function 关键字正常声明 | pass | P0 | no | `keywords/xts/pass/keyword_function_declaration_pass` | keywords / function | 低 | ES 核心行为 |
| KW-DECL-005 | declaration_keywords | class 关键字正常声明 | pass | P0 | no | `keywords/xts/pass/keyword_class_declaration_pass` | keywords / class | 低 | ES 核心行为 |
| KW-DECL-006 | declaration_keywords | var 关键字作变量名 fail_compile | fail_compile | P0 | no | `keywords/xts/fail_compile/keyword_var_as_identifier_fail_compile` | keywords | 中 | SyntaxError |
| KW-DECL-007 | declaration_keywords | let 关键字作变量名（严格模式）fail_compile | fail_compile | P1 | no | `keywords/xts/fail_compile/keyword_let_as_identifier_strict_fail_compile` | keywords | 中 | 严格模式限制 |
| KW-STMT-001 | statement_keywords | if/else 关键字正常使用 | pass | P0 | no | `keywords/xts/pass/keyword_if_else_pass` | keywords / statements | 低 | ES 核心行为 |
| KW-STMT-002 | statement_keywords | switch/case/default 关键字正常使用 | pass | P0 | no | `keywords/xts/pass/keyword_switch_case_default_pass` | keywords / statements | 低 | ES 核心行为 |
| KW-STMT-003 | statement_keywords | for/while/do 关键字正常使用 | pass | P0 | no | `keywords/xts/pass/keyword_for_while_do_pass` | keywords / statements | 低 | ES 核心行为 |
| KW-STMT-004 | statement_keywords | break/continue 关键字正常使用 | pass | P0 | no | `keywords/xts/pass/keyword_break_continue_pass` | keywords / statements | 低 | ES 核心行为 |
| KW-STMT-005 | statement_keywords | return 关键字在函数外 fail_compile | fail_compile | P0 | no | `keywords/xts/fail_compile/keyword_return_outside_function_fail_compile` | keywords / statements | 中 | SyntaxError |
| KW-STMT-006 | statement_keywords | throw/try/catch/finally 关键字正常使用 | pass | P0 | no | `keywords/xts/pass/keyword_throw_try_catch_finally_pass` | keywords / statements | 低 | ES 核心行为 |
| KW-STMT-007 | statement_keywords | debugger 关键字正常使用 | boundary | P1 | no | `keywords/xts/boundary/keyword_debugger_boundary` | keywords / statements | 中 | 运行时行为待确认 |
| KW-OP-001 | operator_keywords | typeof 关键字正常使用 | pass | P0 | no | `keywords/xts/pass/keyword_typeof_pass` | keywords / operators / types | 低 | ES 核心行为 |
| KW-OP-002 | operator_keywords | void 关键字正常使用 | pass | P0 | no | `keywords/xts/pass/keyword_void_pass` | keywords / operators | 低 | ES 核心行为 |
| KW-OP-003 | operator_keywords | delete 关键字正常使用 | pass | P0 | no | `keywords/xts/pass/keyword_delete_pass` | keywords / operators | 低 | ES 核心行为 |
| KW-OP-004 | operator_keywords | instanceof 关键字正常使用 | pass | P0 | no | `keywords/xts/pass/keyword_instanceof_pass` | keywords / operators / class | 低 | ES 核心行为 |
| KW-OP-005 | operator_keywords | in 关键字正常使用 | pass | P0 | no | `keywords/xts/pass/keyword_in_pass` | keywords / operators | 低 | ES 核心行为 |
| KW-OP-006 | operator_keywords | new 关键字正常使用 | pass | P0 | no | `keywords/xts/pass/keyword_new_pass` | keywords / operators / class | 低 | ES 核心行为 |
| KW-OP-007 | operator_keywords | this/super 关键字正常使用 | boundary | P1 | no | `keywords/xts/boundary/keyword_this_super_boundary` | keywords / operators / class | 中 | this 绑定语义归 function/class |
| KW-MOD-001 | module_keywords | import 关键字正常使用 | integration | P0 | no | `../06_module/xts/integration/keyword_import_pass` | keywords / module | 低 | ES 核心行为 |
| KW-MOD-002 | module_keywords | export 关键字正常使用 | integration | P0 | no | `../06_module/xts/integration/keyword_export_pass` | keywords / module | 低 | ES 核心行为 |
| KW-MOD-003 | module_keywords | from 上下文关键字在 import 中 | pass | P1 | no | `../06_module/xts/integration/keyword_from_pass` | keywords / module | 低 | 上下文关键字 |
| KW-MOD-004 | module_keywords | as 上下文关键字在 import 中 | pass | P1 | no | `../06_module/xts/integration/keyword_as_pass` | keywords / module | 低 | 上下文关键字 |
| KW-MOD-005 | module_keywords | default 上下文关键字在 export 中 | pass | P1 | no | `../06_module/xts/integration/keyword_default_pass` | keywords / module | 低 | 上下文关键字 |
| KW-MOD-006 | module_keywords | import/export 在非模块顶层 fail_compile | fail_compile | P1 | no | `keywords/xts/fail_compile/keyword_import_non_module_fail_compile` | keywords / module | 中 | 位置限制 |
| KW-LIT-001 | literal_keywords | true 字面量关键字 | pass | P0 | no | `keywords/xts/pass/keyword_true_literal_pass` | keywords / types | 低 | ES 核心行为 |
| KW-LIT-002 | literal_keywords | false 字面量关键字 | pass | P0 | no | `keywords/xts/pass/keyword_false_literal_pass` | keywords / types | 低 | ES 核心行为 |
| KW-LIT-003 | literal_keywords | null 字面量关键字 | pass | P0 | no | `keywords/xts/pass/keyword_null_literal_pass` | keywords / types | 低 | ES 核心行为 |
| KW-LIT-004 | literal_keywords | true/false 作变量名 fail_compile | fail_compile | P1 | no | `keywords/xts/fail_compile/keyword_boolean_as_identifier_fail_compile` | keywords | 中 | SyntaxError |
| KW-LIT-005 | literal_keywords | null 作变量名 fail_compile | fail_compile | P1 | no | `keywords/xts/fail_compile/keyword_null_as_identifier_fail_compile` | keywords | 中 | SyntaxError |
| KW-ASYNC-001 | async_generator_keywords | async 上下文关键字标记函数 | boundary | P0 | no | `keywords/xts/boundary/keyword_async_function_boundary` | keywords / function | 高 | 支持待确认 |
| KW-ASYNC-002 | async_generator_keywords | await 在 async 函数内 | boundary | P0 | no | `keywords/xts/boundary/keyword_await_in_async_boundary` | keywords / function | 高 | 支持待确认 |
| KW-ASYNC-003 | async_generator_keywords | await 在非 async 上下文 fail_compile | fail_compile | P0 | no | `keywords/xts/fail_compile/keyword_await_non_async_fail_compile` | keywords / function | 高 | SyntaxError |
| KW-ASYNC-004 | async_generator_keywords | yield 上下文关键字在 generator 内 | boundary | P0 | no | `keywords/xts/boundary/keyword_yield_in_generator_boundary` | keywords / function | 高 | 支持待确认 |
| KW-ASYNC-005 | async_generator_keywords | yield 在非 generator 上下文 fail_compile | fail_compile | P1 | no | `keywords/xts/fail_compile/keyword_yield_non_generator_fail_compile` | keywords / function | 高 | SyntaxError |
| KW-ASYNC-006 | async_generator_keywords | await 在模块顶层保留字 | boundary | P1 | no | `keywords/xts/boundary/keyword_await_module_top_boundary` | keywords / module | 中 | 模块保留字 |
| KW-ASYNC-007 | async_generator_keywords | async 箭头函数 | boundary | P1 | no | `keywords/xts/boundary/keyword_async_arrow_boundary` | keywords / function | 中 | 支持待确认 |
| KW-RES-001 | reserved_words | 关键字作变量名 fail_compile | fail_compile | P0 | no | `keywords/xts/fail_compile/keyword_reserved_as_var_name_fail_compile` | keywords | 中 | SyntaxError |
| KW-RES-002 | reserved_words | 关键字作函数名 fail_compile | fail_compile | P0 | no | `keywords/xts/fail_compile/keyword_reserved_as_func_name_fail_compile` | keywords | 中 | SyntaxError |
| KW-RES-003 | reserved_words | 关键字作参数名 fail_compile | fail_compile | P1 | no | `keywords/xts/fail_compile/keyword_reserved_as_param_name_fail_compile` | keywords | 中 | SyntaxError |
| KW-RES-004 | reserved_words | 关键字列表完整性（break/case/catch 等） | regression | P1 | no | `keywords/xts/regression/keyword_reserved_list_regression` | keywords | 低 | 规范验证 |
| KW-RES-005 | reserved_words | 关键字在对象字面量属性名中 | boundary | P1 | no | `keywords/xts/boundary/keyword_as_property_name_boundary` | keywords | 中 | 支持待确认 |
| KW-RES-006 | reserved_words | 关键字在点访问属性名中 | boundary | P1 | no | `keywords/xts/boundary/keyword_dot_access_boundary` | keywords | 中 | 支持待确认 |
| KW-RES-007 | reserved_words | 关键字在计算属性访问中 | pass | P2 | no | `keywords/xts/pass/keyword_computed_property_pass` | keywords | 低 | `obj["if"]` |
| KW-FUT-001 | future_reserved_words | enum 作标识符边界 | boundary | P0 | no | `keywords/xts/boundary/keyword_enum_boundary` | keywords | 高 | ES 未来保留字 + TS 声明 |
| KW-FUT-002 | future_reserved_words | implements 作标识符（非严格模式） | boundary | P1 | no | `keywords/xts/boundary/keyword_implements_non_strict_boundary` | keywords | 中 | 非严格模式边界 |
| KW-FUT-003 | future_reserved_words | interface 作标识符（非严格模式） | boundary | P1 | no | `keywords/xts/boundary/keyword_interface_non_strict_boundary` | keywords | 中 | 非严格模式边界 |
| KW-FUT-004 | future_reserved_words | package 作标识符（非严格模式） | boundary | P1 | no | `keywords/xts/boundary/keyword_package_non_strict_boundary` | keywords | 中 | 非严格模式边界 |
| KW-FUT-005 | future_reserved_words | private 作标识符（非严格模式） | boundary | P1 | no | `keywords/xts/boundary/keyword_private_non_strict_boundary` | keywords | 中 | 非严格模式边界 |
| KW-FUT-006 | future_reserved_words | enum 关键字声明（TS 扩展） | boundary | P0 | no | `keywords/xts/boundary/keyword_enum_declaration_boundary` | keywords / typescript | 高 | TS enum 支持 |
| KW-STRICT-001 | strict_mode_reserved_words | implements 严格模式作标识符 fail_compile | fail_compile | P0 | no | `keywords/xts/fail_compile/keyword_implements_strict_fail_compile` | keywords | 中 | 严格模式限制 |
| KW-STRICT-002 | strict_mode_reserved_words | interface 严格模式作标识符 fail_compile | fail_compile | P0 | no | `keywords/xts/fail_compile/keyword_interface_strict_fail_compile` | keywords | 中 | 严格模式限制 |
| KW-STRICT-003 | strict_mode_reserved_words | package 严格模式作标识符 fail_compile | fail_compile | P0 | no | `keywords/xts/fail_compile/keyword_package_strict_fail_compile` | keywords | 中 | 严格模式限制 |
| KW-STRICT-004 | strict_mode_reserved_words | private 严格模式作标识符 fail_compile | fail_compile | P0 | no | `keywords/xts/fail_compile/keyword_private_strict_fail_compile` | keywords | 中 | 严格模式限制 |
| KW-STRICT-005 | strict_mode_reserved_words | protected 严格模式作标识符 fail_compile | fail_compile | P1 | no | `keywords/xts/fail_compile/keyword_protected_strict_fail_compile` | keywords | 中 | 严格模式限制 |
| KW-STRICT-006 | strict_mode_reserved_words | public 严格模式作标识符 fail_compile | fail_compile | P1 | no | `keywords/xts/fail_compile/keyword_public_strict_fail_compile` | keywords | 中 | 严格模式限制 |
| KW-STRICT-007 | strict_mode_reserved_words | static 严格模式作标识符 fail_compile | fail_compile | P1 | no | `keywords/xts/fail_compile/keyword_static_strict_fail_compile` | keywords | 中 | 严格模式限制 |
| KW-CTX-001 | contextual_keywords | of 在 for-of 中作上下文关键字 | pass | P0 | no | `keywords/xts/pass/keyword_of_for_of_pass` | keywords / statements | 低 | 上下文关键字 |
| KW-CTX-002 | contextual_keywords | as 在 import 中作别名 | pass | P0 | no | `../06_module/xts/integration/keyword_as_import_pass` | keywords / module | 低 | 上下文关键字 |
| KW-CTX-003 | contextual_keywords | from 在 import 中作来源 | pass | P0 | no | `../06_module/xts/integration/keyword_from_import_pass` | keywords / module | 低 | 上下文关键字 |
| KW-CTX-004 | contextual_keywords | default 在 export 中 | pass | P1 | no | `../06_module/xts/integration/keyword_default_export_pass` | keywords / module | 低 | 上下文关键字 |
| KW-CTX-005 | contextual_keywords | of 作变量名（非 for-of 上下文） | boundary | P1 | no | `keywords/xts/boundary/keyword_of_as_identifier_boundary` | keywords | 中 | 上下文边界 |
| KW-CTX-006 | contextual_keywords | as 作变量名（非 import 上下文） | boundary | P1 | no | `keywords/xts/boundary/keyword_as_as_identifier_boundary` | keywords | 中 | 上下文边界 |
| KW-TS-001 | typescript_keywords | type 关键字作类型别名 | boundary | P0 | no | `keywords/xts/boundary/keyword_type_alias_boundary` | keywords / typescript | 高 | 支持待确认 |
| KW-TS-002 | typescript_keywords | namespace 关键字 | boundary | P0 | no | `keywords/xts/boundary/keyword_namespace_boundary` | keywords / typescript | 高 | 支持待确认 |
| KW-TS-003 | typescript_keywords | declare 关键字 | boundary | P0 | no | `keywords/xts/boundary/keyword_declare_boundary` | keywords / typescript | 高 | 支持待确认 |
| KW-TS-004 | typescript_keywords | abstract 关键字 | boundary | P1 | no | `keywords/xts/boundary/keyword_abstract_boundary` | keywords / typescript / class | 高 | 支持待确认 |
| KW-TS-005 | typescript_keywords | readonly 关键字 | boundary | P1 | no | `keywords/xts/boundary/keyword_readonly_boundary` | keywords / typescript / class | 高 | 支持待确认 |
| KW-TS-006 | typescript_keywords | public/private/protected 成员修饰 | boundary | P1 | no | `keywords/xts/boundary/keyword_access_modifiers_boundary` | keywords / typescript / class | 高 | 支持待确认 |
| KW-TS-007 | typescript_keywords | static 成员修饰 | boundary | P1 | no | `keywords/xts/boundary/keyword_static_modifier_boundary` | keywords / typescript / class | 中 | 支持待确认 |
| KW-ARKTS-001 | arkts_dynamic_keywords_boundary | with 语句是否完全禁止 | boundary | P0 | no | `keywords/xts/boundary/keyword_with_statement_boundary` | keywords / statements | 高 | ES 严格禁止 |
| KW-ARKTS-002 | arkts_dynamic_keywords_boundary | 动态 ArkTS 默认是否严格模式 | boundary | P0 | no | `keywords/xts/boundary/keyword_default_strict_boundary` | keywords | 高 | 模式确认 |
| KW-ARKTS-003 | arkts_dynamic_keywords_boundary | 动态 ArkTS 扩展关键字 | boundary | P1 | no | `keywords/xts/boundary/keyword_arkts_extension_boundary` | keywords | 高 | 扩展关键字 |
| KW-ARKTS-004 | arkts_dynamic_keywords_boundary | sendable 关键字支持 | boundary | P1 | no | `keywords/xts/boundary/keyword_sendable_boundary` | keywords / arkts | 高 | ArkTS 扩展 |
| KW-ARKTS-005 | arkts_dynamic_keywords_boundary | Concurrency 关键字支持 | boundary | P1 | no | `keywords/xts/boundary/keyword_concurrency_boundary` | keywords / arkts | 高 | ArkTS 扩展 |
| KW-ARKTS-006 | arkts_dynamic_keywords_boundary | @Decorator 关键字语法 | boundary | P1 | no | `keywords/xts/boundary/keyword_decorator_syntax_boundary` | keywords / arkts | 中 | ArkTS 装饰器 |
| KW-ID-001 | identifier_boundary | break 作变量名 fail_compile | fail_compile | P0 | no | `keywords/xts/fail_compile/keyword_break_as_identifier_fail_compile` | keywords | 中 | SyntaxError |
| KW-ID-002 | identifier_boundary | function 作变量名 fail_compile | fail_compile | P0 | no | `keywords/xts/fail_compile/keyword_function_as_identifier_fail_compile` | keywords | 中 | SyntaxError |
| KW-ID-003 | identifier_boundary | class 作变量名 fail_compile | fail_compile | P0 | no | `keywords/xts/fail_compile/keyword_class_as_identifier_fail_compile` | keywords | 中 | SyntaxError |
| KW-ID-004 | identifier_boundary | return 作变量名 fail_compile | fail_compile | P0 | no | `keywords/xts/fail_compile/keyword_return_as_identifier_fail_compile` | keywords | 中 | SyntaxError |
| KW-ID-005 | identifier_boundary | typeof 作变量名 fail_compile | fail_compile | P1 | no | `keywords/xts/fail_compile/keyword_typeof_as_identifier_fail_compile` | keywords | 中 | SyntaxError |
| KW-ID-006 | identifier_boundary | new 作变量名 fail_compile | fail_compile | P1 | no | `keywords/xts/fail_compile/keyword_new_as_identifier_fail_compile` | keywords | 中 | SyntaxError |
| KW-ID-007 | identifier_boundary | this 作变量名 fail_compile | fail_compile | P1 | no | `keywords/xts/fail_compile/keyword_this_as_identifier_fail_compile` | keywords | 中 | SyntaxError |
| KW-PROP-001 | property_name_boundary | 关键字作对象属性名 { if: 1 } | boundary | P1 | no | `keywords/xts/boundary/keyword_property_name_object_boundary` | keywords | 中 | ES 允许，ArkTS 待确认 |
| KW-PROP-002 | property_name_boundary | 关键字作点访问属性名 obj.class | boundary | P1 | no | `keywords/xts/boundary/keyword_dot_property_name_boundary` | keywords | 中 | ES 允许，ArkTS 待确认 |
| KW-PROP-003 | property_name_boundary | 关键字作计算属性 obj["if"] | pass | P1 | no | `keywords/xts/pass/keyword_computed_property_pass` | keywords | 低 | ES 核心行为 |
| KW-PROP-004 | property_name_boundary | 关键字作类成员名 | boundary | P2 | no | `keywords/xts/boundary/keyword_class_member_name_boundary` | keywords / class | 中 | 支持待确认 |
| KW-PROP-005 | property_name_boundary | 关键字作方法名 | boundary | P2 | no | `keywords/xts/boundary/keyword_method_name_boundary` | keywords / class | 中 | 支持待确认 |
| KW-PROP-006 | property_name_boundary | 保留字作对象属性名（严格模式） | boundary | P2 | no | `keywords/xts/boundary/keyword_reserved_property_strict_boundary` | keywords | 中 | 严格模式边界 |

## Stage 1 Update Summary

以下 27 个 `.ets` 文件在 Keywords Stage 1 中生成，对应 coverage matrix 中多个测试点标记为"是"：

| 生成文件 | 对应 Coverage IDs | 用例类型 |
|---|---|---|
| `xts/pass/keyword_var_declaration_pass.ets` | KW-DECL-001 | pass |
| `xts/pass/keyword_let_const_declaration_pass.ets` | KW-DECL-002, KW-DECL-003 | pass |
| `xts/pass/keyword_function_declaration_pass.ets` | KW-DECL-004 | pass |
| `xts/pass/keyword_class_declaration_pass.ets` | KW-DECL-005 | pass |
| `xts/pass/keyword_if_else_pass.ets` | KW-STMT-001 | pass |
| `xts/pass/keyword_switch_case_default_pass.ets` | KW-STMT-002 | pass |
| `xts/pass/keyword_for_while_do_pass.ets` | KW-STMT-003 | pass |
| `xts/pass/keyword_break_continue_pass.ets` | KW-STMT-004 | pass |
| `xts/pass/keyword_throw_try_catch_finally_pass.ets` | KW-STMT-006 | pass |
| `xts/pass/keyword_typeof_delete_void_pass.ets` | KW-OP-001, KW-OP-002, KW-OP-003 | pass |
| `xts/pass/keyword_instanceof_in_new_pass.ets` | KW-OP-004, KW-OP-005, KW-OP-006 | pass |
| `xts/pass/keyword_true_false_null_literal_pass.ets` | KW-LIT-001, KW-LIT-002, KW-LIT-003 | pass |
| `xts/pass/keyword_reserved_word_as_object_property_pass.ets` | KW-RES-007, KW-PROP-003 | pass |
| `xts/fail_compile/keyword_return_outside_function_fail_compile.ets` | KW-STMT-005 | fail_compile |
| `xts/fail_compile/keyword_literal_as_identifier_fail_compile.ets` | KW-LIT-004, KW-LIT-005 | fail_compile |
| `xts/fail_compile/keyword_reserved_word_as_variable_fail_compile.ets` | KW-RES-001, KW-ID-001, KW-ID-002, KW-ID-003, KW-ID-004 | fail_compile |
| `xts/fail_compile/keyword_reserved_word_as_function_fail_compile.ets` | KW-RES-002 | fail_compile |
| `xts/fail_compile/keyword_await_outside_async_fail_compile.ets` | KW-ASYNC-003 | fail_compile |
| `xts/boundary/keyword_super_boundary.ets` | KW-OP-007 | boundary |
| `xts/boundary/keyword_async_function_boundary.ets` | KW-ASYNC-001 | boundary |
| `xts/boundary/keyword_await_in_async_boundary.ets` | KW-ASYNC-002 | boundary |
| `xts/boundary/keyword_yield_contextual_boundary.ets` | KW-ASYNC-004 | boundary |
| `xts/boundary/keyword_import_export_boundary.ets` | KW-MOD-001, KW-MOD-002 | boundary |
| `xts/boundary/keyword_enum_reserved_boundary.ets` | KW-FUT-001, KW-FUT-006 | boundary |
| `xts/boundary/keyword_interface_strict_boundary.ets` | KW-STRICT-002, KW-FUT-003 | boundary |
| `xts/boundary/keyword_private_protected_public_static_boundary.ets` | KW-STRICT-004, KW-STRICT-005, KW-STRICT-006, KW-STRICT-007 | boundary |
| `xts/boundary/keyword_type_namespace_declare_boundary.ets` | KW-TS-001, KW-TS-002, KW-TS-003 | boundary |
| `xts/boundary/keyword_abstract_readonly_boundary.ets` | KW-TS-004, KW-TS-005 | boundary |
