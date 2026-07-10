# Type To Feature Mapping

## 1. Purpose

本文件明确类型体系与 Operators / Function / Class / Builtin API / TypeScript Compatibility 等语言特性章节之间的映射关系和测试归属规则。

核心原则：

**types 是 00_the_basics 的基础入口，不替代 operators/function/class/builtin API，而是为它们提供运行时类型与类型语法兼容的总控。**

基础运行时类型识别、typeof、instanceof 基础行为由 types 主负责；具体运算符行为由 operators 主负责；函数调用/参数/return/closure 由 01_function 主负责；class 成员/constructor/继承由 02_class 主负责。

## 2. Mapping Table

| 类型能力 | 本目录负责 | 关联目录负责 | 关联目录 | 说明 |
|---|---|---|---|---|
| primitive types 运行时行为 | ✅ types | — | — | number/string/boolean/bigint/symbol/null/undefined |
| typeof 基础行为 | ✅ types | 运算符实现 | operators | typeof 是运算符，但类型识别语义归 types |
| instanceof 基础行为 | ✅ types | 运算符实现、class 继承 | operators / 02_class | instanceof 是运算符，但原型链类型判断归 types |
| ToBoolean / ToNumber / ToString | ✅ types | 运算符应用 | operators | 抽象转换规则归 types，具体运算符行为归 operators |
| function object 类型识别 | ✅ types | 函数调用/参数/return/closure | 01_function | typeof function 归 types；函数行为归 function |
| class instance 类型识别 | ✅ types | class 成员/constructor/继承 | 02_class | instanceof class 归 types；class 语义归 class |
| array 类型识别 | ✅ types | Array 方法行为 | builtin_api_watch | typeof/array isArray 归 types；Array 方法归 builtin |
| TS 类型标注兼容边界 | ✅ types（边界索引） | 详细兼容差异 | typescript_compatibility | 边界在 types，详细映射在 typescript_compatibility |
| number + bigint TypeError | ✅ types | 运算符全量行为 | operators | TypeError 边界归 types，运算符全量归 operators |
| 运算符全量行为 | — | ✅ operators | operators | +、-、*、==、===、<、> 等 |
| 函数调用/参数/return/arguments | — | ✅ 01_function | 01_function | 函数运行语义 |
| class 成员/constructor/继承 | — | ✅ 02_class | 02_class | class 运行语义 |
| builtin API 方法行为 | — | ✅ builtin_api_watch | builtin_api_watch | Array/String/Number/BigInt 方法 |

## 3. Operators Mapping

typeof 和 instanceof 是运算符，但其语义是类型识别，归属如下：

| 交叉测试点 | types 负责 | operators 负责 | 说明 |
|---|---|---|---|
| typeof 返回值规则 | ✅ ownership | 运算符实现 | typeof 语义归 types |
| instanceof 原型链判断 | ✅ ownership | 运算符实现 | instanceof 语义归 types |
| + 运算符行为 | — | ✅ | 运算符全量行为归 operators |
| == / === 比较运算符 | — | ✅ | 比较行为归 operators |
| < > <= >= 关系运算符 | — | ✅ | 关系比较归 operators |
| number + bigint TypeError | ✅ ownership | 运算符实现 | TypeError 边界归 types |
| ToPrimitive 在运算符中的应用 | 转换规则归 types | 运算符应用归 operators | 抽象操作规则 vs 应用 |

归属规则：**typeof/instanceof 基础行为归 types；具体运算符行为归 operators。**

## 4. Function Mapping

| 交叉测试点 | types 负责 | 01_function 负责 | 说明 |
|---|---|---|---|
| function object typeof | ✅ ownership | — | 类型识别归 types |
| function instanceof Function | ✅ ownership | — | 类型识别归 types |
| class typeof 返回 "function" | ✅ ownership | — | 类型识别归 types |
| 函数调用（call/apply/bind） | — | ✅ | 运行语义归 function |
| 函数参数（缺省、rest） | — | ✅ | 运行语义归 function |
| return 行为 | — | ✅ | 运行语义归 function |
| arguments 对象 | — | ✅ | 运行语义归 function |
| this 绑定 | — | ✅ | 运行语义归 function |
| 闭包捕获 | — | ✅ | 运行语义归 function |
| 调用非函数值 TypeError | ✅ ownership | 集成用例 | 类型相关异常归 types |

归属规则：**函数作为对象的基础类型识别可归 types，但函数调用、参数、return、closure 归 function。**

## 5. Class Mapping

| 交叉测试点 | types 负责 | 02_class 负责 | 说明 |
|---|---|---|---|
| class instance instanceof | ✅ ownership | 集成用例 | 类型识别归 types |
| class typeof 返回 "function" | ✅ ownership | — | 类型识别归 types |
| class 成员语义（方法、属性） | — | ✅ | 运行语义归 class |
| constructor 行为 | — | ✅ | 运行语义归 class |
| 继承、super 调用 | — | ✅ | 运行语义归 class |
| 原型链判断 | ✅ ownership | 集成用例 | instanceof 原型链归 types |

归属规则：**class instance 的 instanceof 基础判断可归 types，class 成员、constructor、继承归 class。**

## 6. Builtin API Mapping

