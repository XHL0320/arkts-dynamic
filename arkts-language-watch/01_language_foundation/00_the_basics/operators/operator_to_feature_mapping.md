# Operator To Feature Mapping

## 1. Purpose

operators 是 `00_the_basics` 的基础入口，负责表达式层面的运算规则、求值顺序、短路行为和运算异常总控；它不替代 types / declarations / function / class / statements / builtin API。

## 2. Mapping Table

| 运算符能力 | 本目录负责 | 关联目录负责 | 关联目录 | 说明 |
|---|---|---|---|---|
| arithmetic | 运算语义、转换、异常 | 基础值类型 | `types` | number/bigint 类型识别归 types |
| equality | `==` / `===` 语义 | null/undefined 基础值 | `types` | types 可保留基础入口 |
| optional chaining | 短路与表达式求值 | 函数调用语义 | `01_function` | `obj?.method()` 的调用细节归 function 联动 |
| instanceof | 表达式判断语义 | class 构造和继承 | `02_class` | class 只做集成 |
| assignment | PutValue、复合赋值 | 声明绑定只读/TDZ | `declarations` | const/import 只读归 declarations |
| conditional | 条件表达式 | if/switch 语句 | `statements` | statements 负责控制流语句 |
| Array/String/Number methods | 不负责 | builtin 方法行为 | `04_builtin_api_watch` | operators 不展开方法全集 |
| TS operator syntax | 边界索引 | 兼容差异详表 | `02_typescript_compatibility` | 后续展开 |

## 3. Types Mapping

基础运行时类型识别归 types，例如 typeof 基础返回值可在 types 有基础用例；operators 负责 typeof 作为运算符的语义和边界，如未声明变量、TDZ、求值顺序。

## 4. Declarations Mapping

声明绑定、TDZ、重复声明归 declarations，不归 operators。operators 只在 assignment / delete / typeof 等表达式中记录与 binding 的交叉边界。

## 5. Function Mapping

函数调用、参数、return、closure 归 function。operators 负责可选链调用的短路规则、参数是否被求值、非函数可选链调用异常边界。

## 6. Class Mapping

class 构造、继承、成员归 class。instanceof 基础判断归 operators/types 交叉，class 只做集成或复杂原型链确认。

## 7. Statements Mapping

if/for/while/switch 等语句归 statements；条件表达式 `?:`、逗号表达式和短路表达式归 operators。

## 8. Builtin API Mapping

Array/String/Number/BigInt 等方法行为归 builtin API，不归 operators。operators 只看表达式运算触发的抽象转换。

## 9. TypeScript Compatibility Mapping

TypeScript 运算符相关语法兼容边界可在 operators 做索引，详细差异后续归 TS compatibility。

## 10. Test Ownership Rule

1. 运算符运行语义、求值顺序、短路求值、运算异常归 operators。
2. 基础运行时类型识别归 types。
3. 声明绑定、TDZ、重复声明归 declarations。
4. 函数调用、参数、return、closure 归 function。
5. class 构造、继承、成员归 class。
6. if/for/while/switch 等语句归 statements；条件表达式 `?:` 归 operators。
7. Array/String/Number/BigInt 等方法行为归 builtin API。
8. TypeScript 运算符兼容边界先索引，后续归 TS compatibility 细化。

## 11. Duplication Avoidance Rule

同一行为只保留一个主归属。types 保留基础识别，operators 保留表达式语义；function/class/statements/builtin API 保留各自结构化能力。交叉用例必须在备注中说明主归属和关联章节。
