# Keyword To Feature Mapping

## 1. Purpose

本文件明确关键字体系与 Declarations / Statements / Operators / Function / Class / Module / TypeScript Compatibility 等语言特性章节之间的映射关系和测试归属规则。

核心原则：

**keywords 是 00_the_basics 的基础入口，不替代 declarations/statements/operators/function/class/module，而是负责词法关键字、保留字和上下文合法性的总控。**

关键字合法性、保留字限制、上下文关键字边界由 keywords 主负责；声明绑定由 declarations 主负责；语句执行由 statements 主负责；运算符语义由 operators 主负责。

## 2. Mapping Table

| 关键字能力 | 本目录负责 | 关联目录负责 | 关联目录 | 说明 |
|---|---|---|---|---|
| 关键字合法性 | ✅ keywords | — | — | 关键字不能用作标识符 |
| 保留字限制 | ✅ keywords | — | — | 严格/非严格模式保留字 |
| 上下文关键字边界 | ✅ keywords | 语义行为 | statements / module / function | 上下文位置合法性归 keywords，语义归关联章节 |
| 未来保留字 | ✅ keywords | — | — | enum/implements 等边界 |
| var/let/const 关键字 | ✅ keywords | 声明绑定/TDZ/提升 | declarations | 关键字合法性归 keywords，绑定规则归 declarations |
| function 关键字 | ✅ keywords | 函数调用/参数/return | 01_function | 关键字合法性归 keywords，函数语义归 function |
| class 关键字 | ✅ keywords | class 成员/继承 | 02_class | 关键字合法性归 keywords，class 语义归 class |
| if/switch/for/while 关键字 | ✅ keywords | 语句执行 | statements | 关键字位置归 keywords，执行语义归 statements |
| break/continue/return 关键字 | ✅ keywords | 跳转语义 | statements | 关键字位置归 keywords，跳转行为归 statements |
| throw/try/catch/finally 关键字 | ✅ keywords | 异常控制流 | statements | 关键字位置归 keywords，异常语义归 statements |
| typeof/void/delete 关键字 | ✅ keywords | 运算符语义 | operators | 关键字合法性归 keywords，运算行为归 operators |
| instanceof/in/new 关键字 | ✅ keywords | 运算符语义 | operators | 关键字合法性归 keywords，运算行为归 operators |
| this/super 关键字 | ✅ keywords | this 绑定/super 调用 | 01_function / 02_class | 关键字合法性归 keywords，绑定语义归 function/class |
| import/export/from/as 关键字 | ✅ keywords | 模块解析/绑定 | 06_module / declarations | 关键字语法归 keywords，模块行为归 module |
| async/await/yield 关键字 | ✅ keywords | async/generator 语义 | 01_function / statements | 关键字边界归 keywords，async 语义归 function |
| true/false/null 字面量 | ✅ keywords | 类型行为 | types | 字面量关键字归 keywords，类型语义归 types |
| type/namespace/declare/abstract/readonly | ✅ keywords（边界） | 详细兼容差异 | typescript_compatibility | 边界索引归 keywords，详细差异归 TS compat |
| public/private/protected/static | ✅ keywords（边界） | 成员修饰语义 | 02_class / typescript_compatibility | 边界归 keywords，成员语义归 class |

## 3. Declarations Mapping

| 交叉测试点 | keywords 负责 | declarations 负责 | 说明 |
|---|---|---|---|
| var/let/const 关键字 | ✅ 关键字合法性 | 声明绑定/TDZ/提升 | 关键字不能作标识符归 keywords |
| function 关键字 | ✅ 关键字合法性 | — | function 关键字位置归 keywords |
| class 关键字 | ✅ 关键字合法性 | — | class 关键字位置归 keywords |

归属规则：**声明绑定、提升、TDZ、重复声明归 declarations，不归 keywords。**

## 4. Statements Mapping

| 交叉测试点 | keywords 负责 | statements 负责 | 说明 |
|---|---|---|---|
| if/else/switch/for/while 关键字 | ✅ 位置合法性 | 语句执行语义 | keywords 验证位置，statements 验证行为 |
| break/continue/return 关键字 | ✅ 位置合法性 | 跳转语义 | keywords 验证位置，statements 验证行为 |
| throw/try/catch/finally 关键字 | ✅ 位置合法性 | 异常控制流 | keywords 验证位置，statements 验证行为 |
| debugger 关键字 | ✅ 位置合法性 | 执行行为 | keywords 验证位置，statements 验证行为 |

归属规则：**语句执行语义归 statements；keywords 只验证语句关键字位置合法性。**

## 5. Operators Mapping

| 交叉测试点 | keywords 负责 | operators 负责 | 说明 |
|---|---|---|---|
| typeof 关键字 | ✅ 关键字合法性 | typeof 运算语义 | keywords 验证语法，operators 验证行为 |
| void/delete 关键字 | ✅ 关键字合法性 | 运算语义 | keywords 验证语法，operators 验证行为 |
| instanceof/in 关键字 | ✅ 关键字合法性 | 运算语义 | keywords 验证语法，operators 验证行为 |
| new 关键字 | ✅ 关键字合法性 | new 运算语义 | keywords 验证语法，operators 验证行为 |

归属规则：**运算符运行语义归 operators；keywords 只验证 typeof/delete/void/in/instanceof/new 作为关键字/运算符的语法边界。**

## 6. Function Mapping

