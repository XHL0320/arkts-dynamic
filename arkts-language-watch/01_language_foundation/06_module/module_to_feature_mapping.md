# Module To Feature Mapping

## 1. Purpose

本文件明确模块体系与 Declarations / Types / Function / Class / Interface / Generic / Null Safety / TypeScript Compatibility 等语言特性章节之间的映射关系和测试归属规则。

核心原则：

**06_module 不替代 declarations/function/class/interface/generic/null_safety/TS compatibility，而是从模块系统视角统一收敛 import/export 与跨文件绑定行为。**

import/export 语法、模块作用域、re-export、live binding、循环依赖、模块路径解析边界由 module 主负责；声明绑定由 declarations 主负责；函数调用由 function 主负责；class 语义由 class 主负责。

## 2. Mapping Table

| Module 能力 | 本目录负责 | 关联目录负责 | 关联目录 | 说明 |
|---|---|---|---|---|
| import/export 语法 | ✅ module | — | — | 模块语法归 module |
| 模块作用域 | ✅ module | 声明绑定规则 | declarations | 模块级隔离归 module，绑定规则归 declarations |
| re-export / export star | ✅ module | — | — | 转发归 module |
| live binding | ✅ module | 绑定更新语义 | declarations | live binding 归 module，绑定规则归 declarations |
| 循环依赖 | ✅ module | — | — | 循环依赖归 module |
| 模块路径解析 | ✅ module（边界） | — | — | 路径解析归 module |
| export function/import | ✅ module 边界 | 函数调用语义 | function | 模块边界归 module，调用归 function |
| export class/import | ✅ module 边界 | class 语义 | class | 模块边界归 module，class 归 class |
| export interface/import | ✅ module 边界 | interface 语义 | interface | 模块边界归 module，interface 归 interface |
| export generic/import | ✅ module 边界 | 泛型规则 | generic | 模块边界归 module，泛型归 generic |
| type-only import/export | ✅ module（边界） | TS 兼容差异 | typescript_compatibility | 边界归 module，详细归 TS compat |
| dynamic import / TLA | ✅ module（边界） | — | — | 边界归 module |
| 模块初始化 null/undefined | ✅ module 场景 | null safety | null_safety | 模块场景归 module，null safety 归 null_safety |

## 3. Declarations Mapping

| 交叉测试点 | module 负责 | declarations 负责 | 说明 |
|---|---|---|---|
| 模块作用域 | ✅ 模块级隔离 | 声明绑定规则 | 隔离归 module，绑定归 declarations |
| import 绑定 | ✅ 导入绑定创建 | 绑定作用域 | 导入归 module，作用域归 declarations |
| live binding | ✅ live binding 行为 | 绑定更新规则 | live binding 归 module，更新规则归 declarations |

归属规则：**声明绑定、作用域基础规则归 declarations；module 只覆盖模块级隔离和导入导出绑定。**

## 4. Types Mapping

| 交叉测试点 | module 负责 | types 负责 | 说明 |
|---|---|---|---|
| namespace import | ✅ 命名空间对象 | 类型识别 | 命名空间归 module，类型识别归 types |
| type-only 运行时擦除 | ✅ 擦除边界 | 类型语义 | 擦除归 module，类型归 types |

归属规则：**基础运行时类型识别归 types；module 只覆盖命名空间对象和类型层导入导出边界。**

## 5. Function Mapping

| 交叉测试点 | module 负责 | 01_function 负责 | 说明 |
|---|---|---|---|
| export function | ✅ 模块边界 | 函数调用语义 | 导出归 module，调用归 function |
| import function | ✅ 模块边界 | 函数调用语义 | 导入归 module，调用归 function |
| default export function | ✅ 模块边界 | 函数语义 | 导出归 module，语义归 function |

归属规则：**函数调用、参数、return、closure 归 function；export function / import function 只做模块边界。**

## 6. Class Mapping

| 交叉测试点 | module 负责 | 02_class 负责 | 说明 |
|---|---|---|---|
| export class | ✅ 模块边界 | class 语义 | 导出归 module，class 归 class |
| import class | ✅ 模块边界 | class 语义 | 导入归 module，class 归 class |
| default export class | ✅ 模块边界 | class 语义 | 导出归 module，class 归 class |

