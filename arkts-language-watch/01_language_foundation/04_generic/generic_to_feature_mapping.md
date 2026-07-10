# Generic To Feature Mapping

## 1. Purpose

本文件明确泛型体系与 Types / Function / Class / Interface / Module / TypeScript Compatibility 等语言特性章节之间的映射关系和测试归属规则。

核心原则：

**generic 是 TypeScript/ArkTS 类型语法能力，不是 ECMAScript 原生运行时对象。04_generic 不替代 function/class/interface/module/TS compatibility，而是负责泛型语法与动态 ArkTS 支持边界总控。**

泛型函数/类/接口/方法的泛型语法、类型参数、约束、默认参数、推断边界由 generic 主负责；函数调用由 function 主负责；class 语义由 class 主负责；interface 语义由 interface 主负责。

## 2. Mapping Table

| Generic 能力 | 本目录负责 | 关联目录负责 | 关联目录 | 说明 |
|---|---|---|---|---|
| 泛型函数语法 | ✅ generic | 函数调用语义 | function | 语法归 generic，调用归 function |
| 泛型类语法 | ✅ generic | class 成员/继承 | class | 语法归 generic，class 语义归 class |
| 泛型接口语法 | ✅ generic | interface 成员/extends | interface | 语法归 generic，interface 语义归 interface |
| 泛型方法语法 | ✅ generic | 方法调用语义 | function / class | 语法归 generic，调用归 function |
| 类型参数声明 | ✅ generic | 声明绑定规则 | declarations | 参数声明归 generic，绑定规则归 declarations |
| 泛型约束 | ✅ generic | 类型语义 | types | 约束语法归 generic，类型语义归 types |
| 默认类型参数 | ✅ generic（边界） | 详细兼容 | typescript_compatibility | 边界归 generic，详细归 TS compat |
| 类型实参推断 | ✅ generic | 函数参数语义 | function | 推断归 generic，参数归 function |
| 嵌套泛型 | ✅ generic | 内置类型行为 | types | 语法归 generic，类型行为归 types |
| 泛型运行时擦除 | ✅ generic（边界） | 运行时类型 | types | 擦除边界归 generic，类型识别归 types |
| 泛型 export/import | ✅ generic（边界） | 模块解析 | module | 边界归 generic，解析归 module |
| TS generic 兼容差异 | ✅ generic（边界） | 详细差异 | typescript_compatibility | 边界归 generic，详细归 TS compat |

## 3. Types Mapping

| 交叉测试点 | generic 负责 | types 负责 | 说明 |
|---|---|---|---|
| 泛型参数类型 | ✅ 参数语法 | 类型语义 | 参数声明归 generic，类型识别归 types |
| runtime erasure | ✅ 擦除边界 | 运行时类型 | 擦除归 generic，类型识别归 types |
| typeof 泛型参数 | ✅ 边界 | typeof 行为 | 边界归 generic，typeof 归 types/operators |
| instanceof 泛型参数 | ✅ 边界 | instanceof 行为 | 边界归 generic，instanceof 归 types/operators |
| `Array<T>` 运行时 | ✅ 泛型边界 | Array 行为 | 泛型归 generic，Array 方法归 builtin |

归属规则：**基础运行时类型识别归 types；generic runtime erasure / typeof / instanceof 边界可由 generic 做索引。**

## 4. Function Mapping

| 交叉测试点 | generic 负责 | 01_function 负责 | 说明 |
|---|---|---|---|
| 泛型函数语法 | ✅ 语法边界 | 函数调用语义 | 语法归 generic，调用归 function |
| 泛型方法语法 | ✅ 语法边界 | 方法调用语义 | 语法归 generic，调用归 function |
| 类型实参推断 | ✅ 推断边界 | 参数传递 | 推断归 generic，参数归 function |
| 泛型函数 return 类型 | ✅ 返回类型边界 | return 语义 | 类型归 generic，return 归 function |

归属规则：**函数调用、参数传递、return、closure 运行语义归 function；generic 只看泛型参数和类型实参边界。**

## 5. Class Mapping

| 交叉测试点 | generic 负责 | 02_class 负责 | 说明 |
|---|---|---|---|
| 泛型类语法 | ✅ 语法边界 | class 成员/继承 | 语法归 generic，class 语义归 class |
| 泛型类实例化 | ✅ 实例化边界 | constructor 语义 | 实例化归 generic，constructor 归 class |
| 泛型类静态成员 | ✅ 边界 | static 成员语义 | 边界归 generic，static 归 class |

