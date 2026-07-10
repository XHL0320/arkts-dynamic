# Statement Ownership Review

## Purpose

本文件用于确认 statements 章节只负责语句层面的控制流、循环、跳转、异常处理、标签语句和顶层语句边界，避免把 declarations / operators / function / class / module / builtin API 的专属行为误归入 statements。

## Ownership Rule

| 规则类型 | 主归属目录 | Statements 中处理方式 |
|---|---|---|
| block / empty / expression statement | `00_the_basics/statements` | 主负责 |
| if / switch / loop control flow | `00_the_basics/statements` | 主负责 |
| break / continue / label | `00_the_basics/statements` | 主负责 |
| throw / try / catch / finally | `00_the_basics/statements` | 主负责 |
| return outside function | `00_the_basics/statements` | 负责语法边界 |
| function return value | `01_function/return_type` | statements 不重复 |
| declarations / TDZ / hoisting / duplicate | `00_the_basics/declarations` | statements 不展开 |
| expression operators / short-circuit / calculation | `00_the_basics/operators` | statements 不展开 |
| for init declaration binding | `00_the_basics/declarations` | statements 只做循环控制流 |
| for condition / update expression semantics | `00_the_basics/operators` | statements 只做执行顺序层面 |
| for-of iterable object behavior | `types` + `builtin API` | statements 只做循环控制流 |
| class constructor / method / field / inheritance | `02_class` | statements 不展开 |
| module import/export binding | `06_module` + `declarations` | statements 不展开 |
| builtin API methods | `04_builtin_api_watch` | statements 不展开 |

## Potential Misplaced Cases

| 文件路径 | 测试点 | 是否疑似误放 statements | 建议处理 |
|---|---|---|---|
| `xts/pass/statement_expression_basic_pass.ets` | 表达式语句执行并丢弃 | 否 | keep_as_statement — 测试 expression statement 语法，不测试运算符行为 |
| `xts/pass/statement_catch_binding_scope_pass.ets` | catch binding 块级作用域 | 否 | keep_as_statement — 测试 catch 语句执行行为，catch binding 声明规则归 declarations 但语句行为归 statements |
| `xts/pass/statement_for_in_object_property_pass.ets` | for-in 枚举对象属性 | 否 | keep_as_statement — 测试 for-in 循环控制流，不测试对象属性枚举细节 |
| `xts/pass/statement_for_of_array_pass.ets` | for-of 迭代数组 | 否 | keep_as_statement — 测试 for-of 循环控制流，不测试 Array builtin 方法 |
| `xts/fail_runtime/statement_for_of_non_iterable_fail_runtime.ets` | for-of 非 iterable TypeError | 否 | keep_as_statement — 测试 for-of 语句运行时异常，iterable 协议细节归 types |
| `xts/boundary/statement_finally_override_control_flow_boundary.ets` | finally 覆盖控制流 | 否 | keep_as_statement — 测试 finally 语句控制流覆盖，return 返回值归 function |

**结论：未发现疑似误放文件。** 所有 33 个 .ets 文件均正确归属于 statements 章节管辖范围。

## Cross Feature Ownership

| 交叉点 | Statements 负责 | 关联章节负责 | 说明 |
|---|---|---|---|
| for statement | 循环控制流、break/continue | declarations 负责 init 声明绑定，operators 负责条件/update 表达式 | 避免重复 |
| return statement | 函数外非法边界 | function 负责函数内返回值行为 | 避免重复 |
| try/catch | 异常控制流 | declarations 负责 catch binding 绑定语义 | 避免重复 |
| if/switch | 分支执行 | operators 负责条件表达式计算 | 避免重复 |
| for-of | 循环控制流 | types/builtin 负责 iterable/array/string 行为 | 避免重复 |
| for-in | 循环控制流 | types 负责对象属性枚举行为 | 避免重复 |
| expression statement | 语句语法归属 | operators 负责表达式求值 | 避免重复 |

## Conclusion

经过逐文件审查，当前 statements 章节的 33 个 .ets 候选用例均正确归属于语句体系管辖范围。没有发现需要迁移到 declarations / operators / function / class / module / builtin API 的误放文件。

交叉场景的处理符合 ownership 规则：
- for 循环只测试控制流，不展开 init 声明绑定和条件/update 表达式运算
- return 只测试函数外语法边界，不测试函数内返回值行为
- try/catch/finally 只测试异常控制流，不展开 catch binding 声明规则
- for-of 只测试循环控制流，不展开 iterable 协议和 Array builtin 方法
- expression statement 只测试语句语法，不展开运算符全量行为
