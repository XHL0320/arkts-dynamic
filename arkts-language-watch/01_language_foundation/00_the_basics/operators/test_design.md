# Operator Test Design

## 1. Positive Runtime Cases

- number 算术、取模、幂运算和 Infinity / NaN 边界。
- string + 拼接、number + string 拼接、boolean/null 到 number 的转换。
- `==` / `===` 基础差异，null/undefined 抽象相等，object identity。
- `&&` / `||` 返回原始操作数并短路。
- `??` 只对 null / undefined 走右侧。
- `?.` 对 nullish base 短路，对非 nullish base 正常访问。
- `typeof` 未声明变量返回 `undefined` 字符串，普通类型返回对应标签。
- `instanceof` 和 `in` 基础判断。

## 2. Syntax Error / Compile Negative Cases

- optional chaining 作为赋值左侧。
- invalid assignment target，例如 `(a + b) = c`。
- update 非引用表达式，例如 `++(a + b)`。
- `??` 与 `&&` / `||` 未加括号混用。
- `await` / `yield` 在当前动态 ArkTS 不支持上下文中的语法边界。

## 3. Runtime Exception Cases

- number + bigint 混合算术 TypeError。
- `in` 右侧为 null / undefined / primitive。
- `instanceof` 右侧非 callable。
- 可选链调用属性存在但不是函数。
- 对不可赋值或只读 binding 做复合赋值时的运行时/编译期归类确认。

## 4. Boundary Cases

- bigint 与 number 比较允许但算术不允许。
- `delete` 声明绑定、不可配置属性、数组元素。
- Symbol.hasInstance 自定义 instanceof。
- unsigned right shift 与负数边界。
- optional chaining 与 private/class member 的交叉后续归 class。

## 5. Cross Feature Cases

- types：运行时类型识别、typeof 基础返回值、instanceof 基础入口。
- declarations：声明绑定、TDZ、const/import 只读 binding。
- function：函数调用、参数、return、closure；operators 只覆盖 `obj?.method()` 短路语义。
- class：class 构造、继承、成员；operators 只覆盖 `instanceof` 表达式语义。
- statements：if/for/while/switch；operators 只覆盖条件表达式。

## 6. Cross Module Cases

- imported binding 参与赋值、复合赋值、delete 的边界归 declarations/module 联动。
- module namespace object 的 `in` / property access 后续与 module 章节联动。

## 7. Regression Cases

- number/bigint 混合运算异常。
- optional chaining 短路后仍求值参数或索引的错误。
- compound assignment 左侧重复求值。
- nullish coalescing 错误处理 false/0/empty string。
- typeof TDZ 未正确抛 ReferenceError。

## 8. Test262 Mapping Direction

后续映射 test262 的 language/expressions、language/statements 中相关表达式测试，重点抽取 ECMA 核心语义和 ArkTS 动态差异，不在 Stage 0 执行映射。

## 9. XTS Migration Strategy

- Stage 1 优先生成 P0/P1 pass、fail_runtime、fail_compile 和 boundary 候选。
- pass 用例必须有断言。
- fail_runtime 用例必须捕获异常并验证抛出。
- fail_compile 用例不得进入正向运行套件。
- boundary 用例只记录待确认语义，不标记稳定通过。
