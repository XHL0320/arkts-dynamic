# Declaration To Feature Mapping

## 1. Purpose

本文件明确声明体系与 Function / Class / Interface / Module / Annotation 等语言特性章节之间的映射关系和测试归属规则。

核心原则：

**declarations 是 language foundation 的底层入口，不替代 function/class/module 等章节，而是为它们提供声明规则总控。**

声明绑定、提升、TDZ、重复声明等共性规则由 declarations 主负责；函数调用、参数、return、arguments、this、闭包等函数特有语义由 01_function 主负责；class 成员语义由 02_class 主负责。

## 2. Mapping Table

| 声明能力 | 本目录负责 | 关联目录负责 | 关联目录 | 说明 |
|---|---|---|---|---|
| var 声明绑定、提升、重复声明 | ✅ declarations | — | — | ES 函数作用域声明核心行为 |
| let 声明绑定、块级作用域、TDZ、重复声明限制 | ✅ declarations | — | — | ES 块级声明核心行为 |
| const 声明绑定、初始化要求、不可重新赋值、TDZ | ✅ declarations | — | — | ES const 核心行为 |
| function 声明提升、重复声明、块级声明边界 | ✅ declarations | 集成用例 | 01_function/function_declaration | ownership 归 declarations；function 章节可做集成 |
| function 调用、参数、return、arguments、this | — | ✅ 01_function | 01_function | 函数运行语义完全归 function |
| function 表达式不提升 | ✅ declarations | 集成用例 | 01_function/function_declaration | 声明 vs 表达式提升对比归 declarations |
| class 声明绑定、TDZ、重复声明 | ✅ declarations | 集成用例 | 02_class | ownership 归 declarations |
| class 成员、继承、构造器语义 | — | ✅ 02_class | 02_class | class 运行语义完全归 class |
| import 声明绑定创建、只读 live binding、位置限制 | ✅ declarations | 模块解析、跨文件行为 | 06_module/import | 声明绑定归 declarations；模块解析归 module |
| export 声明与本地声明关系、重复导出 | ✅ declarations | 模块导出行为 | 06_module/export | 声明绑定归 declarations；导出行为归 module |
| annotation 声明形态 | ✅ declarations | annotation 字段、retention、target | 08_annotation | 声明形态映射归 declarations；细节归 annotation |
| enum 声明绑定语义 | ✅ declarations | — | — | TypeScript 扩展声明，不在 ES 规范内 |
| namespace 声明形态 | ✅ declarations | — | — | TypeScript 扩展声明（如支持） |

## 3. Function Mapping

function_declaration 与 declarations 的交叉点：

| 交叉测试点 | declarations 负责 | 01_function 负责 | 说明 |
|---|---|---|---|
| 函数声明提升 | ✅ ownership | 集成用例 | 声明提升是声明规则，归 declarations |
| duplicate function declaration | ✅ ownership | 集成用例 | 重复声明是声明规则 |
| block-level function declaration | ✅ ownership | 集成用例 | 声明位置和作用域是声明规则 |
| function expression no hoisting | ✅ ownership | 集成用例 | 提升 vs 不提升对比是声明规则 |
| function declaration inside module/top-level | ✅ ownership | 集成用例 | 声明位置是声明规则 |
| 函数调用（call/apply/bind） | — | ✅ | 运行语义归 function |
| 函数参数（缺省、rest） | — | ✅ | 运行语义归 function |
| return 行为 | — | ✅ | 运行语义归 function |
| arguments 对象 | — | ✅ | 运行语义归 function |
| this 绑定 | — | ✅ | 运行语义归 function |
| 闭包捕获 | — | ✅ | 运行语义归 function |

归属规则：**声明绑定、提升、重复声明规则由 declarations 主负责；函数调用、参数、return、arguments、this、闭包由 function 主负责。**

## 4. Class Mapping

class_declaration 与 declarations 的交叉点：

| 交叉测试点 | declarations 负责 | 02_class 负责 | 说明 |
|---|---|---|---|
| class 声明 TDZ | ✅ ownership | 集成用例 | TDZ 是声明规则 |
| class 重复声明 SyntaxError | ✅ ownership | 集成用例 | 重复声明是声明规则 |
| class + let/var 同名冲突 | ✅ ownership | — | 声明规则组合 |
| class 成员语义（方法、属性、构造器） | — | ✅ | 运行语义归 class |
| class 继承、super 调用 | — | ✅ | 运行语义归 class |
| class 实例化行为 | — | ✅ | 运行语义归 class |

归属规则：**class declaration TDZ/duplicate 归 declarations；class 成员语义归 02_class。**

## 5. Interface Mapping

| 交叉测试点 | declarations 负责 | 相关目录 | 说明 |
|---|---|---|---|
| interface 声明是否作为兼容语法允许 | boundary | — | 纯类型层声明，运行时无绑定 |
| interface + class 同名边界 | boundary | 02_class | 需确认同文件同名冲突 |
| interface 运行时行为 | — | — | 无运行时绑定，不做运行时测试 |

