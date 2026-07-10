# Statement To Feature Mapping

## 1. Purpose

本文件明确语句体系与 Declarations / Operators / Function / Types / Module / Exception 等语言特性章节之间的映射关系和测试归属规则。

核心原则：

**statements 是 00_the_basics 的基础入口，不替代 declarations/operators/function/module，而是负责语句层面的控制流与执行规则总控。**

控制流语句执行语义由 statements 主负责；表达式计算和运算符行为由 operators 主负责；声明绑定和 TDZ 由 declarations 主负责；函数调用和 return 返回值由 function 主负责。

## 2. Mapping Table

| 语句能力 | 本目录负责 | 关联目录负责 | 关联目录 | 说明 |
|---|---|---|---|---|
| block / empty / expression statement | ✅ statements | 表达式求值 | operators | 语句执行归 statements，表达式语义归 operators |
| if / switch 控制流 | ✅ statements | 条件表达式求值 | operators | 控制流归 statements，条件运算归 operators |
| while / do-while / for 循环控制 | ✅ statements | 循环条件求值、init 声明 | operators / declarations | 循环控制归 statements，条件运算归 operators，init 声明归 declarations |
| for-in / for-of 迭代 | ✅ statements | iterable 协议、属性枚举 | types / builtin API | 语句控制归 statements，迭代协议归 types/builtin |
| break / continue / label | ✅ statements | — | — | 跳转语句完全归 statements |
| return 语句边界 | ✅ statements | return 返回值语义 | 01_function | 函数外 return 归 statements，函数内 return 归 function |
| throw / try / catch / finally | ✅ statements | catch binding 声明 | declarations | 异常控制流归 statements，catch 绑定规则可与 declarations 映射 |
| debugger 语句 | ✅ statements | — | — | 调试语句归 statements |
| 顶层语句边界 | ✅ statements | 模块解析、顶层声明 | 06_module / declarations | 语句位置归 statements，模块解析归 module |

## 3. Declarations Mapping

| 交叉测试点 | statements 负责 | declarations 负责 | 说明 |
|---|---|---|---|
| for init 中 let/var 声明 | 循环控制归 statements | 声明绑定规则归 declarations | for init 声明是交叉点 |
| catch binding 作用域 | catch 语句执行归 statements | 绑定作用域规则归 declarations | catch 参数是声明绑定 |
| block 内 let/const 作用域 | block 语句归 statements | 块级绑定规则归 declarations | block 是语句，绑定是声明规则 |
| 严格模式块级函数声明 | 语句位置归 statements | 声明绑定归 declarations | 交叉边界 |

归属规则：**声明绑定、TDZ、重复声明归 declarations；for 初始化中的声明可做交叉说明。**

## 4. Operators Mapping

| 交叉测试点 | statements 负责 | operators 负责 | 说明 |
|---|---|---|---|
| if 条件表达式 | if 语句归 statements | 条件求值归 operators | 语句控制归 statements，表达式归 operators |
| switch case 比较 | switch 语句归 statements | === 比较归 operators | 语句归 statements，比较运算归 operators |
| while/for 条件 | 循环语句归 statements | 条件求值归 operators | 循环控制归 statements，条件归 operators |
| expression statement | 语句归 statements | 表达式求值归 operators | 语句是容器，表达式是内容 |

归属规则：**表达式计算、运算符短路和求值顺序归 operators；statements 只使用表达式作为条件或子表达式。**

## 5. Function Mapping

| 交叉测试点 | statements 负责 | 01_function 负责 | 说明 |
|---|---|---|---|
| return 语句语法 | 函数外 return 归 statements | 函数内 return 归 function | 语法边界归 statements，返回值语义归 function |
| return 在 finally 中 | 控制流覆盖归 statements | return 返回值归 function | finally 中 return 覆盖是语句控制流 |
| try 中的函数调用异常 | try/catch 归 statements | 函数调用归 function | 异常传播归 statements，调用归 function |
| 函数体内的循环/分支 | 语句归 statements | 函数体归 function | 语句在函数内执行，但语句语义归 statements |

归属规则：**函数调用、参数、return 返回值语义归 function；return outside function 的语法边界归 statements。**

## 6. Types Mapping

