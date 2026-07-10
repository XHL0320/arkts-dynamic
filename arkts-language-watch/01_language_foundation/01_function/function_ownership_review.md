# Function Ownership Review

## Purpose

本文件用于确认 Function 章节只负责函数特有运行语义，避免重复覆盖 declarations 已负责的声明绑定、提升、TDZ、重复声明等共性规则。

## Ownership Rule

| 规则类型 | 主归属目录 | Function 中处理方式 |
|---|---|---|
| function declaration hoisting | `00_the_basics/declarations` | Function 不重复生成，最多做集成说明 |
| duplicate function declaration | `00_the_basics/declarations` | Function 不重复生成 |
| block-level function declaration | `00_the_basics/declarations` | Function 不重复生成，保留 boundary 说明 |
| function parameters | `01_function` | Function 主负责 |
| rest/default/optional parameter | `01_function` | Function 主负责 |
| return behavior | `01_function` | Function 主负责 |
| function call / this / call/apply/bind | `01_function` | Function 主负责 |
| closure / scope chain | `01_function` | Function 主负责 |
| arrow function | `01_function` | Function 主负责 |
| TS-style overload signature compatibility | `01_function/function_overload_signature` | 作为兼容边界处理 |

## Potential Duplicates

| 文件路径 | 测试点 | 是否疑似 declarations 重复 | 建议处理 |
|---|---|---|---|
| `function_scope/xts/boundary/function_scope_block_function_boundary.ets` | block-level function declaration inside function body | 是 | rename_as_boundary；保留为 Function 作用域链边界，不作为 declaration hoisting 主线 |

## Conclusion

Function Stage 1-3 已生成的实际 `.ets` 主要覆盖参数、返回、调用、作用域、闭包、箭头函数、函数一等值和 overload signature 兼容边界。当前仅发现 1 个与 declarations 存在交叉的边界用例，已经放在 `boundary/` 并标注 pending confirmation，不作为 declarations 主线重复覆盖。