归属规则：**interface 声明形态映射归 declarations；interface 是纯类型层声明，不做运行时测试用例。**

## 6. Module Mapping

import/export 与 declarations 的交叉点：

| 交叉测试点 | declarations 负责 | 06_module 负责 | 说明 |
|---|---|---|---|
| import 绑定创建（Immutable Binding） | ✅ ownership | 集成用例 | 绑定创建是声明规则 |
| import 只读 live binding | ✅ ownership | 集成用例 | 绑定语义是声明规则 |
| import 重复同名绑定 SyntaxError | ✅ ownership | — | 编译期声明规则 |
| import 位置限制（只允许模块顶层） | ✅ ownership | — | 声明位置规则 |
| export 声明与本地声明关系 | ✅ ownership | 集成用例 | 声明规则 |
| export 重复同名 SyntaxError | ✅ ownership | — | 编译期声明规则 |
| export 位置限制 | ✅ ownership | — | 声明位置规则 |
| 模块解析（跨文件、路径、循环依赖） | — | ✅ | 模块行为归 module |
| 模块加载和执行顺序 | — | ✅ | 模块行为归 module |

归属规则：**import/export 声明绑定归 declarations；模块解析和跨文件行为归 06_module。**

## 7. Annotation Mapping

annotation 与 declarations 的交叉点：

| 交叉测试点 | declarations 负责 | 08_annotation / 08_decorator_annotation 负责 | 说明 |
|---|---|---|---|
| annotation 声明形态（语法允许性） | boundary | ✅ | 声明形态映射归 declarations |
| annotation 字段声明 | — | ✅ | annotation 内部规则 |
| @Retention / @Target | — | ✅ | annotation 元规则 |
| annotation runtime access | — | ✅ | 运行时行为归 annotation |
| 装饰器修饰的声明绑定是否受影响 | boundary | ✅ | 交叉边界 |

归属规则：**annotation 声明形态归 declarations 映射；annotation 字段、retention、target、runtime access 归 08_annotation。**

## 8. Builtin / Runtime Mapping

| 运行时能力 | declarations 负责 | 相关 | 说明 |
|---|---|---|---|
| ReferenceError（TDZ） | ✅ | fail_runtime 用例 | 声明运行时异常 |
| SyntaxError（重复声明） | ✅ | fail_compile 用例 | 声明编译期错误 |
| TypeError（const 重新赋值） | ✅ | fail_runtime 用例 | 声明运行时异常 |
| TypeError（import 重新赋值） | 集成用例 | 06_module | 声明运行时异常 |
| globalThis 属性创建 | ✅ | pass 用例 | 脚本模式 var 全局行为 |

## 9. Test Ownership Rule

| 声明能力类别 | 测试 ownership | 测试归属目录 | 关联目录可做 |
|---|---|---|---|
| var/let/const 基础绑定和作用域 | declarations | `00_the_basics/declarations` | — |
| var/let/const TDZ | declarations | `00_the_basics/declarations` | — |
| var/let/const 重复声明规则 | declarations | `00_the_basics/declarations` | — |
| function 声明提升和重复声明 | declarations | `00_the_basics/declarations` | `01_function` 集成用例 |
| class 声明 TDZ 和重复声明 | declarations | `00_the_basics/declarations` | `02_class` 集成用例 |
| import/export 声明绑定规则 | declarations | `00_the_basics/declarations` | `06_module` 集成用例 |
| annotation 声明形态映射 | declarations（映射） | `00_the_basics/declarations` | `08_annotation`（实际用例） |
| 函数调用/参数/return/arguments | 01_function | `01_function` | — |
| class 成员/继承/构造器 | 02_class | `02_class` | — |
| 模块解析和跨文件行为 | 06_module | `06_module` | — |

## 10. Duplication Avoidance Rule

为避免 declarations 和其他章节之间测试用例重复，遵循以下规则：

1. **declarations 只做声明绑定层面的测试**：提升、TDZ、重复声明、作用域规则、初始化时机。不做函数调用行为、class 成员行为、模块解析行为测试。

2. **关联章节做功能语义层面的测试**：01_function 做函数调用语义，02_class 做 class 成员语义，06_module 做模块解析。

3. **交叉场景由 declarations 生成 ownership 用例**，关联章节可做集成用例但标注 "DECL-交叉参照"。

4. **function declaration hoisting** 同时出现在 declarations 和 01_function 的 test_design 中，但 XTS 用例只在 declarations 下生成（ownership 归 declarations）。01_function 只做引用说明。

5. **coverage_matrix 中跨章节测试点**：明确标注建议路径指向哪个目录，避免两个目录同时生成同名用例。

6. **test262 映射分工**：声明基础语义 test262 归 declarations；函数特有 test262 归 01_function；模块 test262 归 06_module。
