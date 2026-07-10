# This Keyword To Feature Mapping

## 1. Purpose

本文件明确 this 关键字体系与 Function / Class / Module / Operators / TypeScript Compatibility 等语言特性章节之间的映射关系和测试归属规则。

核心原则：

**07_this_keyword 不替代 function/class/module/operators/TS compatibility，而是从 this 绑定视角统一收敛相关行为与风险。**

this 绑定、receiver、call/apply/bind、箭头函数 lexical this、class/static/derived this 边界由 this_keyword 主负责；函数调用由 function 主负责；class 语义由 class 主负责。

## 2. Mapping Table

| This Keyword 能力 | 本目录负责 | 关联目录负责 | 关联目录 | 说明 |
|---|---|---|---|---|
| this 绑定规则 | ✅ this_keyword | — | — | this 绑定归 this_keyword |
| call/apply/bind this | ✅ this_keyword | 函数调用语义 | function | this 绑定归 this_keyword，调用归 function |
| 箭头函数 lexical this | ✅ this_keyword | 箭头函数语义 | function | lexical this 归 this_keyword，箭头函数其他语义归 function |
| class constructor this | ✅ this_keyword | constructor 语义 | class | this 边界归 this_keyword，constructor 归 class |
| class instance method this | ✅ this_keyword | 方法语义 | class | this 绑定归 this_keyword，方法语义归 class |
| derived class super/this | ✅ this_keyword | 继承语义 | class | this 边界归 this_keyword，继承归 class |
| static this | ✅ this_keyword | static 语义 | class | this 绑定归 this_keyword，static 归 class |
| module top-level this | ✅ this_keyword | 模块语义 | module | this 边界归 this_keyword，模块归 module |
| getter/setter this | ✅ this_keyword | accessor 语义 | class | this 绑定归 this_keyword，accessor 归 class |
| extracted/callback this | ✅ this_keyword | 函数语义 | function | this 丢失归 this_keyword，函数归 function |
| this parameter | ✅ this_keyword（边界） | TS 兼容差异 | typescript_compatibility | 边界归 this_keyword，详细归 TS compat |
| polymorphic this | ✅ this_keyword（边界） | TS 兼容差异 | typescript_compatibility | 边界归 this_keyword，详细归 TS compat |

## 3. Function Mapping

| 交叉测试点 | this_keyword 负责 | 01_function 负责 | 说明 |
|---|---|---|---|
| 普通函数 this | ✅ this 绑定 | 函数调用语义 | this 绑定归 this_keyword，调用归 function |
| 箭头函数 lexical this | ✅ lexical this | 箭头函数其他语义 | lexical this 归 this_keyword |
| call/apply/bind | ✅ this 绑定 | 调用语义 | this 绑定归 this_keyword，调用归 function |
| callback this | ✅ this 丢失/绑定 | callback 语义 | this 边界归 this_keyword |
| 嵌套函数 this | ✅ this 传播 | 嵌套语义 | this 传播归 this_keyword |

归属规则：**函数调用、参数、return、closure 全量语义归 function；this_keyword 只看 this 绑定。**

## 4. Class Mapping

| 交叉测试点 | this_keyword 负责 | 02_class 负责 | 说明 |
|---|---|---|---|
| constructor this | ✅ this 使用边界 | constructor 语义 | this 归 this_keyword，constructor 归 class |
| 实例方法 this | ✅ this 绑定 | 方法语义 | this 归 this_keyword，方法归 class |
| static this | ✅ this 绑定 | static 语义 | this 归 this_keyword，static 归 class |
| derived super/this | ✅ this 边界 | 继承语义 | this 边界归 this_keyword，继承归 class |
| getter/setter this | ✅ this 绑定 | accessor 语义 | this 归 this_keyword，accessor 归 class |

归属规则：**class constructor、成员、继承、super 全量语义归 class；this_keyword 只看 class 场景下 this 使用边界。**

## 5. Module Mapping

| 交叉测试点 | this_keyword 负责 | 06_module 负责 | 说明 |
|---|---|---|---|
| module top-level this | ✅ this 边界 | 模块语义 | this 归 this_keyword，模块归 module |
| 模块自动 strict | ✅ strict this 边界 | 模块语义 | strict this 归 this_keyword |

归属规则：**module import/export、模块加载归 module；this_keyword 只看 module top-level this。**

## 6. Operators Mapping

| 交叉测试点 | this_keyword 负责 | 00_the_basics/operators 负责 | 说明 |
|---|---|---|---|
| this in 表达式 | ✅ this 绑定结果 | 表达式求值 | this 结果归 this_keyword，求值归 operators |

归属规则：**表达式运算、调用表达式基础求值归 operators；this_keyword 只看 this 绑定结果。**

## 7. TypeScript Compatibility Mapping

| 交叉测试点 | this_keyword 负责 | typescript_compatibility 负责 | 说明 |
|---|---|---|---|
| this parameter | ✅ 边界 | 详细差异 | 边界归 this_keyword，详细归 TS compat |
| polymorphic this | ✅ 边界 | 详细差异 | 边界归 this_keyword，详细归 TS compat |
| this type | ✅ 边界 | 详细差异 | 边界归 this_keyword，详细归 TS compat |

归属规则：**TypeScript this parameter、this type、polymorphic this 完整兼容差异归 typescript_compatibility；this_keyword 本目录维护核心语言看护。**

## 8. Test Ownership Rule

| This Keyword 能力类别 | 测试 ownership | 测试归属目录 | 关联目录可做 |
|---|---|---|---|
| this 绑定规则 | this_keyword | `07_this_keyword` | function 集成 |
| call/apply/bind this | this_keyword | `07_this_keyword` | function 集成 |
| 箭头函数 lexical this | this_keyword | `07_this_keyword` | function 集成 |
| class this 边界 | this_keyword | `07_this_keyword` | class 集成 |
| derived super/this | this_keyword | `07_this_keyword` | class 集成 |
| module top-level this | this_keyword | `07_this_keyword` | module 集成 |
| extracted/callback this | this_keyword | `07_this_keyword` | function 集成 |
| this parameter/type | this_keyword（边界） | `07_this_keyword` | typescript_compatibility 详细 |
| 函数调用/参数/return | function | `01_function` | — |
| class constructor/成员/继承 | class | `02_class` | — |
| module import/export | module | `06_module` | — |

## 9. Duplication Avoidance Rule

1. **this_keyword 只做 this 绑定层面的测试**：this 绑定、receiver、call/apply/bind、箭头函数 lexical this、class/static/derived this、extracted/callback this。不做函数调用全量语义、class 成员行为、module 解析。

2. **关联章节做功能语义层面的测试**：function 做函数语义，class 做 class 语义，module 做模块解析。

3. **箭头函数 lexical this**：归 this_keyword，箭头函数其他语义（参数、return、block body）归 function。

4. **class constructor this**：归 this_keyword（this 使用边界），constructor 初始化语义归 class。

5. **derived super/this**：归 this_keyword（super 前后 this 边界），继承语义归 class。

6. **module top-level this**：归 this_keyword（this 边界），模块加载归 module。

7. **coverage_matrix 中跨章节测试点**：明确标注建议路径指向哪个目录。

8. **test262 映射分工**：this 绑定 test262 归 this_keyword；函数 test262 归 function；class test262 归 class。