| 交叉测试点 | keywords 负责 | 01_function 负责 | 说明 |
|---|---|---|---|
| function 关键字 | ✅ 关键字合法性 | 函数调用/参数/return | keywords 验证语法，function 验证行为 |
| async 关键字 | ✅ 上下文边界 | async 函数语义 | keywords 验证位置，function 验证行为 |
| await 关键字 | ✅ 上下文边界 | await 运算语义 | keywords 验证位置，function 验证行为 |
| yield 关键字 | ✅ 上下文边界 | generator 语义 | keywords 验证位置，function 验证行为 |
| return 关键字 | ✅ 位置合法性 | 返回值语义 | keywords 验证位置，function 验证行为 |

归属规则：**函数调用、参数、return 返回值、closure 归 function；keywords 只验证 function/async/return/await/yield 关键字边界。**

## 7. Class Mapping

| 交叉测试点 | keywords 负责 | 02_class 负责 | 说明 |
|---|---|---|---|
| class 关键字 | ✅ 关键字合法性 | class 成员/继承 | keywords 验证语法，class 验证行为 |
| extends 关键字 | ✅ 关键字合法性 | 继承语义 | keywords 验证语法，class 验证行为 |
| super 关键字 | ✅ 关键字合法性 | super 调用语义 | keywords 验证语法，class 验证行为 |
| static 关键字 | ✅ 边界 | static 成员语义 | keywords 验证边界，class 验证行为 |
| public/private/protected | ✅ 边界 | 成员修饰语义 | keywords 验证边界，class 验证行为 |

归属规则：**class constructor、继承、成员归 class；keywords 只验证 class/extends/super/static/private 等关键字边界。**

## 8. Module Mapping

| 交叉测试点 | keywords 负责 | 06_module 负责 | 说明 |
|---|---|---|---|
| import 关键字 | ✅ 语法边界 | 模块解析/绑定 | keywords 验证语法，module 验证行为 |
| export 关键字 | ✅ 语法边界 | 模块导出行为 | keywords 验证语法，module 验证行为 |
| from/as/default | ✅ 上下文边界 | 模块行为 | keywords 验证位置，module 验证行为 |

归属规则：**import/export 模块解析和绑定归 module/declarations；keywords 只验证模块关键字语法边界。**

## 9. TypeScript Compatibility Mapping

| 交叉测试点 | keywords 负责 | typescript_compatibility 负责 | 说明 |
|---|---|---|---|
| type 关键字 | ✅ 边界索引 | 详细兼容差异 | 边界归 keywords，详细归 TS compat |
| namespace 关键字 | ✅ 边界索引 | 详细兼容差异 | 边界归 keywords，详细归 TS compat |
| declare 关键字 | ✅ 边界索引 | 详细兼容差异 | 边界归 keywords，详细归 TS compat |
| abstract/readonly | ✅ 边界索引 | 详细兼容差异 | 边界归 keywords，详细归 TS compat |
| enum 关键字 | ✅ 边界索引 | 详细兼容差异 | 边界归 keywords，详细归 TS compat |

归属规则：**TS 类型关键字兼容差异归 typescript_compatibility；keywords 只做边界索引。**

## 10. Test Ownership Rule

| 关键字能力类别 | 测试 ownership | 测试归属目录 | 关联目录可做 |
|---|---|---|---|
| 关键字合法性/保留字 | keywords | `00_the_basics/keywords` | — |
| 上下文关键字边界 | keywords | `00_the_basics/keywords` | statements/module/function 集成 |
| 严格模式保留字 | keywords | `00_the_basics/keywords` | — |
| TS 关键字兼容边界 | keywords（边界索引） | `00_the_basics/keywords` | typescript_compatibility（详细） |
| 声明绑定/TDZ | declarations | `00_the_basics/declarations` | — |
| 语句执行语义 | statements | `00_the_basics/statements` | — |
| 运算符语义 | operators | `00_the_basics/operators` | — |
| 函数调用/参数/return | 01_function | `01_function` | — |
| class 成员/继承 | 02_class | `02_class` | — |
| 模块解析/绑定 | 06_module | `06_module` | — |

## 11. Duplication Avoidance Rule

为避免 keywords 和其他章节之间测试用例重复，遵循以下规则：

1. **keywords 只做关键字合法性层面的测试**：关键字不能作标识符、保留字限制、上下文关键字位置。不做声明绑定、语句执行、运算符行为、函数调用、class 成员行为测试。

2. **关联章节做功能语义层面的测试**：declarations 做声明绑定，statements 做语句执行，operators 做运算符行为，function 做函数语义，class 做 class 语义。

3. **交叉场景由 keywords 生成 ownership 用例**，关联章节可做集成用例但标注 "KW-交叉参照"。

4. **var/let/const 关键字合法性**归 keywords，var/let/const 声明绑定/TDZ 归 declarations。两个目录可同时出现，但 keywords 只测试 "var 不能作变量名"，declarations 测试 "var 提升/TDZ/重复声明"。

5. **typeof 关键字合法性**归 keywords，typeof 运算符行为归 operators。keywords 只测试 "typeof 不能作变量名"，operators 测试 "typeof null 返回 object"。

6. **async/await 关键字边界**归 keywords，async 函数语义归 function。keywords 只测试 "await 在非 async 上下文 SyntaxError"，function 测试 "async 函数 Promise 行为"。

7. **coverage_matrix 中跨章节测试点**：明确标注建议路径指向哪个目录，避免两个目录同时生成同名用例。

8. **test262 映射分工**：关键字合法性 test262 归 keywords；语句 test262 归 statements；运算符 test262 归 operators；函数 test262 归 01_function。
