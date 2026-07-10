# Null Safety To Feature Mapping

## 1. Purpose

本文件明确空值安全体系与 Types / Operators / Function / Class / Interface / Generic / TypeScript Compatibility 等语言特性章节之间的映射关系和测试归属规则。

核心原则：

**05_null_safety 不替代 types/operators/function/class/interface/generic，而是从空值安全视角统一收敛 null/undefined 相关行为与风险。**

null/undefined 基础值、空值安全行为、运行时异常和 TS/ArkTS null safety 边界由 null_safety 主负责；基础类型识别由 types 主负责；运算符语义由 operators 主负责；函数调用由 function 主负责。

## 2. Mapping Table

| Null Safety 能力 | 本目录负责 | 关联目录负责 | 关联目录 | 说明 |
|---|---|---|---|---|
| null/undefined 基础行为 | ✅ null_safety | 类型语义 | types | 基础值归 null_safety，类型识别归 types |
| null/undefined 相等性 | ✅ null_safety | 运算符语义 | operators | 空值安全角度归 null_safety，运算符归 operators |
| 可选链 `?.` | ✅ null_safety | 运算符基础语义 | operators | 空值安全场景归 null_safety，运算符归 operators |
| 空值合并 `??` | ✅ null_safety | 运算符基础语义 | operators | 空值安全场景归 null_safety，运算符归 operators |
| 空值赋值 `??=` | ✅ null_safety | 运算符基础语义 | operators | 空值安全场景归 null_safety，运算符归 operators |
| 非空断言 `!` | ✅ null_safety（边界） | TS 兼容差异 | typescript_compatibility | 边界归 null_safety，详细归 TS compat |
| 可选属性 | ✅ null_safety | interface 成员语义 | interface | 空值安全归 null_safety，成员语义归 interface |
| 可选参数/默认参数 | ✅ null_safety | 函数调用语义 | function | 空值安全归 null_safety，调用归 function |
| null/undefined 运行时异常 | ✅ null_safety | 类型识别 | types | 异常归 null_safety，类型归 types |
| class field null | ✅ null_safety | class 成员语义 | class | 空值安全归 null_safety，class 语义归 class |
| NonNullable<T> | ✅ null_safety（边界） | 泛型规则 | generic | 边界归 null_safety，泛型归 generic |
| strict null checks | ✅ null_safety（边界） | 详细差异 | typescript_compatibility | 边界归 null_safety，详细归 TS compat |

## 3. Types Mapping

| 交叉测试点 | null_safety 负责 | types 负责 | 说明 |
|---|---|---|---|
| typeof null/undefined | ✅ 空值安全角度 | 类型识别 | null_safety 从空值安全角度覆盖，types 做基础类型识别 |
| null/undefined 转换 | ✅ 空值安全角度 | 转换规则 | null_safety 覆盖 ToBoolean/ToNumber/ToString 中的 nullish 行为 |
| 运行时异常 | ✅ null/undefined 属性访问 | 类型识别 | 异常归 null_safety，类型归 types |

归属规则：**基础运行时类型识别归 types；null_safety 只从空值安全角度覆盖 typeof/nullish 行为。**

## 4. Operators Mapping

| 交叉测试点 | null_safety 负责 | operators 负责 | 说明 |
|---|---|---|---|
| 可选链 `?.` | ✅ 空值安全场景 | 运算符基础语义 | null_safety 负责空值安全场景组合 |
| 空值合并 `??` | ✅ 空值安全场景 | 运算符基础语义 | null_safety 负责 ?? vs || 差异 |
| 空值赋值 `??=` | ✅ 空值安全场景 | 运算符基础语义 | null_safety 负责空值赋值场景 |
| null/undefined 相等性 | ✅ 空值安全角度 | 运算符语义 | null_safety 从空值安全角度覆盖 |

归属规则：**表达式运算、短路和可选链/空值合并运算符基础语义归 operators；null_safety 负责空值安全场景组合。**

## 5. Function Mapping

| 交叉测试点 | null_safety 负责 | 01_function 负责 | 说明 |
|---|---|---|---|
| 可选参数 | ✅ null/undefined 边界 | 参数语义 | null_safety 负责空值安全边界 |
| 默认参数 | ✅ null/undefined 边界 | 默认值语义 | null_safety 负责 null vs undefined 触发差异 |
| 函数返回 null/undefined | ✅ 空值安全角度 | return 语义 | null_safety 负责返回值空值边界 |

归属规则：**函数调用、参数、return 运行语义归 function；null_safety 负责 null/undefined 作为参数/返回值的边界组合。**

