# Keyword Ownership Review

## Purpose

本文件用于确认 keywords 章节只负责关键字合法性、保留字限制、上下文关键字边界和跨特性索引，避免把 declarations / statements / operators / function / class / module / TypeScript compatibility 的完整语义误归入 keywords。

## Ownership Rule

| 规则类型 | 主归属目录 | Keywords 中处理方式 |
|---|---|---|
| 关键字合法语法位置 | `00_the_basics/keywords` | 主负责 |
| 保留字作为标识符非法 | `00_the_basics/keywords` | 主负责 |
| 上下文关键字边界 | `00_the_basics/keywords` | 主负责 |
| strict mode reserved words | `00_the_basics/keywords` | 主负责边界 |
| declaration binding / TDZ / hoisting / duplicate | `00_the_basics/declarations` | keywords 不展开 |
| statement control flow | `00_the_basics/statements` | keywords 不展开 |
| operator runtime semantics | `00_the_basics/operators` | keywords 不展开 |
| function call / params / return value / closure | `01_function` | keywords 不展开 |
| class constructor / member / inheritance / super runtime | `02_class` | keywords 不展开 |
| module resolution / import-export binding | `06_module` | keywords 不展开 |
| TypeScript keyword compatibility details | `02_typescript_compatibility` | keywords 只做边界索引 |

## Potential Misplaced Cases

| 文件路径 | 测试点 | 是否疑似误放 keywords | 建议处理 |
|---|---|---|---|
| `xts/pass/keyword_var_declaration_pass.ets` | var 关键字正常声明 | 否 | keep_as_keyword — 测试关键字语法位置，不测试声明绑定 |
| `xts/pass/keyword_let_const_declaration_pass.ets` | let/const 关键字正常声明 | 否 | keep_as_keyword — 测试关键字语法位置，不测试 TDZ/重复声明 |
| `xts/pass/keyword_function_declaration_pass.ets` | function 关键字正常声明 | 否 | keep_as_keyword — 测试关键字位置，不测试函数调用/参数 |
| `xts/pass/keyword_class_declaration_pass.ets` | class 关键字正常声明 | 否 | keep_as_keyword — 测试关键字位置，不测试 class 成员/继承 |
| `xts/pass/keyword_if_else_pass.ets` | if/else 关键字正常使用 | 否 | keep_as_keyword — 测试关键字位置，不测试分支执行语义 |
| `xts/pass/keyword_switch_case_default_pass.ets` | switch/case/default 关键字 | 否 | keep_as_keyword — 测试关键字位置，不测试 fall-through 行为 |
| `xts/pass/keyword_for_while_do_pass.ets` | for/while/do 关键字 | 否 | keep_as_keyword — 测试关键字位置，不测试循环控制流 |
| `xts/pass/keyword_break_continue_pass.ets` | break/continue 关键字 | 否 | keep_as_keyword — 测试关键字位置，不测试跳转语义 |
| `xts/pass/keyword_throw_try_catch_finally_pass.ets` | throw/try/catch/finally 关键字 | 否 | keep_as_keyword — 测试关键字位置，不测试异常控制流 |
| `xts/pass/keyword_typeof_delete_void_pass.ets` | typeof/void/delete 关键字 | 否 | keep_as_keyword — 测试关键字位置，不测试运算符行为 |
| `xts/pass/keyword_instanceof_in_new_pass.ets` | instanceof/in/new 关键字 | 否 | keep_as_keyword — 测试关键字位置，不测试运算符行为 |
| `xts/pass/keyword_true_false_null_literal_pass.ets` | true/false/null 字面量关键字 | 否 | keep_as_keyword — 测试字面量关键字，不测试类型行为 |
| `xts/pass/keyword_reserved_word_as_object_property_pass.ets` | 关键字作计算属性名 | 否 | keep_as_keyword — 测试关键字作属性名边界 |
| `xts/fail_compile/keyword_return_outside_function_fail_compile.ets` | return 在函数外 | 否 | keep_as_keyword — 测试关键字非法位置 |
| `xts/fail_compile/keyword_literal_as_identifier_fail_compile.ets` | true/false/null 作标识符 | 否 | keep_as_keyword — 测试字面量关键字作标识符非法 |
| `xts/fail_compile/keyword_reserved_word_as_variable_fail_compile.ets` | 保留字作变量名 | 否 | keep_as_keyword — 测试保留字限制 |
| `xts/fail_compile/keyword_reserved_word_as_function_fail_compile.ets` | 保留字作函数名 | 否 | keep_as_keyword — 测试保留字限制 |
| `xts/fail_compile/keyword_await_outside_async_fail_compile.ets` | await 在非 async 上下文 | 否 | keep_as_keyword — 测试上下文关键字非法位置 |
| `xts/boundary/keyword_super_boundary.ets` | super 关键字在 class 上下文 | 否 | keep_as_keyword_boundary — 测试关键字支持边界，super 调用语义归 class |
| `xts/boundary/keyword_async_function_boundary.ets` | async 关键字标记函数 | 否 | keep_as_keyword_boundary — 测试关键字支持边界，async Promise 语义归 function |
| `xts/boundary/keyword_await_in_async_boundary.ets` | await 在 async 函数内 | 否 | keep_as_keyword_boundary — 测试关键字支持边界，await 运行语义归 function |
| `xts/boundary/keyword_yield_contextual_boundary.ets` | yield 上下文关键字 | 否 | keep_as_keyword_boundary — 测试关键字支持边界，generator 语义归 function |
| `xts/boundary/keyword_import_export_boundary.ets` | import/export 模块关键字 | 否 | keep_as_keyword_boundary — 测试关键字语法边界，模块解析归 module |
| `xts/boundary/keyword_enum_reserved_boundary.ets` | enum 保留字 + TS 声明 | 否 | keep_as_keyword_boundary — 测试保留字边界，enum 语义归 declarations |
| `xts/boundary/keyword_interface_strict_boundary.ets` | interface 严格模式 + TS 类型 | 否 | keep_as_keyword_boundary — 测试保留字边界，interface 类型语义归 TS compat |
| `xts/boundary/keyword_private_protected_public_static_boundary.ets` | 成员修饰关键字 | 否 | keep_as_keyword_boundary — 测试关键字边界，成员修饰语义归 class |
| `xts/boundary/keyword_type_namespace_declare_boundary.ets` | type/namespace/declare | 否 | keep_as_keyword_boundary — 测试关键字边界，详细差异归 TS compat |
| `xts/boundary/keyword_abstract_readonly_boundary.ets` | abstract/readonly | 否 | keep_as_keyword_boundary — 测试关键字边界，abstract class 语义归 class |

