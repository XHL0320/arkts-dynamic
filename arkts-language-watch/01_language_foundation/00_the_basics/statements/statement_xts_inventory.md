# Statement XTS Inventory

## Summary

| 项目 | 数量 |
|---|---:|
| .ets 文件总数 | 33 |
| pass 用例数量 | 25 |
| fail_compile 用例数量 | 3 |
| fail_runtime 用例数量 | 1 |
| boundary 用例数量 | 3 |
| regression 用例数量 | 1 |
| helper module 文件数量 | 0 |

## Inventory By Type

| 用例类型 | 数量 | 目录 |
|---|---:|---|
| pass | 25 | `xts/pass/` |
| fail_compile | 3 | `xts/fail_compile/` |
| fail_runtime | 1 | `xts/fail_runtime/` |
| boundary | 3 | `xts/boundary/` |
| regression | 1 | `xts/regression/` |

## Statement Direction Summary

| 语句方向 | pass | fail_compile | fail_runtime | boundary | regression | 合计 |
|---|---:|---:|---:|---:|---:|---:|
| block_statement | 1 | 0 | 0 | 0 | 0 | 1 |
| empty_statement | 1 | 0 | 0 | 0 | 0 | 1 |
| expression_statement | 1 | 0 | 0 | 0 | 0 | 1 |
| if_statement | 3 | 0 | 0 | 0 | 0 | 3 |
| switch_statement | 4 | 0 | 0 | 0 | 0 | 4 |
| while_statement | 2 | 0 | 0 | 0 | 0 | 2 |
| do_while_statement | 1 | 0 | 0 | 0 | 0 | 1 |
| for_statement | 4 | 0 | 0 | 0 | 1 | 5 |
| for_in_statement | 1 | 0 | 0 | 0 | 0 | 1 |
| for_of_statement | 1 | 0 | 1 | 0 | 0 | 2 |
| break_statement | 0 | 1 | 0 | 0 | 0 | 1 |
| continue_statement | 0 | 1 | 0 | 0 | 0 | 1 |
| return_statement_boundary | 0 | 1 | 0 | 0 | 0 | 1 |
| throw_statement | 1 | 0 | 0 | 0 | 0 | 1 |
| try_catch_finally | 4 | 0 | 0 | 1 | 0 | 5 |
| labelled_statement | 2 | 0 | 0 | 1 | 0 | 3 |
| debugger_statement | 0 | 0 | 0 | 1 | 0 | 1 |
| top_level_statement_boundary | 0 | 0 | 0 | 0 | 0 | 0 |

## Case List

