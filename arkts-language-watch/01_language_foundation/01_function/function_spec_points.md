# Function Spec Points

## 1. ECMAScript 2022 函数规范点摘要

- **Function Declaration**：关注声明提升、函数名绑定、重复声明、递归调用和块级函数声明边界。
- **Function Expression**：关注表达式求值时机、匿名/具名函数表达式、name 推断和不提升行为。
- **Arrow Function**：关注词法 `this`、无自身 `arguments`、表达式体/块体和 callback 场景。
- **Formal Parameters**：关注参数绑定、缺省参数、rest 参数、参数求值顺序和非法参数列表。
- **arguments object**：关注普通函数中的 `arguments` 可见性、长度、索引访问以及与 rest 参数差异。
- **ThisBinding**：关注普通调用、方法调用、`call` / `apply` / `bind` 与箭头函数词法 `this`。
- **CallExpression**：关注调用求值顺序、被调用对象非函数时的 TypeError、异常传播。
- **ReturnStatement**：关注无返回值为 `undefined`、显式返回、`try/finally` 中 return 覆盖和异常传播。
- **Lexical Environment / Closure**：关注作用域链、外层变量捕获、嵌套函数和闭包生命周期。

## 2. 鸿蒙动态 ArkTS 与 ECMAScript 函数语义

动态 ArkTS 的函数行为应优先按 ECMAScript 运行时语义理解：函数是可调用值，支持作为参数、返回值和对象属性传递。测试设计应验证运行时行为，而不是静态 checker 推导。

## 3. TypeScript 函数语法兼容点

需要确认动态 ArkTS 对 TS 风格语法的兼容范围，包括可选参数标记、函数类型标注、返回类型标注、箭头函数类型写法、overload signature 语法边界。兼容性测试只确认语法和运行行为，不展开静态 overload resolution。

## 4. ArkTS 动态可能限制点

需要通过 test262 对照和 XTS 验证确认：

- 严格模式边界下重复参数；
- 块级函数声明在不同模式下的行为；
- `arguments` 与参数别名关系；
- `Function.prototype.bind` 后的 `name` / `length`；
- TS overload signature 是否允许在动态 ArkTS 源码中出现；
- typed function annotation 是否只作为兼容语法存在。

## 5. 与静态 ArkTS 的边界

本章节不看护静态泛型、静态函数类型 assignability、静态 overload resolution、静态 checker 错误文案。相关内容应归入静态 ArkTS 类型系统或 checker 专项。

## 6. 后续验证方向

- 使用 test262 映射确认 ECMAScript 基线；
- 使用 XTS / ohosTest 验证动态 ArkTS 运行时行为；
- 使用 fail_compile 验证语法错误和动态 ArkTS 不支持的 TS 语法；
- 使用 fail_runtime 验证 TypeError、ReferenceError 和异常传播；
- 使用 regression 记录鸿蒙动态 ArkTS 实现差异和历史缺陷。
