# Statement Test Design

## 1. Positive Runtime Cases

正向运行时用例验证语句的正常执行行为。

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| block statement 块级作用域 | 块内 let/const 不泄露 | pass | `statements/xts/pass/` |
| empty statement 不影响执行 | 正常执行 | pass | `statements/xts/pass/` |
| expression statement 执行 | 表达式求值并丢弃 | pass | `statements/xts/pass/` |
| if true 分支执行 | true 分支执行 | pass | `statements/xts/pass/` |
| if false 分支跳过 | false 分支不执行 | pass | `statements/xts/pass/` |
| if else if 链匹配 | 第一个匹配分支执行 | pass | `statements/xts/pass/` |
| switch case 匹配 | 匹配 case 执行 | pass | `statements/xts/pass/` |
| switch default 执行 | 无匹配时执行 default | pass | `statements/xts/pass/` |
| switch fall-through | 无 break 继续执行 | pass | `statements/xts/pass/` |
| while 循环正常 | 条件 false 时退出 | pass | `statements/xts/pass/` |
| do-while 至少执行一次 | 即使条件 false 也执行一次 | pass | `statements/xts/pass/` |
| for init/cond/update 执行顺序 | 正确顺序 | pass | `statements/xts/pass/` |
| for break 退出循环 | break 跳出循环 | pass | `statements/xts/pass/` |
| for continue 跳过迭代 | continue 进入下一次 | pass | `statements/xts/pass/` |
| for-in 枚举对象属性 | 枚举可枚举属性 | pass | `statements/xts/pass/` |
| for-of 迭代数组 | 迭代数组元素 | pass | `statements/xts/pass/` |
| break 跳出循环 | 正常 break | pass | `statements/xts/pass/` |
| continue 跳过迭代 | 正常 continue | pass | `statements/xts/pass/` |
| break label 跳出外层循环 | 跳到标签处 | pass | `statements/xts/pass/` |
| continue label 跳到外层循环 | 跳到标签循环下一次 | pass | `statements/xts/pass/` |
| throw 抛出异常 | 异常传播 | pass | `statements/xts/pass/` |
| try catch 捕获异常 | catch 块执行 | pass | `statements/xts/pass/` |
| try finally 执行 | finally 块执行 | pass | `statements/xts/pass/` |
| try catch finally 执行顺序 | try → catch → finally | pass | `statements/xts/pass/` |
| catch binding 块级作用域 | catch 参数在 catch 内可见 | pass | `statements/xts/pass/` |
| labelled statement 正常 | 标签不影响执行 | pass | `statements/xts/pass/` |
| debugger 语句 no-op | 不影响控制流 | pass | `statements/xts/pass/` |

## 2. Syntax Error / Compile Negative Cases

编译期/语法期错误用例验证语句规则的静态禁止条件。

| 测试点 | 预期错误 | 用例类型 | 建议路径 |
|---|---|---|---|
| break 在循环/switch 外 | SyntaxError | fail_compile | `statements/xts/fail_compile/` |
| continue 在循环外 | SyntaxError | fail_compile | `statements/xts/fail_compile/` |
| return 在函数外 | SyntaxError | fail_compile | `statements/xts/fail_compile/` |
| 标签重复声明 | SyntaxError | fail_compile | `statements/xts/fail_compile/` |
| break label 不存在 | SyntaxError | fail_compile | `statements/xts/fail_compile/` |
| continue label 指向非循环 | SyntaxError | fail_compile | `statements/xts/fail_compile/` |

## 3. Runtime Exception Cases

运行时异常用例验证语句相关的运行期报错行为。

| 测试点 | 预期异常 | 用例类型 | 建议路径 |
|---|---|---|---|
| throw 抛出未捕获异常 | 程序终止 | fail_runtime | `statements/xts/fail_runtime/` |
| for-of 非 iterable | TypeError | fail_runtime | `statements/xts/fail_runtime/` |
| finally 中 throw 覆盖 try | 新异常传播 | fail_runtime | `statements/xts/fail_runtime/` |
| throw null / undefined | 异常传播 | fail_runtime | `statements/xts/fail_runtime/` |

## 4. Boundary Cases

边界用例验证规范差异或 ArkTS 支持状态待确认的场景。