**结论：未发现疑似误放文件。** 所有 28 个 .ets 文件均正确归属于 keywords 章节管辖范围。

## Cross Feature Ownership

| 交叉点 | Keywords 负责 | 关联章节负责 | 说明 |
|---|---|---|---|
| var / let / const | 关键字合法位置 | declarations 负责绑定、TDZ、重复声明 | 避免重复 |
| if / for / switch | 关键字合法位置 | statements 负责控制流 | 避免重复 |
| typeof / delete / void / in / instanceof / new | 关键字/运算符语法边界 | operators 负责运行语义 | 避免重复 |
| async / await / yield | 上下文关键字边界 | function/async 专题负责运行语义 | 避免重复 |
| class / extends / super / static/private | 关键字边界 | class 负责成员、继承、super 语义 | 避免重复 |
| import / export / from / as | 模块关键字边界 | module 负责解析、绑定、循环依赖 | 避免重复 |
| type / namespace / declare / abstract / readonly | 边界索引 | TS compatibility 负责详细差异 | 避免重复 |

## Conclusion

经过逐文件审查，当前 keywords 章节的 28 个 .ets 候选用例均正确归属于关键字体系管辖范围。没有发现需要迁移到 declarations / statements / operators / function / class / module / TypeScript compatibility 的误放文件。

交叉场景的处理符合 ownership 规则：
- 声明关键字只测试语法位置，不展开声明绑定/TDZ/重复声明
- 语句关键字只测试语法位置，不展开控制流执行语义
- 运算符关键字只测试语法边界，不展开运算符运行行为
- async/await/yield 只测试上下文边界，不展开 async/generator 运行语义
- class/extends/super 只测试关键字边界，不展开 class 成员/继承语义
- import/export 只测试语法边界，不展开模块解析/绑定行为
- TS 关键字只做边界索引，不展开详细兼容差异