| 交叉测试点 | statements 负责 | types 负责 | 说明 |
|---|---|---|---|
| for-of iterable 判断 | 循环语句归 statements | iterable 类型判断归 types | 语句控制归 statements，类型识别归 types |
| for-in 属性枚举 | 循环语句归 statements | 对象属性类型归 types | 语句归 statements，属性类型归 types |
| if 条件 ToBoolean | if 语句归 statements | ToBoolean 规则归 types | 语句归 statements，转换规则归 types |

归属规则：**for-of iterable / array 行为可与 types / builtin API 建立映射，但语句循环控制归 statements。**

## 7. Module Mapping

| 交叉测试点 | statements 负责 | 06_module 负责 | 说明 |
|---|---|---|---|
| 顶层 return/break/continue | 语法边界归 statements | 模块顶层语义归 module | 语句位置归 statements，模块归 module |
| 模块顶层语句执行顺序 | 语句执行归 statements | 模块加载归 module | 语句归 statements，模块加载归 module |
| import/export 语句位置 | 语句位置归 statements | 模块解析归 module | 位置规则归 statements，解析归 module |

归属规则：**top-level statement 与 module 语义建立映射，模块解析不归 statements。**

## 8. Exception / Runtime Mapping

| 运行时能力 | statements 负责 | 相关 | 说明 |
|---|---|---|---|
| throw 抛出异常 | ✅ | fail_runtime 用例 | 语句控制流异常 |
| try/catch/finally 异常传播 | ✅ | pass/fail_runtime 用例 | 语句控制流 |
| for-of 非 iterable TypeError | ✅ | fail_runtime 用例 | 语句运行时异常 |
| finally 中 throw 覆盖 | ✅ | fail_runtime 用例 | 语句控制流覆盖 |
| 未捕获异常程序终止 | ✅ | fail_runtime 用例 | 语句异常传播 |

## 9. Test Ownership Rule

| 语句能力类别 | 测试 ownership | 测试归属目录 | 关联目录可做 |
|---|---|---|---|
| block/empty/expression 基础 | statements | `00_the_basics/statements` | operators 集成 |
| if/switch 控制流 | statements | `00_the_basics/statements` | operators 集成 |
| while/do-while/for 循环 | statements | `00_the_basics/statements` | operators/declarations 集成 |
| for-in/for-of 迭代 | statements | `00_the_basics/statements` | types/builtin 集成 |
| break/continue/label | statements | `00_the_basics/statements` | — |
| return 语句边界 | statements | `00_the_basics/statements` | function 集成 |
| throw/try/catch/finally | statements | `00_the_basics/statements` | declarations 集成 |
| debugger | statements | `00_the_basics/statements` | — |
| 顶层语句边界 | statements | `00_the_basics/statements` | module 集成 |
| 表达式求值 | operators | `00_the_basics/operators` | — |
| 声明绑定/TDZ | declarations | `00_the_basics/declarations` | — |
| 函数调用/参数/return | 01_function | `01_function` | — |
| 模块解析 | 06_module | `06_module` | — |

## 10. Duplication Avoidance Rule

为避免 statements 和其他章节之间测试用例重复，遵循以下规则：

1. **statements 只做语句控制流层面的测试**：循环、分支、跳转、异常处理、块作用域控制流。不做表达式全量行为、声明绑定规则、函数调用语义测试。

2. **关联章节做功能语义层面的测试**：operators 做运算符行为，declarations 做声明绑定，01_function 做函数语义，types 做类型识别。

3. **交叉场景由 statements 生成 ownership 用例**，关联章节可做集成用例但标注 "STMT-交叉参照"。

4. **for init 中 let 声明**同时出现在 statements 和 declarations 的 test_design 中，但 XTS 用例只在 statements 下生成（循环控制归 statements）。declarations 只做引用说明。

5. **return 语句**同时出现在 statements 和 01_function 的 test_design 中，但函数内 return 用例归 01_function，函数外 return 用例归 statements。

6. **finally 中 return** 的控制流覆盖归 statements（boundary），return 的返回值语义归 01_function。

7. **coverage_matrix 中跨章节测试点**：明确标注建议路径指向哪个目录，避免两个目录同时生成同名用例。

8. **test262 映射分工**：语句基础 test262 归 statements；表达式 test262 归 operators；函数 test262 归 01_function；声明 test262 归 declarations。