## 6. Class Mapping

| 交叉测试点 | null_safety 负责 | 02_class 负责 | 说明 |
|---|---|---|---|
| class field null | ✅ 空值安全边界 | field 语义 | null_safety 负责字段空值初始化 |
| class field 未初始化 | ✅ undefined 边界 | field 语义 | null_safety 负责未初始化 undefined |

归属规则：**class field、constructor、method 语义归 class；null_safety 负责 class 字段空值初始化边界。**

## 7. Interface Mapping

| 交叉测试点 | null_safety 负责 | 03_interface 负责 | 说明 |
|---|---|---|---|
| 可选属性 | ✅ null/undefined 边界 | 成员语义 | null_safety 负责 optional member 与 undefined/null 组合 |
| 可选方法 | ✅ null/undefined 边界 | 方法语义 | null_safety 负责可选方法空值边界 |

归属规则：**interface optional property 语义归 interface；null_safety 负责 optional member 与 undefined/null 的组合边界。**

## 8. Generic Mapping

| 交叉测试点 | null_safety 负责 | 04_generic 负责 | 说明 |
|---|---|---|---|
| NonNullable<T> | ✅ 边界 | 泛型规则 | null_safety 负责空值安全边界，generic 负责泛型规则 |
| T | null union | ✅ 边界 | union 规则 | null_safety 负责空值安全边界 |
| T extends object | ✅ 边界 | 约束规则 | null_safety 负责排除 null/undefined 边界 |

归属规则：**generic 参数、约束归 generic；NonNullable、T | null、T | undefined 等空值泛型边界由 null_safety/generic 交叉记录。**

## 9. TypeScript Compatibility Mapping

| 交叉测试点 | null_safety 负责 | typescript_compatibility 负责 | 说明 |
|---|---|---|---|
| strict null checks | ✅ 边界 | 详细差异 | null_safety 做边界，TS compat 做详细 |
| 非空断言 `!` | ✅ 边界 | 详细差异 | null_safety 做边界，TS compat 做详细 |
| NonNullable<T> | ✅ 边界 | 详细差异 | null_safety 做边界，TS compat 做详细 |
| 可选属性编译期检查 | ✅ 边界 | 详细差异 | null_safety 做边界，TS compat 做详细 |

归属规则：**TypeScript strict null checks 完整差异归 typescript_compatibility；null_safety 本目录维护核心语言看护。**

## 10. Test Ownership Rule

| Null Safety 能力类别 | 测试 ownership | 测试归属目录 | 关联目录可做 |
|---|---|---|---|
| null/undefined 基础行为 | null_safety | `05_null_safety` | types 集成 |
| 可选链/空值合并 | null_safety | `05_null_safety` | operators 集成 |
| null/undefined 运行时异常 | null_safety | `05_null_safety` | types 集成 |
| 可选属性/参数 | null_safety | `05_null_safety` | interface/function 集成 |
| class field null | null_safety | `05_null_safety` | class 集成 |
| NonNullable/strict null | null_safety（边界） | `05_null_safety` | generic/TS compat 详细 |
| 运算符全量行为 | operators | `00_the_basics/operators` | — |
| 函数调用/参数/return | function | `01_function` | — |
| class 成员/继承 | class | `02_class` | — |
| interface 成员 | interface | `03_interface` | — |
| 泛型参数/约束 | generic | `04_generic` | — |

## 11. Duplication Avoidance Rule

1. **null_safety 从空值安全视角统一收敛 null/undefined 相关行为**：基础值、相等性、可选链、空值合并、运行时异常、可选属性/参数、class field null、NonNullable。不做运算符全量行为、函数调用全量语义、class 成员全量语义。

2. **关联章节做功能语义层面的测试**：operators 做运算符行为，function 做函数语义，class 做 class 语义，interface 做接口语义。

3. **可选链/空值合并**：operators 已有基础运算符用例，null_safety 从空值安全角度做体系化组合。

4. **null/undefined 运行时异常**：归 null_safety（fail_runtime），不归 types/operators。

5. **可选属性/参数**：interface/function 已有基础用例，null_safety 负责 null/undefined 组合边界。

6. **NonNullable/strict null**：归 null_safety 做边界索引，generic 做 NonNullable 泛型规则，TS compat 做详细差异。

7. **coverage_matrix 中跨章节测试点**：明确标注建议路径指向哪个目录。

8. **test262 映射分工**：null/undefined 运行时行为 test262 归 null_safety；运算符 test262 归 operators；函数 test262 归 function。
