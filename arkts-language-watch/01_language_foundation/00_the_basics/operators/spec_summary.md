# Operator Spec Summary

## 1. Feature Scope

operators 章节看护鸿蒙动态 ArkTS 中表达式运算相关能力，包括算术、比较、相等、逻辑、位运算、一元、赋值、条件、逗号、可选链、空值合并、`typeof`、`instanceof`、`in`、`delete`、`new` 以及 `await` / `yield` 支持边界。

## 2. ECMAScript Operator Semantics

主要参考 ECMAScript 2022 中表达式求值、Reference、GetValue、PutValue、ToPrimitive、ToBoolean、ToNumber、ToNumeric、ToString、ToInt32、IsLooselyEqual、IsStrictlyEqual、RelationalComparison 等抽象操作。

## 3. Evaluation Order

运算符测试需要覆盖从左到右求值、短路求值、复合赋值中左侧引用只求值一次、条件运算符只求值被选中分支、逗号运算符按序求值并返回最后一个表达式。

## 4. Type Conversion In Operators

重点关注 `+` 的字符串拼接与数值加法分流，`==` 的抽象相等转换，关系比较的字符串/数值分支，位运算的 ToInt32/ToUint32，以及 `!`、`&&`、`||`、`??` 的 truthy/falsy 和 nullish 差异。

## 5. Arithmetic Operators

覆盖 number 运算、string + 拼接、boolean/null/undefined 参与算术的转换、NaN/Infinity 边界、number 与 bigint 混合算术 TypeError、bigint 同类型算术支持边界。

## 6. Equality Operators

覆盖 `==` / `!=` / `===` / `!==`，包括 null/undefined、number/string、boolean/number、object identity、NaN、+0/-0、number/bigint 抽象相等边界。

## 7. Relational Operators

覆盖 number、string、boolean、null、undefined、bigint 的 `< <= > >=`，包括 NaN 比较始终 false、字符串字典序、number/bigint 比较允许但算术不允许的边界。

## 8. Logical Operators

覆盖 `&&`、`||`、`!` 的短路与返回原值语义，不把逻辑运算符简化为 boolean-only 行为。

## 9. Bitwise Operators

覆盖 `& | ^ ~ << >> >>>` 的 ToInt32/ToUint32、符号位、移位计数取低 5 位、bigint 与 number 混合边界。

## 10. Assignment Operators

覆盖 `=`、复合赋值、可赋值引用、const/import binding 赋值边界、optional chaining 左侧非法赋值、求值顺序。

## 11. Unary Operators

覆盖 `typeof`、`void`、`delete`、一元 `+` / `-`、逻辑非、前后置 `++` / `--`。`typeof` 基础类型识别与 types 有交叉，operators 负责未声明变量、TDZ、求值边界等运算符语义。

## 12. Conditional Operator

覆盖 `condition ? a : b` 的分支选择、只求值被选中分支、嵌套条件表达式和与 statements 的 ownership 边界。

## 13. Optional Chaining

覆盖 `obj?.prop`、`obj?.[expr]`、`obj?.method()`、短路后不求值索引/参数、非法赋值左侧等边界。

## 14. Nullish Coalescing

覆盖 `??` 对 null/undefined 的处理，以及与 `||` 对 false、0、空字符串、NaN 的差异；记录 `??` 与 `&&` / `||` 混用语法边界。

## 15. instanceof / in / delete / typeof

`instanceof` 覆盖原型链与右侧 callable/hasInstance 边界；`in` 覆盖属性存在性和右操作数非对象 TypeError；`delete` 覆盖对象属性删除与声明绑定删除边界；`typeof` 覆盖未声明变量、TDZ、函数、对象等。

## 16. ArkTS Dynamic Notes

本章节面向鸿蒙动态 ArkTS，不按静态 ArkTS checker、泛型、静态 overload resolution 展开。对 TypeScript 语法兼容和 ArkTS 动态实现差异先以 boundary 记录。

## 17. TypeScript Compatibility Notes

需要关注 optional chaining、nullish coalescing、exponentiation、compound assignment、`as`/non-null assertion 等 TS/JS 语法在动态 ArkTS 中的支持状态。

## 18. Compile Negative Conditions

非法可选链赋值、`??` 与 `&&` / `||` 未加括号混用、非法 update target、非法 assignment target、`delete` 私有/不可删除目标、await/yield 在不支持上下文中的语法错误等。

## 19. Runtime Exception Conditions

number 与 bigint 混合算术、`in` 右侧非对象、`instanceof` 右侧非 callable、访问 null/undefined 后继续运算、可选链调用非函数等可能抛 TypeError。

## 20. Pending Questions

- 鸿蒙动态 ArkTS 对 bigint、symbol、optional chaining、nullish coalescing 的支持版本边界是什么？
- `delete` 对声明绑定、不可配置属性的行为与 ECMA 是否一致？
- `typeof` TDZ 行为是否稳定？
- `await` / `yield` 是否作为基础运算符边界进入 operators，还是后续 async/generator 章节主负责？
