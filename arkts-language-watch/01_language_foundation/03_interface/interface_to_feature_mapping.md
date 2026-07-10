# Interface To Feature Mapping

## 1. Purpose

本文件明确 interface 体系与 Declarations / Types / Function / Class / Generic / Module / TypeScript Compatibility 等语言特性章节之间的映射关系和测试归属规则。

核心原则：

**interface 是 TypeScript/ArkTS 类型语法能力，不是 ECMAScript 原生运行时对象。03_interface 不替代 class/generic/module/TS compatibility，而是负责接口语法与动态 ArkTS 支持边界总控。**

interface 声明语法、成员签名、extends、implements 兼容边界由 interface 主负责；声明绑定由 declarations 主负责；class 语义由 class 主负责；泛型参数由 generic 主负责。

## 2. Mapping Table

| Interface 能力 | 本目录负责 | 关联目录负责 | 关联目录 | 说明 |
|---|---|---|---|---|
| interface 声明语法 | ✅ interface | — | — | interface 关键字和声明结构 |
| 属性签名（必选/可选/readonly） | ✅ interface | 类型语义 | types | 签名语法归 interface，类型语义归 types |
| 方法签名 | ✅ interface | 函数语义 | function | 签名归 interface，函数调用归 function |
| interface extends | ✅ interface | — | — | 继承语法和合并规则归 interface |
| class implements | ✅ interface | class 成员语义 | class | 接口校验归 interface，class 实现归 class |
| 结构兼容（structural typing） | ✅ interface | 类型识别 | types | 结构匹配归 interface，类型识别归 types |
| index/call/construct signature | ✅ interface（边界） | 详细兼容 | typescript_compatibility | 边界归 interface，详细归 TS compat |
| interface merging | ✅ interface（边界） | 声明重复规则 | declarations | 合并归 interface，重复声明规则归 declarations |
| runtime erasure | ✅ interface（边界） | 运行时类型 | types | 擦除边界归 interface，类型识别归 types |
| generic interface | ✅ interface（边界） | 泛型参数 | generic | 边界归 interface，泛型规则归 generic |
| interface export/import | ✅ interface（边界） | 模块解析 | module | 边界归 interface，解析归 module |
| TS 兼容差异 | ✅ interface（边界） | 详细差异 | typescript_compatibility | 边界归 interface，详细归 TS compat |

## 3. Declarations Mapping

| 交叉测试点 | interface 负责 | declarations 负责 | 说明 |
|---|---|---|---|
| interface 声明位置 | ✅ 语法边界 | 声明绑定规则 | interface 声明语法归 interface，绑定规则归 declarations |
| interface merging | ✅ 合并行为 | 重复声明规则 | 合并归 interface，重复声明基础规则归 declarations |
| interface 作用域 | ✅ 边界 | 作用域规则 | interface 作用域归 declarations 基础规则 |

归属规则：**声明绑定、重复声明、作用域基础规则归 declarations；interface 只记录接口声明自身边界。**

## 4. Types Mapping

| 交叉测试点 | interface 负责 | types 负责 | 说明 |
|---|---|---|---|
| interface 属性类型 | ✅ 签名语法 | 类型语义 | 签名归 interface，类型识别归 types |
| runtime erasure | ✅ 擦除边界 | 运行时类型 | 擦除归 interface，类型识别归 types |
| typeof interface | ✅ 边界 | typeof 行为 | 边界归 interface，typeof 运算归 types/operators |
| instanceof interface | ✅ 边界 | instanceof 行为 | 边界归 interface，instanceof 运算归 types/operators |

归属规则：**基础运行时类型识别归 types；interface runtime erasure / typeof / instanceof 边界可由 interface 做索引。**

## 5. Function Mapping

| 交叉测试点 | interface 负责 | 01_function 负责 | 说明 |
|---|---|---|---|
| interface 方法签名 | ✅ 签名语法 | 函数调用语义 | 签名归 interface，调用归 function |
| call signature | ✅ 边界 | 可调用对象行为 | 边界归 interface，调用行为归 function |
| 可选方法 | ✅ 签名语法 | 方法调用 | 签名归 interface，调用归 function |

归属规则：**函数调用、参数、return、closure 归 function；interface method/call signature 只验证接口签名兼容边界。**

## 6. Class Mapping

| 交叉测试点 | interface 负责 | 02_class 负责 | 说明 |
|---|---|---|---|
| class implements | ✅ 接口校验边界 | class 成员实现 | 接口校验归 interface，class 实现归 class |
| construct signature | ✅ 边界 | 构造器语义 | 边界归 interface，构造器归 class |
| interface 与 class 类型区别 | ✅ 边界 | class 类型语义 | 区别归 interface，class 语义归 class |

