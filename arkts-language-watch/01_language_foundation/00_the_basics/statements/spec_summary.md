# Statement Spec Summary

## 1. Feature Scope

语句体系看护覆盖以下语句类型的执行语义、控制流、异常处理和跳转行为：

- 块语句、空语句、表达式语句
- 条件语句：`if` / `else` / `switch`
- 循环语句：`while` / `do-while` / `for` / `for-in` / `for-of`
- 跳转语句：`break` / `continue` / `return`
- 异常语句：`throw` / `try` / `catch` / `finally`
- 标签语句：`labelled statement`
- 调试语句：`debugger`
- 顶层语句边界：模块顶层 / 脚本顶层 / 严格模式

本目录关注的是动态 ArkTS 的语句执行语义和控制流，不展开静态类型系统、运算符全量表达式行为或函数调用语义。

## 2. ECMAScript Statement Semantics

ECMAScript 语句规范（ECMA-262 §14）：

| 语句类型 | 规范条目 | 说明 |
|---|---|---|
| BlockStatement | §14.2 | 块语句，创建块级作用域 |
| EmptyStatement | §14.3 | 空语句 |
| ExpressionStatement | §14.4 | 表达式语句 |
| IfStatement | §14.5 | 条件语句 |
| SwitchStatement | §14.6 | switch 语句 |
| WhileStatement | §14.7.2 | while 循环 |
| DoWhileStatement | §14.7.1 | do-while 循环 |
| ForStatement | §14.7.4 | for 循环 |
| ForInStatement | §14.7.5 | for-in 枚举 |
| ForOfStatement | §14.7.5 | for-of 迭代 |
| BreakStatement | §14.8 | break 跳转 |
| ContinueStatement | §14.8 | continue 跳转 |
| ReturnStatement | §14.9 | return 语句 |
| ThrowStatement | §14.13 | throw 语句 |
| TryStatement | §14.15 | try/catch/finally |
| LabelledStatement | §14.12 | 标签语句 |
| DebuggerStatement | §14.16 | debugger 语句 |

语句执行产生 Completion Record，包含 type（normal/break/continue/return/throw）、value 和 target。

## 3. Block / Empty / Expression Statement

### Block Statement
- `{ ... }` 创建块级作用域
- `let` / `const` / `class` 声明在块内为块级绑定
- 块语句本身返回 normal completion

### Empty Statement
- `;` 空语句，不执行任何操作
- 返回 normal completion

### Expression Statement
- `expr;` 执行表达式并丢弃结果
- 常见：赋值、函数调用、自增自减
- 不能以 `function` / `class` / `{` 开头（避免歧义）

## 4. Conditional Statements

### If Statement
- `if (cond) stmt1 else stmt2`
- condition 经过 ToBoolean 转换
- 只有匹配分支被执行
- else if 链按顺序匹配

### Switch Statement
- `switch (expr) { case val: stmt; ... default: stmt; }`
- expr 与 case 值使用严格相等（`===`）比较
- 匹配后执行直到 break 或结尾（fall-through）
- default 可在任意位置，通常在末尾
- 无匹配时执行 default，无 default 则跳过

## 5. Switch Statement

关键行为：
- 比较使用 `===`（严格相等）
- fall-through：匹配后不 break 则继续执行下一个 case
- default 位置灵活，但通常在末尾
- switch 表达式只求值一次

## 6. Loop Statements

### While
- `while (cond) body`
- 先判断条件，可能零次执行
- condition 为 falsy 时退出

### Do-While
- `do body while (cond);`
- 先执行 body，至少执行一次
- body 执行后判断条件

### For
- `for (init; cond; update) body`
- 执行顺序：init → cond → body → update → cond → ...
- init / cond / update 可省略（省略 cond 为 true）
- init 中可声明变量（var 为函数作用域，let 为块级）

## 7. for / for-in / for-of

### For-In
- `for (key in obj) body`
- 枚举对象自身和继承的可枚举属性
- 不保证枚举顺序（非整数键顺序待确认）
- 属性被删除后不枚举

### For-Of
- `for (item of iterable) body`
- 迭代 iterable 对象（Array / String / Map / Set / Generator 等）
- 非 iterable 抛出 TypeError
- 使用 `[Symbol.iterator]` 协议

## 8. Break / Continue

### Break
- `break;` 跳出当前循环或 switch
- `break label;` 跳出带标签的语句
- 在循环/switch 外使用为 SyntaxError

### Continue
- `continue;` 跳过当前迭代，进入下一次
- `continue label;` 跳到带标签的循环
- 在循环外使用为 SyntaxError

## 9. Return Statement Boundary

- `return expr;` 在函数内返回值
- `return;` 返回 undefined
- **函数外 return 为 SyntaxError**（归 statements 边界）
- return 的返回值语义、finally 中 return 覆盖归 `01_function/return_type`
- statements 只记录 return 作为 statement 的语法归属和函数外非法边界

