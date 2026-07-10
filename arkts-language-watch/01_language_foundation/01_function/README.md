# Function

## 目录定位

本目录用于看护鸿蒙动态 ArkTS 的函数相关语言能力，主要参考 ECMAScript 2022 函数语义，并对 ECMAScript 2023 中与函数行为相关的增量保持单独确认。

本目录不是 ArkTS 静态 checker 专项，不按静态泛型擦除、静态 overload resolution 或静态类型系统规则展开；也不是 builtin `Function` API 全集，而是语言层 function 行为看护。

## 看护范围

| 子目录 | 看护范围 |
|---|---|
| `function_declaration/` | 函数声明、提升、重复声明、声明位置、递归 |
| `function_expression/` | 函数表达式、匿名/具名函数表达式、表达式求值时机、name 推断、不提升 |
| `optional_parameter/` | 可选参数、默认值、参数缺省、参数求值顺序 |
| `rest_parameter/` | rest 参数、参数收集、与 arguments 的区别 |
| `return_type/` | return 行为、无 return、finally 中 return、异常传播 |
| `function_scope/` | 函数作用域、词法环境、变量捕获、嵌套函数 |
| `function_call/` | 普通调用、call/apply/bind、this 绑定、异常传播 |
| `function_type/` | 函数作为值、参数、返回值以及动态 ArkTS 对 TS 函数类型语法的兼容 |
| `arrow_function_lambda/` | 箭头函数、词法 this、无 arguments、callback 场景 |
| `closure/` | 闭包捕获、循环变量、嵌套闭包、生命周期 |
| `function_overload_signature/` | TS 风格 overload signature 在动态 ArkTS 中的兼容/限制，不按静态 overload resolution 展开 |

## 资产类型

后续测试资产包括：

- `spec_summary.md`：叶子功能规范摘要；
- `test_design.md`：正向、负向、运行时异常、边界和回归测试设计；
- `coverage_matrix.md`：覆盖点和建议路径；
- `xts/`：后续 XTS / ohosTest 候选目录；
- `issues/`：已知问题、已修复回归和风险记录。

Stage 0 只完成设计骨架、覆盖矩阵和首批候选索引，不批量生成 `.ets` 用例。