| 交叉测试点 | types 负责 | builtin_api_watch 负责 | 说明 |
|---|---|---|---|
| Array.isArray 判断 | ✅ ownership | — | 类型识别归 types |
| typeof array 返回 "object" | ✅ ownership | — | 类型识别归 types |
| Array 方法行为（push/pop/map 等） | — | ✅ | 方法行为归 builtin |
| String 方法行为 | — | ✅ | 方法行为归 builtin |
| Number 方法行为 | — | ✅ | 方法行为归 builtin |
| BigInt 方法行为 | — | ✅ | 方法行为归 builtin |
| Symbol 静态方法 | — | ✅ | 方法行为归 builtin |

归属规则：**Array / String / Number / BigInt 等 builtin API 的方法行为归 builtin_api_watch。**

## 7. TypeScript Compatibility Mapping

| 交叉测试点 | types 负责 | typescript_compatibility 负责 | 说明 |
|---|---|---|---|
| 类型标注运行时是否擦除 | ✅ boundary | 详细差异 | 边界索引归 types |
| union type 语法是否允许 | ✅ boundary | 详细差异 | 边界索引归 types |
| literal type 语法是否允许 | ✅ boundary | 详细差异 | 边界索引归 types |
| type alias 语法是否允许 | ✅ boundary | 详细差异 | 边界索引归 types |
| any / unknown 是否允许 | ✅ boundary | 详细差异 | 边界索引归 types |
| 类型断言 x as T | ✅ boundary | 详细差异 | 边界索引归 types |
| interface 声明运行时行为 | ✅ boundary | 详细差异 | 边界索引归 types |
| 泛型标注运行时行为 | ✅ boundary | 详细差异 | 边界索引归 types |
| 详细 TS 兼容差异全量 | — | ✅ | 详细映射归 typescript_compatibility |

归属规则：**TS 类型标注、union、literal、type alias 在动态 ArkTS 中的支持状态可在 types 做边界索引，详细兼容差异可映射到 typescript_compatibility。**

## 8. Runtime Mapping

| 运行时能力 | types 负责 | 相关 | 说明 |
|---|---|---|---|
| TypeError（number + bigint） | ✅ | fail_runtime 用例 | 类型相关运行时异常 |
| TypeError（instanceof 非函数） | ✅ | fail_runtime 用例 | 类型相关运行时异常 |
| TypeError（new Symbol()） | ✅ | fail_runtime 用例 | 类型相关运行时异常 |
| TypeError（访问 null 属性） | ✅ | fail_runtime 用例 | 类型相关运行时异常 |
| TypeError（调用非函数值） | ✅ | fail_runtime 用例 | 类型相关运行时异常 |
| ReferenceError（typeof TDZ） | ✅ | fail_runtime 用例 | 类型相关运行时异常 |

## 9. Test Ownership Rule

| 类型能力类别 | 测试 ownership | 测试归属目录 | 关联目录可做 |
|---|---|---|---|
| primitive types 基础行为 | types | `00_the_basics/types` | — |
| typeof / instanceof 基础行为 | types | `00_the_basics/types` | operators 集成 |
| ToBoolean / ToNumber / ToString | types | `00_the_basics/types` | operators 集成 |
| function object 类型识别 | types | `00_the_basics/types` | function 集成 |
| class instance 类型识别 | types | `00_the_basics/types` | class 集成 |
| array 类型识别 | types | `00_the_basics/types` | builtin 集成 |
| TS 类型语法兼容边界 | types（边界索引） | `00_the_basics/types` | typescript_compatibility（详细） |
| number + bigint TypeError | types | `00_the_basics/types` | operators 集成 |
| 运算符全量行为 | operators | `00_the_basics/operators` | — |
| 函数调用/参数/return/arguments | 01_function | `01_function` | — |
| class 成员/继承/constructor | 02_class | `02_class` | — |
| builtin API 方法行为 | builtin_api_watch | builtin API 目录 | — |

## 10. Duplication Avoidance Rule

为避免 types 和其他章节之间测试用例重复，遵循以下规则：

1. **types 只做类型识别和类型转换层面的测试**：typeof、instanceof、ToBoolean/ToNumber/ToString、primitive types 基础行为。不做运算符全量行为、函数调用行为、class 成员行为、builtin API 方法行为测试。

2. **关联章节做功能语义层面的测试**：operators 做运算符行为，01_function 做函数语义，02_class 做 class 语义，builtin_api_watch 做 API 方法。

3. **交叉场景由 types 生成 ownership 用例**，关联章节可做集成用例但标注 "TYPE-交叉参照"。

4. **typeof function 同时出现在 types 和 01_function 的 test_design 中**，但 XTS 用例只在 types 下生成（ownership 归 types）。01_function 只做引用说明。

5. **instanceof class 同时出现在 types 和 02_class 的 test_design 中**，但 XTS 用例只在 types 下生成（ownership 归 types）。02_class 只做引用说明。

6. **number + bigint TypeError 边界**：TypeError 行为归 types（fail_runtime），运算符全量行为归 operators。

7. **coverage_matrix 中跨章节测试点**：明确标注建议路径指向哪个目录，避免两个目录同时生成同名用例。

8. **test262 映射分工**：基础类型 test262 归 types；运算符 test262 归 operators；函数 test262 归 01_function；builtin API test262 归 builtin_api_watch。