| 序号 | 文件路径 | 用例类型 | 语句方向 | 推测测试点 | 所属阶段 | 备注 |
|---|---|---|---|---|---|---|
| 1 | `xts/pass/statement_block_basic_pass.ets` | pass | block_statement | block 块级作用域 let 不泄露 | Stage 1 | ES 核心行为 |
| 2 | `xts/pass/statement_empty_basic_pass.ets` | pass | empty_statement | 空语句不影响执行 | Stage 1 | ES 核心行为 |
| 3 | `xts/pass/statement_expression_basic_pass.ets` | pass | expression_statement | 表达式语句执行并丢弃 | Stage 1 | ES 核心行为 |
| 4 | `xts/pass/statement_if_true_branch_pass.ets` | pass | if_statement | if true 分支执行 | Stage 1 | ES 核心行为 |
| 5 | `xts/pass/statement_if_false_branch_pass.ets` | pass | if_statement | if false 分支跳过 | Stage 1 | 条件为 false |
| 6 | `xts/pass/statement_if_else_chain_pass.ets` | pass | if_statement | if else if 链匹配 | Stage 1 | 链式匹配 |
| 7 | `xts/pass/statement_switch_case_match_pass.ets` | pass | switch_statement | switch case 匹配 + 严格相等 | Stage 1 | ES 核心行为 |
| 8 | `xts/pass/statement_switch_default_pass.ets` | pass | switch_statement | switch default 执行 | Stage 1 | 无匹配 |
| 9 | `xts/pass/statement_switch_fall_through_pass.ets` | pass | switch_statement | switch fall-through 无 break | Stage 1 | fall-through |
| 10 | `xts/pass/statement_switch_break_pass.ets` | pass | switch_statement | switch with break | Stage 1 | break stops |
| 11 | `xts/pass/statement_while_basic_pass.ets` | pass | while_statement | while 循环正常执行 | Stage 1 | ES 核心行为 |
| 12 | `xts/pass/statement_while_break_pass.ets` | pass | while_statement | while break 退出 | Stage 1 | break |
| 13 | `xts/pass/statement_do_while_execute_once_pass.ets` | pass | do_while_statement | do-while 至少执行一次 | Stage 1 | ES 核心行为 |
| 14 | `xts/pass/statement_for_basic_pass.ets` | pass | for_statement | for 基础循环 | Stage 1 | ES 核心行为 |
| 15 | `xts/pass/statement_for_execution_order_pass.ets` | pass | for_statement | for init/cond/update 执行顺序 | Stage 1 | 执行顺序 |
| 16 | `xts/pass/statement_for_break_pass.ets` | pass | for_statement | for break 退出 | Stage 1 | break |
| 17 | `xts/pass/statement_for_continue_pass.ets` | pass | for_statement | for continue 跳过 | Stage 1 | continue |
| 18 | `xts/pass/statement_for_in_object_property_pass.ets` | pass | for_in_statement | for-in 枚举对象属性 | Stage 1 | ES 核心行为 |
| 19 | `xts/pass/statement_for_of_array_pass.ets` | pass | for_of_statement | for-of 迭代数组 | Stage 1 | ES 核心行为 |
| 20 | `xts/pass/statement_break_label_pass.ets` | pass | labelled_statement | break label 跳出外层循环 | Stage 1 | 带标签 |
| 21 | `xts/pass/statement_continue_label_pass.ets` | pass | labelled_statement | continue label 跳到外层循环 | Stage 1 | 带标签 |
| 22 | `xts/pass/statement_throw_catch_pass.ets` | pass | throw_statement | throw 被 catch 捕获 | Stage 1 | ES 核心行为 |
| 23 | `xts/pass/statement_try_finally_executes_pass.ets` | pass | try_catch_finally | try finally 必定执行 | Stage 1 | finally 执行 |
| 24 | `xts/pass/statement_try_catch_finally_order_pass.ets` | pass | try_catch_finally | try/catch/finally 执行顺序 | Stage 1 | 执行顺序 |
| 25 | `xts/pass/statement_catch_binding_scope_pass.ets` | pass | try_catch_finally | catch binding 块级作用域 | Stage 1 | 块级绑定 |
| 26 | `xts/fail_compile/statement_break_outside_loop_fail_compile.ets` | fail_compile | break_statement | break 在循环外 SyntaxError | Stage 1 | 语法错误 |
| 27 | `xts/fail_compile/statement_continue_outside_loop_fail_compile.ets` | fail_compile | continue_statement | continue 在循环外 SyntaxError | Stage 1 | 语法错误 |
| 28 | `xts/fail_compile/statement_return_outside_function_fail_compile.ets` | fail_compile | return_statement_boundary | return 在函数外 SyntaxError | Stage 1 | 语法错误 |
| 29 | `xts/fail_runtime/statement_for_of_non_iterable_fail_runtime.ets` | fail_runtime | for_of_statement | for-of 非 iterable TypeError | Stage 1 | TypeError |
| 30 | `xts/boundary/statement_invalid_label_boundary.ets` | boundary | labelled_statement | 非法 label 边界 | Stage 1 | 支持待确认 |
| 31 | `xts/boundary/statement_finally_override_control_flow_boundary.ets` | boundary | try_catch_finally | finally 覆盖控制流 | Stage 1 | 控制流覆盖 |
| 32 | `xts/boundary/statement_debugger_boundary.ets` | boundary | debugger_statement | debugger 运行时行为 | Stage 1 | 非调试环境 |
| 33 | `xts/regression/statement_loop_control_flow_regression.ets` | regression | for_statement | 嵌套循环 break 只退出内层 | Stage 1 | 回归验证 |
