# Statement First Batch Candidate Index

## Summary

| 项目 | 数量 |
|---|---:|
| 首批候选数量 | 50 |
| P0 候选数量 | 32 |
| P1 候选数量 | 18 |
| Stage 1 已生成数量 | 33 |
| 仍为 planned 数量 | 17 |

## Candidate List

| Candidate ID | 语句方向 | Test Point | Case Type | Priority | Suggested File Path | Suitable for ohosTest | Needs test262 | Related Chapter | Status | 阶段 | 实际路径 | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| STMT-CAND-001 | block_statement | block 块级作用域 let 不泄露 | pass | P0 | `statements/xts/pass/statement_block_scope_pass.ets` | yes | yes | statements / declarations | created | Statements Stage 1 | `statements/xts/pass/statement_block_basic_pass.ets` | ES 核心行为 |
| STMT-CAND-002 | block_statement | block 内 let/const 块级绑定 | pass | P0 | `statements/xts/pass/statement_block_let_const_pass.ets` | yes | yes | statements / declarations | created | Statements Stage 1 | `statements/xts/pass/statement_block_basic_pass.ets` | 块级作用域 |
| STMT-CAND-003 | empty_statement | 空语句不影响执行 | pass | P0 | `statements/xts/pass/statement_empty_no_effect_pass.ets` | yes | yes | statements | created | Statements Stage 1 | `statements/xts/pass/statement_empty_basic_pass.ets` | ES 核心行为 |
| STMT-CAND-004 | expression_statement | 表达式语句执行并丢弃 | pass | P0 | `statements/xts/pass/statement_expression_discard_pass.ets` | yes | yes | statements / operators | created | Statements Stage 1 | `statements/xts/pass/statement_expression_basic_pass.ets` | ES 核心行为 |
| STMT-CAND-005 | expression_statement | 赋值表达式语句 | pass | P0 | `statements/xts/pass/statement_expression_assignment_pass.ets` | yes | yes | statements / operators | created | Statements Stage 1 | `statements/xts/pass/statement_expression_basic_pass.ets` | `x = 1;` |
| STMT-CAND-006 | if_statement | if true 分支执行 | pass | P0 | `statements/xts/pass/statement_if_true_branch_pass.ets` | yes | yes | statements / operators | created | Statements Stage 1 | `statements/xts/pass/statement_if_true_branch_pass.ets` | ES 核心行为 |
| STMT-CAND-007 | if_statement | if false 分支跳过 | pass | P0 | `statements/xts/pass/statement_if_false_branch_pass.ets` | yes | yes | statements / operators | created | Statements Stage 1 | `statements/xts/pass/statement_if_false_branch_pass.ets` | 条件为 false |
| STMT-CAND-008 | if_statement | if else if 链匹配 | pass | P0 | `statements/xts/pass/statement_if_else_chain_pass.ets` | yes | yes | statements / operators | created | Statements Stage 1 | `statements/xts/pass/statement_if_else_chain_pass.ets` | 链式匹配 |
| STMT-CAND-009 | switch_statement | switch case 匹配执行 | pass | P0 | `statements/xts/pass/statement_switch_case_match_pass.ets` | yes | yes | statements / operators | created | Statements Stage 1 | `statements/xts/pass/statement_switch_case_match_pass.ets` | ES 核心行为 |
| STMT-CAND-010 | switch_statement | switch default 执行 | pass | P0 | `statements/xts/pass/statement_switch_default_pass.ets` | yes | yes | statements / operators | created | Statements Stage 1 | `statements/xts/pass/statement_switch_default_pass.ets` | 无匹配 |
| STMT-CAND-011 | switch_statement | switch fall-through 无 break | pass | P0 | `statements/xts/pass/statement_switch_fall_through_pass.ets` | yes | yes | statements / operators | created | Statements Stage 1 | `statements/xts/pass/statement_switch_fall_through_pass.ets` | fall-through 风险 |
| STMT-CAND-012 | switch_statement | switch 严格相等比较 | pass | P0 | `statements/xts/pass/statement_switch_strict_equal_pass.ets` | yes | yes | statements / operators | created | Statements Stage 1 | `statements/xts/pass/statement_switch_case_match_pass.ets` | === 比较 |
| STMT-CAND-013 | while_statement | while 循环正常执行 | pass | P0 | `statements/xts/pass/statement_while_basic_pass.ets` | yes | yes | statements / operators | created | Statements Stage 1 | `statements/xts/pass/statement_while_basic_pass.ets` | ES 核心行为 |
| STMT-CAND-014 | while_statement | while 条件 false 零次执行 | pass | P0 | `statements/xts/pass/statement_while_zero_iteration_pass.ets` | yes | yes | statements / operators | planned | — | — | 不执行 |
| STMT-CAND-015 | while_statement | while break 退出 | pass | P0 | `statements/xts/pass/statement_while_break_pass.ets` | yes | yes | statements | created | Statements Stage 1 | `statements/xts/pass/statement_while_break_pass.ets` | break |
| STMT-CAND-016 | do_while_statement | do-while 至少执行一次 | pass | P0 | `statements/xts/pass/statement_dowhile_execute_once_pass.ets` | yes | yes | statements / operators | created | Statements Stage 1 | `statements/xts/pass/statement_do_while_execute_once_pass.ets` | ES 核心行为 |
| STMT-CAND-017 | do_while_statement | do-while 条件 false 也执行一次 | pass | P0 | `statements/xts/pass/statement_dowhile_false_condition_pass.ets` | yes | yes | statements / operators | created | Statements Stage 1 | `statements/xts/pass/statement_do_while_execute_once_pass.ets` | 至少一次 |
| STMT-CAND-018 | for_statement | for init/cond/update 执行顺序 | pass | P0 | `statements/xts/pass/statement_for_execution_order_pass.ets` | yes | yes | statements / operators | created | Statements Stage 1 | `statements/xts/pass/statement_for_execution_order_pass.ets` | ES 核心行为 |
| STMT-CAND-019 | for_statement | for break 退出 | pass | P0 | `statements/xts/pass/statement_for_break_pass.ets` | yes | yes | statements | created | Statements Stage 1 | `statements/xts/pass/statement_for_break_pass.ets` | break |
| STMT-CAND-020 | for_statement | for continue 跳过 | pass | P0 | `statements/xts/pass/statement_for_continue_pass.ets` | yes | yes | statements | created | Statements Stage 1 | `statements/xts/pass/statement_for_continue_pass.ets` | continue |
| STMT-CAND-021 | for_in_statement | for-in 枚举对象自身属性 | pass | P0 | `statements/xts/pass/statement_forin_own_property_pass.ets` | yes | yes | statements / types | created | Statements Stage 1 | `statements/xts/pass/statement_for_in_object_property_pass.ets` | ES 核心行为 |
| STMT-CAND-022 | for_in_statement | for-in 枚举顺序 | boundary | P0 | `statements/xts/boundary/statement_forin_order_boundary.ets` | yes | yes | statements / types | planned | — | — | 顺序待确认 |
| STMT-CAND-023 | for_of_statement | for-of 迭代数组 | pass | P0 | `statements/xts/pass/statement_forof_array_pass.ets` | yes | yes | statements / types | created | Statements Stage 1 | `statements/xts/pass/statement_for_of_array_pass.ets` | ES 核心行为 |
| STMT-CAND-024 | for_of_statement | for-of 非 iterable TypeError | fail_runtime | P0 | `statements/xts/fail_runtime/statement_forof_not_iterable_fail_runtime.ets` | yes | yes | statements / types | created | Statements Stage 1 | `statements/xts/fail_runtime/statement_for_of_non_iterable_fail_runtime.ets` | TypeError |
| STMT-CAND-025 | for_of_statement | for-of Symbol.iterator 支持 | boundary | P0 | `statements/xts/boundary/statement_forof_iterator_boundary.ets` | yes | yes | statements / types | planned | — | — | 迭代协议 |
| STMT-CAND-026 | break_statement | break 跳出循环 | pass | P0 | `statements/xts/pass/statement_break_loop_pass.ets` | yes | yes | statements | created | Statements Stage 1 | `statements/xts/pass/statement_while_break_pass.ets` | ES 核心行为 |
| STMT-CAND-027 | break_statement | break label 跳出外层循环 | pass | P0 | `statements/xts/pass/statement_break_label_pass.ets` | yes | yes | statements | created | Statements Stage 1 | `statements/xts/pass/statement_break_label_pass.ets` | 带标签 |
| STMT-CAND-028 | break_statement | break 在循环外 SyntaxError | fail_compile | P0 | `statements/xts/fail_compile/statement_break_outside_loop_fail_compile.ets` | no | yes | statements | created | Statements Stage 1 | `statements/xts/fail_compile/statement_break_outside_loop_fail_compile.ets` | 语法错误 |
| STMT-CAND-029 | continue_statement | continue 跳过当前迭代 | pass | P0 | `statements/xts/pass/statement_continue_skip_pass.ets` | yes | yes | statements | created | Statements Stage 1 | `statements/xts/pass/statement_for_continue_pass.ets` | ES 核心行为 |
| STMT-CAND-030 | continue_statement | continue label 跳到外层循环 | pass | P0 | `statements/xts/pass/statement_continue_label_pass.ets` | yes | yes | statements | created | Statements Stage 1 | `statements/xts/pass/statement_continue_label_pass.ets` | 带标签 |
| STMT-CAND-031 | continue_statement | continue 在循环外 SyntaxError | fail_compile | P0 | `statements/xts/fail_compile/statement_continue_outside_loop_fail_compile.ets` | no | yes | statements | created | Statements Stage 1 | `statements/xts/fail_compile/statement_continue_outside_loop_fail_compile.ets` | 语法错误 |
| STMT-CAND-032 | return_statement_boundary | return 在函数外 SyntaxError | fail_compile | P0 | `statements/xts/fail_compile/statement_return_outside_function_fail_compile.ets` | no | yes | statements | created | Statements Stage 1 | `statements/xts/fail_compile/statement_return_outside_function_fail_compile.ets` | 语法错误 |
| STMT-CAND-033 | throw_statement | throw 抛出异常 | pass | P0 | `statements/xts/pass/statement_throw_basic_pass.ets` | yes | yes | statements | created | Statements Stage 1 | `statements/xts/pass/statement_throw_catch_pass.ets` | ES 核心行为 |
| STMT-CAND-034 | throw_statement | throw 未捕获导致程序终止 | fail_runtime | P0 | `statements/xts/fail_runtime/statement_throw_uncaught_fail_runtime.ets` | yes | yes | statements | planned | — | — | 程序终止 |
| STMT-CAND-035 | try_catch_finally | try catch 捕获异常 | pass | P0 | `statements/xts/pass/statement_try_catch_pass.ets` | yes | yes | statements | created | Statements Stage 1 | `statements/xts/pass/statement_throw_catch_pass.ets` | ES 核心行为 |
| STMT-CAND-036 | try_catch_finally | try finally 执行 | pass | P0 | `statements/xts/pass/statement_try_finally_pass.ets` | yes | yes | statements | created | Statements Stage 1 | `statements/xts/pass/statement_try_finally_executes_pass.ets` | finally 执行 |
| STMT-CAND-037 | try_catch_finally | try catch finally 执行顺序 | pass | P0 | `statements/xts/pass/statement_try_catch_finally_order_pass.ets` | yes | yes | statements | created | Statements Stage 1 | `statements/xts/pass/statement_try_catch_finally_order_pass.ets` | 执行顺序 |
| STMT-CAND-038 | try_catch_finally | finally 中 return 覆盖 try | boundary | P0 | `statements/xts/boundary/statement_finally_return_override_boundary.ets` | yes | yes | statements / function | created | Statements Stage 1 | `statements/xts/boundary/statement_finally_override_control_flow_boundary.ets` | 控制流覆盖 |
| STMT-CAND-039 | try_catch_finally | finally 中 throw 覆盖 try | fail_runtime | P0 | `statements/xts/fail_runtime/statement_finally_throw_fail_runtime.ets` | yes | yes | statements | planned | — | — | 新异常传播 |
| STMT-CAND-040 | try_catch_finally | catch binding 块级作用域 | pass | P0 | `statements/xts/pass/statement_catch_binding_scope_pass.ets` | yes | yes | statements / declarations | created | Statements Stage 1 | `statements/xts/pass/statement_catch_binding_scope_pass.ets` | 块级绑定 |
| STMT-CAND-041 | labelled_statement | label 正常标记语句 | pass | P0 | `statements/xts/pass/statement_label_basic_pass.ets` | yes | yes | statements | created | Statements Stage 1 | `statements/xts/pass/statement_break_label_pass.ets` | ES 核心行为 |
| STMT-CAND-042 | debugger_statement | debugger 语句 no-op | pass | P0 | `statements/xts/pass/statement_debugger_noop_pass.ets` | yes | yes | statements | created | Statements Stage 1 | `statements/xts/boundary/statement_debugger_boundary.ets` | ES 核心行为 |
| STMT-CAND-043 | top_level_statement_boundary | 顶层 return SyntaxError | fail_compile | P0 | `statements/xts/fail_compile/statement_top_return_fail_compile.ets` | no | yes | statements / module | planned | — | — | 语法错误 |
| STMT-CAND-044 | top_level_statement_boundary | 顶层 break SyntaxError | fail_compile | P0 | `statements/xts/fail_compile/statement_top_break_fail_compile.ets` | no | yes | statements / module | planned | — | — | 语法错误 |
| STMT-CAND-045 | block_statement | 嵌套 block 作用域遮蔽 | pass | P1 | `statements/xts/pass/statement_block_nested_shadow_pass.ets` | yes | yes | statements / declarations | planned | — | — | 遮蔽行为 |
| STMT-CAND-046 | if_statement | if 条件 ToBoolean 转换 | pass | P1 | `statements/xts/pass/statement_if_toboolean_pass.ets` | yes | yes | statements / operators / types | planned | — | — | truthy/falsy |
| STMT-CAND-047 | switch_statement | switch 无匹配无 default | pass | P1 | `statements/xts/pass/statement_switch_no_match_pass.ets` | yes | yes | statements / operators | planned | — | — | 跳过 |
| STMT-CAND-048 | while_statement | while continue 跳过 | pass | P1 | `statements/xts/pass/statement_while_continue_pass.ets` | yes | yes | statements | planned | — | — | continue |
| STMT-CAND-049 | for_statement | for init 中 let 块级绑定 | pass | P1 | `statements/xts/pass/statement_for_let_init_pass.ets` | yes | yes | statements / declarations | planned | — | — | 块级绑定 |
| STMT-CAND-050 | for_in_statement | for-in 数组索引枚举 | pass | P1 | `statements/xts/pass/statement_forin_array_index_pass.ets` | yes | yes | statements / types | planned | — | — | 枚举索引 |
