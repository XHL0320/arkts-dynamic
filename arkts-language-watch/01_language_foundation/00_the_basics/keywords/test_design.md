# Keyword Test Design

## 1. Positive Syntax Cases

正向用例验证关键字在合法语法位置的使用。

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| var/let/const 正常声明关键字 | 正常声明 | pass | `keywords/xts/pass/` |
| function 正常声明关键字 | 正常声明 | pass | `keywords/xts/pass/` |
| class 正常声明关键字 | 正常声明 | pass | `keywords/xts/pass/` |
| if/else 语句关键字 | 正常分支 | pass | `keywords/xts/pass/` |
| switch/case/default 语句关键字 | 正常 switch | pass | `keywords/xts/pass/` |
| for/while/do 循环关键字 | 正常循环 | pass | `keywords/xts/pass/` |
| break/continue 语句关键字 | 正常跳转 | pass | `keywords/xts/pass/` |
| throw/try/catch/finally 异常关键字 | 正常异常处理 | pass | `keywords/xts/pass/` |
| typeof/void/delete 表达式关键字 | 正常运算 | pass | `keywords/xts/pass/` |
| instanceof/in/new 表达式关键字 | 正常运算 | pass | `keywords/xts/pass/` |
| true/false/null 字面量关键字 | 正常字面量 | pass | `keywords/xts/pass/` |
| import/export/from/as 模块关键字 | 正常模块声明 | integration | `../06_module/xts/integration/` |

## 2. Compile Negative Cases

编译负向用例验证关键字非法使用。

| 测试点 | 预期错误 | 用例类型 | 建议路径 |
|---|---|---|---|
| 关键字作变量名（如 `var var = 1`） | SyntaxError | fail_compile | `keywords/xts/fail_compile/` |
| 关键字作函数名 | SyntaxError | fail_compile | `keywords/xts/fail_compile/` |
| 关键字作参数名 | SyntaxError | fail_compile | `keywords/xts/fail_compile/` |
| await 在非 async 上下文 | SyntaxError | fail_compile | `keywords/xts/fail_compile/` |
| yield 在非 generator 上下文 | SyntaxError | fail_compile | `keywords/xts/fail_compile/` |
| with 语句（严格模式） | SyntaxError | fail_compile | `keywords/xts/fail_compile/` |
| 严格模式保留字作标识符 | SyntaxError | fail_compile | `keywords/xts/fail_compile/` |
| return 在函数外 | SyntaxError | fail_compile | `keywords/xts/fail_compile/` |
| break/continue 在循环外 | SyntaxError | fail_compile | `keywords/xts/fail_compile/` |

## 3. Contextual Keyword Cases

上下文关键字在特定位置有特殊含义。

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| `as` 在 import 中作别名 | 正常别名导入 | pass | `../06_module/xts/integration/` |
| `from` 在 import 中作来源 | 正常来源 | pass | `../06_module/xts/integration/` |
| `of` 在 for-of 中作迭代 | 正常迭代 | pass | `keywords/xts/pass/` |
| `async` 标记异步函数 | 正常 async | boundary | `keywords/xts/boundary/` |
| `await` 在 async 函数内 | 正常 await | boundary | `keywords/xts/boundary/` |
| `yield` 在 generator 内 | 正常 yield | boundary | `keywords/xts/boundary/` |
| `default` 在 export 中 | 正常默认导出 | pass | `../06_module/xts/integration/` |

## 4. Strict Mode / Module Mode Cases

严格模式和模块模式下的关键字限制。

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| `implements` 作标识符（严格模式） | SyntaxError | fail_compile | `keywords/xts/fail_compile/` |
| `interface` 作标识符（严格模式） | SyntaxError | fail_compile | `keywords/xts/fail_compile/` |
| `package` 作标识符（严格模式） | SyntaxError | fail_compile | `keywords/xts/fail_compile/` |
| `private` 作标识符（严格模式） | SyntaxError | fail_compile | `keywords/xts/fail_compile/` |
| `let` 作标识符（严格模式） | SyntaxError | fail_compile | `keywords/xts/fail_compile/` |
| `with` 语句在模块中 | SyntaxError | fail_compile | `keywords/xts/fail_compile/` |

## 5. TypeScript Compatibility Boundary Cases

TypeScript 关键字在动态 ArkTS 中的支持边界。

| 测试点 | 边界原因 | 用例类型 | 建议路径 |
|---|---|---|---|
| `type` 关键字作类型别名 | 支持状态待确认 | boundary | `keywords/xts/boundary/` |
| `namespace` 关键字 | 支持状态待确认 | boundary | `keywords/xts/boundary/` |
| `declare` 关键字 | 支持状态待确认 | boundary | `keywords/xts/boundary/` |
| `abstract` 关键字 | 支持状态待确认 | boundary | `keywords/xts/boundary/` |
| `readonly` 关键字 | 支持状态待确认 | boundary | `keywords/xts/boundary/` |
| `enum` 关键字声明 | ES 未来保留字 + TS 声明 | boundary | `keywords/xts/boundary/` |
| `public`/`private`/`protected` 成员修饰 | 支持状态待确认 | boundary | `keywords/xts/boundary/` |

## 6. Cross Feature Cases

跨特性组合用例验证关键字与其他语言特性的交互。

| 测试点 | 关联特性 | 用例类型 | 建议路径 |
|---|---|---|---|
| `class` 关键字 + extends/super | keywords + class | integration | `keywords/xts/integration/` |
| `async` 关键字 + function | keywords + function | integration | `keywords/xts/integration/` |
| `import` 关键字 + declarations | keywords + module + declarations | integration | `keywords/xts/integration/` |
| `typeof` 关键字 + types | keywords + operators + types | integration | `keywords/xts/integration/` |
| `new` 关键字 + class | keywords + operators + class | integration | `keywords/xts/integration/` |

## 7. Regression Cases

回归用例用于记录和验证历史缺陷或兼容差异。

| 测试点 | 回归来源 | 用例类型 | 建议路径 |
|---|---|---|---|
| 关键字作为对象属性名 | 规范行为验证 | regression | `keywords/xts/regression/` |
| 严格模式保留字限制 | 规范行为验证 | regression | `keywords/xts/regression/` |
| `with` 语句禁止 | 规范行为验证 | regression | `keywords/xts/regression/` |
| `enum` 保留字行为 | 兼容差异验证 | regression | `keywords/xts/regression/` |

## 8. Test262 Mapping Direction

ECMAScript test262 中关键字相关的测试目录映射：

| test262 目录 | 映射方向 | 对应本目录测试点 |
|---|---|---|
| `test/language/reserved-words/` | 保留字 | KW-RESERVED-系列 |
| `test/language/identifiers/` | 标识符边界 | KW-IDENTIFIER-系列 |
| `test/language/statements/` | 语句关键字 | 交叉映射到 statements |
| `test/language/expressions/` | 表达式关键字 | 交叉映射到 operators |

策略：test262 关键字合法性映射归 keywords；语句执行语义 test262 归 statements；运算符 test262 归 operators。

## 9. XTS Migration Strategy

| 步骤 | 内容 |
|---|---|
| 1 | 确认 test262 关键字合法性基线覆盖范围 |
| 2 | 使用 XTS / ohosTest 验证动态 ArkTS 关键字运行时行为 |
| 3 | 使用 fail_compile 验证关键字非法使用和保留字限制 |
| 4 | 使用 boundary 确认 TS/ArkTS 扩展关键字支持边界 |
| 5 | 使用 regression 记录鸿蒙动态 ArkTS 关键字实现差异 |