| 测试点 | 边界原因 | 用例类型 | 建议路径 |
|---|---|---|---|
| for-in 枚举顺序 | ES 规范顺序待确认 | boundary | `statements/xts/boundary/` |
| for-of Symbol.iterator 支持 | 迭代协议支持状态 | boundary | `statements/xts/boundary/` |
| finally 中 return 覆盖 try return | 控制流覆盖行为 | boundary | `statements/xts/boundary/` |
| switch fall-through 无 break | 行为差异风险 | boundary | `statements/xts/boundary/` |
| catch binding 块级作用域 | 作用域规则待确认 | boundary | `statements/xts/boundary/` |
| labelled statement 完整支持 | 支持状态待确认 | boundary | `statements/xts/boundary/` |
| debugger 语句运行时行为 | 非调试环境行为 | boundary | `statements/xts/boundary/` |
| 顶层 return/break/continue | SyntaxError 确认 | boundary | `statements/xts/boundary/` |
| 严格模式块级函数声明 | 模式差异 | boundary | `statements/xts/boundary/` |
| for-of 类型标注 | 兼容性待确认 | boundary | `statements/xts/boundary/` |
| catch binding 类型标注 | 兼容性待确认 | boundary | `statements/xts/boundary/` |

## 5. Cross Feature Cases

跨特性组合用例验证语句体系与其他语言特性的交互。

| 测试点 | 关联特性 | 用例类型 | 建议路径 |
|---|---|---|---|
| for init 中 let 声明 + TDZ | statements + declarations | integration | `statements/xts/integration/` |
| if 条件中的运算符短路 | statements + operators | integration | `statements/xts/integration/` |
| try catch 中的函数调用异常 | statements + function | integration | `statements/xts/integration/` |
| for-of 迭代 class instance | statements + class | integration | `statements/xts/integration/` |
| switch case 中的 typeof | statements + operators + types | integration | `statements/xts/integration/` |
| finally 中的 return 覆盖 | statements + function | integration | `statements/xts/integration/` |

## 6. Cross Module Cases

跨模块用例验证语句在多文件场景中的行为。

| 测试点 | 用例类型 | 建议路径 |
|---|---|---|
| 模块顶层语句执行顺序 | integration | `../06_module/xts/integration/` |
| 模块顶层 return 非法 | boundary | `statements/xts/boundary/` |
| 跨模块异常传播 | integration | `statements/xts/integration/` |

## 7. Regression Cases

回归用例用于记录和验证历史缺陷或后续发现的兼容差异。

| 测试点 | 回归来源 | 用例类型 | 建议路径 |
|---|---|---|---|
| finally 中 return 覆盖 try return | 规范核心验证 | regression | `statements/xts/regression/` |
| for-in 枚举顺序一致性 | 规范行为验证 | regression | `statements/xts/regression/` |
| switch fall-through 行为 | 规范行为验证 | regression | `statements/xts/regression/` |
| do-while 至少执行一次 | 规范核心验证 | regression | `statements/xts/regression/` |
| catch binding 作用域 | 规范行为验证 | regression | `statements/xts/regression/` |

## 8. Test262 Mapping Direction

ECMAScript test262 中语句相关的测试目录映射：

| test262 目录 | 映射方向 | 对应本目录测试点 |
|---|---|---|
| `test/language/statements/` | 语句基础 | STMT-系列 |
| `test/language/statements/block/` | 块语句 | STMT-BLOCK-系列 |
| `test/language/statements/if/` | if 语句 | STMT-IF-系列 |
| `test/language/statements/switch/` | switch 语句 | STMT-SWITCH-系列 |
| `test/language/statements/for/` | for 循环 | STMT-FOR-系列 |
| `test/language/statements/for-in/` | for-in | STMT-FORIN-系列 |
| `test/language/statements/for-of/` | for-of | STMT-FOROF-系列 |
| `test/language/statements/try/` | try/catch/finally | STMT-TRY-系列 |
| `test/language/statements/break/` | break | STMT-BREAK-系列 |
| `test/language/statements/continue/` | continue | STMT-CONTINUE-系列 |

策略：test262 语句基础语义映射归 statements；表达式 test262 映射归 operators；函数 test262 映射归 01_function。

## 9. XTS Migration Strategy

| 步骤 | 内容 |
|---|---|
| 1 | 确认 test262 语句语义基线覆盖范围 |
| 2 | 使用 XTS / ohosTest 验证动态 ArkTS 语句运行时行为 |
| 3 | 使用 fail_compile 验证 break/continue/return 非法位置 |
| 4 | 使用 fail_runtime 验证 throw 未捕获和 for-of 非 iterable |
| 5 | 使用 regression 记录鸿蒙动态 ArkTS 语句实现差异 |
| 6 | 使用 boundary 确认 finally return 覆盖、枚举顺序等规范边界 |