## 10. Throw Statement

- `throw expr;` 抛出异常
- expr 可以是任意值（通常为 Error 对象）
- 抛出后控制流跳到最近的 catch
- 未捕获的异常导致程序终止

## 11. Try / Catch / Finally

### Try-Catch
- `try { ... } catch (e) { ... }`
- catch 绑定 `e` 在 catch 块内可见（块级作用域）
- catch 只捕获 try 块内抛出的异常

### Try-Finally
- `try { ... } finally { ... }`
- finally 无论是否异常都会执行
- finally 中的 return / throw / break 会覆盖 try 中的控制流

### Try-Catch-Finally
- `try { ... } catch (e) { ... } finally { ... }`
- 执行顺序：try → (异常时) catch → finally
- finally 中的控制流覆盖 try/catch 的结果

## 12. Labelled Statement

- `label: stmt`
- 通常用于嵌套循环
- `break label` 跳出带标签的语句
- `continue label` 跳到带标签循环的下一次迭代
- 标签不能与关键字冲突

## 13. Debugger Statement

- `debugger;` 在调试器中暂停执行
- 无调试器时为 no-op
- 不影响控制流（返回 normal completion）

## 14. Top-level Statement Boundary

- 模块顶层：允许 import / export / 声明 / 表达式语句
- 脚本顶层：允许声明 / 表达式语句，不允许 import / export
- 严格模式：影响部分语句行为（如块级函数声明）
- `return` / `break` / `continue` 在顶层为 SyntaxError

## 15. ArkTS Dynamic Notes

鸿蒙动态 ArkTS 语句语义需要与 ECMAScript 对照确认的差异点：

1. **for-in 枚举顺序**：确认属性枚举顺序是否与 ES2022 一致。
2. **for-of 迭代协议**：确认 `[Symbol.iterator]` 是否完整支持。
3. **switch fall-through**：确认 fall-through 行为是否与 ES 一致。
4. **finally 控制流覆盖**：确认 finally 中 return / break / continue 覆盖行为。
5. **catch binding**：确认 catch 参数绑定是否为块级作用域。
6. **labelled statement**：确认标签语句是否完整支持。
7. **debugger 语句**：确认 debugger 语句在非调试环境下的行为。
8. **顶层 return / break / continue**：确认是否为 SyntaxError。

## 16. TypeScript Compatibility Notes

动态 ArkTS 需要与 TypeScript 语句语法兼容确认的点：

1. **for-of 类型标注**：`for (let x: number of arr)` 是否允许类型标注。
2. **catch binding 类型标注**：`catch (e: Error)` 是否允许类型标注。
3. **switch case 类型匹配**：case 值是否支持复杂表达式。
4. **label 语法**：TypeScript 标签语法是否与 ES 一致。

## 17. Compile Negative Conditions

| 条件 | ES 规范错误类型 | ArkTS 动态预期 |
|---|---|---|
| break 在循环/switch 外 | SyntaxError | SyntaxError / compile error |
| continue 在循环外 | SyntaxError | SyntaxError / compile error |
| return 在函数外 | SyntaxError | SyntaxError / compile error |
| 标签重复声明 | SyntaxError | SyntaxError / compile error |
| for-of 非 iterable（如果编译期可检测） | — | compile error（需确认） |

## 18. Runtime Exception Conditions

| 条件 | ES 规范错误类型 | 说明 |
|---|---|---|
| throw 语句抛出异常 | 用户异常 | 跳到最近的 catch |
| for-of 非 iterable | TypeError | "x is not iterable" |
| 未捕获的异常 | 程序终止 | 进程退出 |
| finally 中 throw | 覆盖 try 结果 | 新异常传播 |

## 19. Pending Questions

| ID | 问题 | 确认方式 | 优先级 |
|---|---|---|---|
| STMT-PQ-P0-001 | for-in 枚举顺序是否与 ES2022 一致 | runtime smoke | P0 |
| STMT-PQ-P0-002 | for-of `[Symbol.iterator]` 协议是否完整支持 | runtime smoke | P0 |
| STMT-PQ-P0-003 | finally 中 return 覆盖 try 结果行为 | runtime smoke | P0 |
| STMT-PQ-P0-004 | catch binding 是否为块级作用域 | runtime smoke | P0 |
| STMT-PQ-P1-001 | switch fall-through 行为是否与 ES 一致 | runtime smoke | P1 |
| STMT-PQ-P1-002 | labelled statement 是否完整支持 | runtime smoke / compiler | P1 |
| STMT-PQ-P1-003 | debugger 语句在非调试环境下行为 | runtime smoke | P1 |
| STMT-PQ-P1-004 | 顶层 return / break / continue 是否为 SyntaxError | compiler | P1 |
| STMT-PQ-P2-001 | for-of 类型标注是否允许 | compiler | P2 |
| STMT-PQ-P2-002 | catch binding 类型标注是否允许 | compiler | P2 |