归属规则：**class constructor、成员、继承归 class；export class / import class 只做模块边界。**

## 7. Interface Mapping

| 交叉测试点 | module 负责 | 03_interface 负责 | 说明 |
|---|---|---|---|
| export interface | ✅ 模块边界 | interface 语义 | 导出归 module，interface 归 interface |
| import interface | ✅ 模块边界 | interface 语义 | 导入归 module，interface 归 interface |

归属规则：**interface 成员签名、extends、implements 归 interface；export interface / import interface 只做模块边界。**

## 8. Generic Mapping

| 交叉测试点 | module 负责 | 04_generic 负责 | 说明 |
|---|---|---|---|
| export generic function | ✅ 模块边界 | 泛型规则 | 导出归 module，泛型归 generic |
| export generic class | ✅ 模块边界 | 泛型规则 | 导出归 module，泛型归 generic |
| import generic | ✅ 模块边界 | 泛型规则 | 导入归 module，泛型归 generic |

归属规则：**generic 参数、约束、推断归 generic；export generic function/class/interface 只做模块边界。**

## 9. Null Safety Mapping

| 交叉测试点 | module 负责 | 05_null_safety 负责 | 说明 |
|---|---|---|---|
| 模块初始化 undefined | ✅ 模块场景 | null safety | 场景归 module，null safety 归 null_safety |
| 循环依赖 undefined | ✅ 模块场景 | null safety | 场景归 module，null safety 归 null_safety |

归属规则：**null/undefined 行为归 null_safety；模块初始化中的 undefined/null 只做模块场景边界。**

## 10. TypeScript Compatibility Mapping

| 交叉测试点 | module 负责 | typescript_compatibility 负责 | 说明 |
|---|---|---|---|
| type-only import/export | ✅ 边界 | 详细差异 | 边界归 module，详细归 TS compat |
| namespace import 兼容 | ✅ 边界 | 详细差异 | 边界归 module，详细归 TS compat |
| export * 兼容 | ✅ 边界 | 详细差异 | 边界归 module，详细归 TS compat |

归属规则：**TypeScript type-only import/export、namespace/module 兼容差异归 typescript_compatibility；module 本目录维护核心语言看护。**

## 11. Test Ownership Rule

| Module 能力类别 | 测试 ownership | 测试归属目录 | 关联目录可做 |
|---|---|---|---|
| import/export 语法 | module | `06_module` | declarations 集成 |
| 模块作用域/隔离 | module | `06_module` | declarations 集成 |
| re-export/export star | module | `06_module` | — |
| live binding | module | `06_module` | declarations 集成 |
| 循环依赖 | module | `06_module` | null_safety 集成 |
| type-only import/export | module（边界） | `06_module` | typescript_compatibility 详细 |
| dynamic import / TLA | module（边界） | `06_module` | — |
| 模块路径解析 | module（边界） | `06_module` | — |
| 声明绑定/作用域 | declarations | `00_the_basics/declarations` | — |
| 函数调用 | function | `01_function` | — |
| class 语义 | class | `02_class` | — |
| interface 语义 | interface | `03_interface` | — |
| 泛型规则 | generic | `04_generic` | — |
| null/undefined 行为 | null_safety | `05_null_safety` | — |

## 12. Duplication Avoidance Rule

1. **module 只做模块系统层面的测试**：import/export 语法、模块作用域、re-export、live binding、循环依赖、路径解析。不做声明绑定全量语义、函数调用全量语义、class 成员行为、interface 成员签名、泛型全量语义。

2. **关联章节做功能语义层面的测试**：declarations 做声明绑定，function 做函数语义，class 做 class 语义，interface 做接口语义，generic 做泛型，null_safety 做空值安全。

3. **export function/import function**：module 只测试导入导出绑定是否正确，函数调用行为归 function。

4. **export class/import class**：module 只测试导入导出绑定是否正确，class 成员/继承归 class。

5. **export interface/import interface**：module 只测试类型层导入导出边界，interface 成员签名归 interface。

6. **type-only import/export**：module 做边界索引，typescript_compatibility 做详细差异。

7. **coverage_matrix 中跨章节测试点**：明确标注建议路径指向哪个目录。

8. **test262 映射分工**：module test262 归 module；声明 test262 归 declarations；函数 test262 归 function；class test262 归 class。