归属规则：**class constructor、成员、继承归 class；class implements interface 的接口校验边界归 interface/class 交叉。**

## 7. Generic Mapping

| 交叉测试点 | interface 负责 | 04_generic 负责 | 说明 |
|---|---|---|---|
| generic interface 声明 | ✅ 边界 | 泛型参数规则 | 边界归 interface，泛型归 generic |
| generic interface 约束 | ✅ 边界 | 约束规则 | 边界归 interface，约束归 generic |
| generic interface 默认类型 | ✅ 边界 | 默认类型规则 | 边界归 interface，默认类型归 generic |

归属规则：**泛型参数、泛型约束、默认类型参数归 generic；generic interface 只在 interface 做边界索引。**

## 8. Module Mapping

| 交叉测试点 | interface 负责 | 06_module 负责 | 说明 |
|---|---|---|---|
| interface export | ✅ 边界 | 模块导出行为 | 边界归 interface，导出归 module |
| interface import | ✅ 边界 | 模块导入行为 | 边界归 interface，导入归 module |
| interface re-export | ✅ 边界 | re-export 行为 | 边界归 interface，re-export 归 module |

归属规则：**import/export 模块解析和绑定归 module；interface export/import 只做接口边界索引。**

## 9. TypeScript Compatibility Mapping

| 交叉测试点 | interface 负责 | typescript_compatibility 负责 | 说明 |
|---|---|---|---|
| index signature | ✅ 边界索引 | 详细兼容差异 | 边界归 interface，详细归 TS compat |
| call/construct signature | ✅ 边界索引 | 详细兼容差异 | 边界归 interface，详细归 TS compat |
| interface merging | ✅ 边界索引 | 详细兼容差异 | 边界归 interface，详细归 TS compat |
| interface 与 type alias 区别 | ✅ 边界索引 | 详细差异 | 边界归 interface，详细归 TS compat |
| interface 声明合并 TS 特性 | ✅ 边界索引 | 详细差异 | 边界归 interface，详细归 TS compat |

归属规则：**TypeScript interface 完整兼容差异可映射到 typescript_compatibility；interface 本目录维护核心语言看护。**

## 10. Test Ownership Rule

| Interface 能力类别 | 测试 ownership | 测试归属目录 | 关联目录可做 |
|---|---|---|---|
| interface 声明语法 | interface | `03_interface` | declarations 集成 |
| 属性/方法签名 | interface | `03_interface` | types/function 集成 |
| interface extends | interface | `03_interface` | — |
| class implements | interface | `03_interface` | class 集成 |
| 结构兼容 | interface | `03_interface` | types 集成 |
| index/call/construct signature | interface（边界） | `03_interface` | typescript_compatibility 详细 |
| interface merging | interface（边界） | `03_interface` | declarations 集成 |
| runtime erasure | interface（边界） | `03_interface` | types 集成 |
| generic interface | interface（边界） | `03_interface` | generic 详细 |
| interface export/import | interface（边界） | `03_interface` | module 详细 |
| 声明绑定/作用域 | declarations | `00_the_basics/declarations` | — |
| 类型识别 | types | `00_the_basics/types` | — |
| 函数调用 | function | `01_function` | — |
| class 成员/继承 | class | `02_class` | — |
| 泛型参数 | generic | `04_generic` | — |
| 模块解析 | module | `06_module` | — |

## 11. Duplication Avoidance Rule

为避免 interface 和其他章节之间测试用例重复，遵循以下规则：

1. **interface 只做接口语法和支持边界层面的测试**：声明语法、成员签名、extends、implements、结构兼容、运行时擦除。不做声明绑定、函数调用、class 成员行为、模块解析测试。

2. **关联章节做功能语义层面的测试**：declarations 做声明绑定，function 做函数语义，class 做 class 语义，generic 做泛型，module 做模块解析。

3. **交叉场景由 interface 生成 ownership 用例**，关联章节可做集成用例但标注 "IF-交叉参照"。

4. **class implements interface** 的接口校验归 interface（fail_compile），class 的成员实现行为归 class。

5. **interface 方法签名**归 interface，方法的函数调用行为归 function。两个目录可同时出现，但 interface 只测试签名兼容，function 测试调用语义。

6. **interface export/import** 的语法边界归 interface，模块解析和绑定归 module。

7. **coverage_matrix 中跨章节测试点**：明确标注建议路径指向哪个目录，避免两个目录同时生成同名用例。

8. **test262 映射分工**：interface 不直接来自 ECMA，以 TypeScript/ArkTS 兼容说明为主；基础类型 test262 归 types；函数 test262 归 function；class test262 归 class。