归属规则：**class constructor、成员、继承归 class；generic class 只做泛型类边界。**

## 6. Interface Mapping

| 交叉测试点 | generic 负责 | 03_interface 负责 | 说明 |
|---|---|---|---|
| 泛型接口语法 | ✅ 语法边界 | interface 成员/extends | 语法归 generic，interface 语义归 interface |
| 泛型接口 implements | ✅ 边界 | implements 契约 | 边界归 generic，契约归 interface |

归属规则：**interface 成员签名、extends、implements 归 interface；generic interface 只做泛型接口边界。**

## 7. Module Mapping

| 交叉测试点 | generic 负责 | 06_module 负责 | 说明 |
|---|---|---|---|
| 泛型函数导出 | ✅ 边界 | 模块导出行为 | 边界归 generic，导出归 module |
| 泛型类导出 | ✅ 边界 | 模块导出行为 | 边界归 generic，导出归 module |
| 泛型接口导出 | ✅ 边界 | 模块导出行为 | 边界归 generic，导出归 module |
| 泛型导入 | ✅ 边界 | 模块导入行为 | 边界归 generic，导入归 module |

归属规则：**import/export 模块解析和绑定归 module；generic export/import 只做泛型边界索引。**

## 8. TypeScript Compatibility Mapping

| 交叉测试点 | generic 负责 | typescript_compatibility 负责 | 说明 |
|---|---|---|---|
| 默认类型参数 | ✅ 边界索引 | 详细兼容差异 | 边界归 generic，详细归 TS compat |
| 泛型与 union type | ✅ 边界索引 | 详细兼容差异 | 边界归 generic，详细归 TS compat |
| 泛型与 conditional type | ✅ 边界索引 | 详细兼容差异 | 边界归 generic，详细归 TS compat |
| 泛型与 type alias | ✅ 边界索引 | 详细差异 | 边界归 generic，详细归 TS compat |
| 泛型高級类型特性 | ✅ 边界索引 | 详细差异 | 边界归 generic，详细归 TS compat |

归属规则：**TypeScript generic 完整兼容差异可映射到 typescript_compatibility；generic 本目录维护核心语言看护。**

## 9. Test Ownership Rule

| Generic 能力类别 | 测试 ownership | 测试归属目录 | 关联目录可做 |
|---|---|---|---|
| 泛型函数/类/接口/方法语法 | generic | `04_generic` | function/class/interface 集成 |
| 类型参数/约束/默认参数 | generic | `04_generic` | types/declarations 集成 |
| 类型实参推断 | generic | `04_generic` | function 集成 |
| 嵌套泛型/数组泛型 | generic | `04_generic` | types 集成 |
| 泛型运行时擦除 | generic（边界） | `04_generic` | types 集成 |
| 泛型 export/import | generic（边界） | `04_generic` | module 集成 |
| TS generic 兼容差异 | generic（边界） | `04_generic` | typescript_compatibility 详细 |
| 函数调用/参数/return | function | `01_function` | — |
| class 成员/继承 | class | `02_class` | — |
| interface 成员/extends | interface | `03_interface` | — |
| 模块解析 | module | `06_module` | — |

## 10. Duplication Avoidance Rule

为避免 generic 和其他章节之间测试用例重复，遵循以下规则：

1. **generic 只做泛型语法和支持边界层面的测试**：泛型函数/类/接口/方法语法、类型参数、约束、默认参数、推断、嵌套泛型、运行时擦除。不做函数调用、class 成员行为、interface 成员签名、模块解析测试。

2. **关联章节做功能语义层面的测试**：function 做函数语义，class 做 class 语义，interface 做 interface 语义，types 做类型识别，module 做模块解析。

3. **交叉场景由 generic 生成 ownership 用例**，关联章节可做集成用例但标注 "GEN-交叉参照"。

4. **泛型函数**归 generic（语法+推断），函数调用行为归 function。

5. **泛型类**归 generic（语法+实例化），class 成员/继承归 class。

6. **泛型接口**归 generic（语法），interface 成员/extends/implements 归 interface。

7. **coverage_matrix 中跨章节测试点**：明确标注建议路径指向哪个目录，避免两个目录同时生成同名用例。

8. **test262 映射分工**：generic 不直接来自 ECMA，以 TypeScript/ArkTS 兼容说明为主；函数 test262 归 function；class test262 归 class；类型 test262 归 types。
