# Statement Coverage Matrix

| ID | 语句方向 | 测试点 | 用例类型 | 优先级 | 是否已有用例 | 建议路径 | 关联章节 | 风险点 | 备注 |
|---|---|---|---|---|---|---|---|---|---|
| STMT-BLOCK-001 | block_statement | block 块级作用域 let 不泄露 | pass | P0 | no | `statements/xts/pass/statement_block_scope_pass` | statements / declarations | 低 | ES 核心行为 |
| STMT-BLOCK-002 | block_statement | block 内 let/const 块级绑定 | pass | P0 | no | `statements/xts/pass/statement_block_let_const_pass` | statements / declarations | 低 | 块级作用域 |
| STMT-BLOCK-003 | block_statement | block 内 var 仍为函数作用域 | pass | P1 | no | `statements/xts/pass/statement_block_var_function_scope_pass` | statements / declarations | 低 | var 提升 |
| STMT-BLOCK-004 | block_statement | 嵌套 block 作用域遮蔽 | pass | P1 | no | `statements/xts/pass/statement_block_nested_shadow_pass` | statements / declarations | 低 | 遮蔽行为 |
| STMT-BLOCK-005 | block_statement | block 空块正常执行 | pass | P2 | no | `statements/xts/pass/statement_block_empty_pass` | statements | 低 | 空块 |
| STMT-BLOCK-006 | block_statement | block 返回 normal completion | pass | P2 | no | `statements/xts/pass/statement_block_normal_completion_pass` | statements | 低 | completion 语义 |
| STMT-EMPTY-001 | empty_statement | 空语句不影响执行 | pass | P0 | no | `statements/xts/pass/statement_empty_no_effect_pass` | statements | 低 | ES 核心行为 |
| STMT-EMPTY-002 | empty_statement | 空语句在循环中 | pass | P1 | no | `statements/xts/pass/statement_empty_in_loop_pass` | statements | 低 | `for(;;){}` |
| STMT-EMPTY-003 | empty_statement | 多个连续空语句 | pass | P2 | no | `statements/xts/pass/statement_empty_multiple_pass` | statements | 低 | `;;;` |
| STMT-EMPTY-004 | empty_statement | 空语句作为 if body | pass | P2 | no | `statements/xts/pass/statement_empty_if_body_pass` | statements | 低 | `if(x);` |
| STMT-EMPTY-005 | empty_statement | 空语句返回 normal completion | pass | P2 | no | `statements/xts/pass/statement_empty_completion_pass` | statements | 低 | completion |
| STMT-EXPR-001 | expression_statement | 表达式语句执行并丢弃结果 | pass | P0 | no | `statements/xts/pass/statement_expression_discard_pass` | statements / operators | 低 | ES 核心行为 |
| STMT-EXPR-002 | expression_statement | 赋值表达式语句 | pass | P0 | no | `statements/xts/pass/statement_expression_assignment_pass` | statements / operators | 低 | `x = 1;` |
| STMT-EXPR-003 | expression_statement | 函数调用表达式语句 | pass | P0 | no | `statements/xts/pass/statement_expression_call_pass` | statements / function | 低 | `foo();` |
| STMT-EXPR-004 | expression_statement | 自增自减表达式语句 | pass | P1 | no | `statements/xts/pass/statement_expression_increment_pass` | statements / operators | 低 | `x++;` |
| STMT-EXPR-005 | expression_statement | 表达式语句不能以 function/class 开头 | boundary | P1 | no | `statements/xts/boundary/statement_expression_ambiguous_boundary` | statements | 中 | 歧义边界 |
| STMT-IF-001 | if_statement | if true 分支执行 | pass | P0 | no | `statements/xts/pass/statement_if_true_branch_pass` | statements / operators | 低 | ES 核心行为 |
| STMT-IF-002 | if_statement | if false 分支跳过 | pass | P0 | no | `statements/xts/pass/statement_if_false_branch_pass` | statements / operators | 低 | 条件为 false |
| STMT-IF-003 | if_statement | if else if 链匹配 | pass | P0 | no | `statements/xts/pass/statement_if_else_chain_pass` | statements / operators | 低 | 链式匹配 |
| STMT-IF-004 | if_statement | if 条件 ToBoolean 转换 | pass | P1 | no | `statements/xts/pass/statement_if_toboolean_pass` | statements / operators / types | 低 | truthy/falsy |
| STMT-IF-005 | if_statement | if 无 else 且条件 false | pass | P1 | no | `statements/xts/pass/statement_if_no_else_false_pass` | statements / operators | 低 | 不执行 |
| STMT-IF-006 | if_statement | if 只执行匹配分支 | pass | P1 | no | `statements/xts/pass/statement_if_single_branch_pass` | statements / operators | 低 | 分支选择 |
| STMT-SWITCH-001 | switch_statement | switch case 匹配执行 | pass | P0 | no | `statements/xts/pass/statement_switch_case_match_pass` | statements / operators | 低 | ES 核心行为 |
| STMT-SWITCH-002 | switch_statement | switch default 执行 | pass | P0 | no | `statements/xts/pass/statement_switch_default_pass` | statements / operators | 低 | 无匹配 |
| STMT-SWITCH-003 | switch_statement | switch fall-through 无 break | pass | P0 | no | `statements/xts/pass/statement_switch_fall_through_pass` | statements / operators | 中 | fall-through 风险 |
| STMT-SWITCH-004 | switch_statement | switch 严格相等比较 | pass | P0 | no | `statements/xts/pass/statement_switch_strict_equal_pass` | statements / operators | 低 | === 比较 |
| STMT-SWITCH-005 | switch_statement | switch 无匹配无 default | pass | P1 | no | `statements/xts/pass/statement_switch_no_match_pass` | statements / operators | 低 | 跳过 |
| STMT-SWITCH-006 | switch_statement | switch 表达式只求值一次 | pass | P1 | no | `statements/xts/pass/statement_switch_eval_once_pass` | statements / operators | 低 | 一次求值 |
| STMT-SWITCH-007 | switch_statement | switch default 在中间位置 | boundary | P2 | no | `statements/xts/boundary/statement_switch_default_position_boundary` | statements | 中 | 位置灵活 |
| STMT-WHILE-001 | while_statement | while 循环正常执行 | pass | P0 | no | `statements/xts/pass/statement_while_basic_pass` | statements / operators | 低 | ES 核心行为 |
| STMT-WHILE-002 | while_statement | while 条件 false 零次执行 | pass | P0 | no | `statements/xts/pass/statement_while_zero_iteration_pass` | statements / operators | 低 | 不执行 |
| STMT-WHILE-003 | while_statement | while break 退出 | pass | P0 | no | `statements/xts/pass/statement_while_break_pass` | statements | 低 | break |
| STMT-WHILE-004 | while_statement | while continue 跳过 | pass | P1 | no | `statements/xts/pass/statement_while_continue_pass` | statements | 低 | continue |
| STMT-WHILE-005 | while_statement | while 无限循环 | boundary | P2 | no | `statements/xts/boundary/statement_while_infinite_boundary` | statements | 中 | `while(true)` |
| STMT-WHILE-006 | while_statement | while 条件 ToBoolean 转换 | pass | P1 | no | `statements/xts/pass/statement_while_toboolean_pass` | statements / operators / types | 低 | truthy/falsy |
| STMT-DOWHILE-001 | do_while_statement | do-while 至少执行一次 | pass | P0 | no | `statements/xts/pass/statement_dowhile_execute_once_pass` | statements / operators | 低 | ES 核心行为 |
| STMT-DOWHILE-002 | do_while_statement | do-while 条件 false 也执行一次 | pass | P0 | no | `statements/xts/pass/statement_dowhile_false_condition_pass` | statements / operators | 低 | 至少一次 |
| STMT-DOWHILE-003 | do_while_statement | do-while break 退出 | pass | P1 | no | `statements/xts/pass/statement_dowhile_break_pass` | statements | 低 | break |
| STMT-DOWHILE-004 | do_while_statement | do-while continue | pass | P1 | no | `statements/xts/pass/statement_dowhile_continue_pass` | statements | 低 | continue |
| STMT-DOWHILE-005 | do_while_statement | do-while 多次循环 | pass | P2 | no | `statements/xts/pass/statement_dowhile_multiple_pass` | statements / operators | 低 | 多次执行 |
| STMT-FOR-001 | for_statement | for init/cond/update 执行顺序 | pass | P0 | no | `statements/xts/pass/statement_for_execution_order_pass` | statements / operators | 低 | ES 核心行为 |
| STMT-FOR-002 | for_statement | for 基础循环 | pass | P0 | no | `statements/xts/pass/statement_for_basic_pass` | statements / operators | 低 | 基础循环 |
| STMT-FOR-003 | for_statement | for break 退出 | pass | P0 | no | `statements/xts/pass/statement_for_break_pass` | statements | 低 | break |
| STMT-FOR-004 | for_statement | for continue 跳过 | pass | P0 | no | `statements/xts/pass/statement_for_continue_pass` | statements | 低 | continue |
| STMT-FOR-005 | for_statement | for init 中 let 块级绑定 | pass | P1 | no | `statements/xts/pass/statement_for_let_init_pass` | statements / declarations | 低 | 块级绑定 |
| STMT-FOR-006 | for_statement | for 省略 cond 为 true | pass | P1 | no | `statements/xts/pass/statement_for_omit_cond_pass` | statements / operators | 低 | `for(;;)` |
| STMT-FOR-007 | for_statement | for init 中 var 函数作用域 | pass | P2 | no | `statements/xts/pass/statement_for_var_init_pass` | statements / declarations | 低 | var 提升 |
| STMT-FORIN-001 | for_in_statement | for-in 枚举对象自身属性 | pass | P0 | no | `statements/xts/pass/statement_forin_own_property_pass` | statements / types | 低 | ES 核心行为 |
| STMT-FORIN-002 | for_in_statement | for-in 枚举继承属性 | pass | P1 | no | `statements/xts/pass/statement_forin_inherited_pass` | statements / types | 中 | 原型链枚举 |
| STMT-FORIN-003 | for_in_statement | for-in 枚举顺序 | boundary | P0 | no | `statements/xts/boundary/statement_forin_order_boundary` | statements / types | 高 | 顺序待确认 |
| STMT-FORIN-004 | for_in_statement | for-in 数组索引枚举 | pass | P1 | no | `statements/xts/pass/statement_forin_array_index_pass` | statements / types | 低 | 枚举索引 |
| STMT-FORIN-005 | for_in_statement | for-in 删除属性后不枚举 | boundary | P2 | no | `statements/xts/boundary/statement_forin_deleted_boundary` | statements / types | 中 | 删除行为 |
| STMT-FORIN-006 | for_in_statement | for-in symbol 属性不枚举 | pass | P2 | no | `statements/xts/pass/statement_forin_symbol_skip_pass` | statements / types | 低 | symbol 不枚举 |
| STMT-FOROF-001 | for_of_statement | for-of 迭代数组 | pass | P0 | no | `statements/xts/pass/statement_forof_array_pass` | statements / types | 低 | ES 核心行为 |
| STMT-FOROF-002 | for_of_statement | for-of 迭代字符串 | pass | P1 | no | `statements/xts/pass/statement_forof_string_pass` | statements / types | 低 | 字符迭代 |
| STMT-FOROF-003 | for_of_statement | for-of 非 iterable TypeError | fail_runtime | P0 | no | `statements/xts/fail_runtime/statement_forof_not_iterable_fail_runtime` | statements / types | 高 | TypeError |
| STMT-FOROF-004 | for_of_statement | for-of Symbol.iterator 支持 | boundary | P0 | no | `statements/xts/boundary/statement_forof_iterator_boundary` | statements / types | 高 | 迭代协议 |
| STMT-FOROF-005 | for_of_statement | for-of break 退出 | pass | P1 | no | `statements/xts/pass/statement_forof_break_pass` | statements | 低 | break |
| STMT-FOROF-006 | for_of_statement | for-of 自定义 iterable | boundary | P1 | no | `statements/xts/boundary/statement_forof_custom_iterable_boundary` | statements / types | 中 | 自定义迭代 |
| STMT-BREAK-001 | break_statement | break 跳出循环 | pass | P0 | no | `statements/xts/pass/statement_break_loop_pass` | statements | 低 | ES 核心行为 |
| STMT-BREAK-002 | break_statement | break 跳出 switch | pass | P0 | no | `statements/xts/pass/statement_break_switch_pass` | statements | 低 | switch break |
| STMT-BREAK-003 | break_statement | break label 跳出外层循环 | pass | P0 | no | `statements/xts/pass/statement_break_label_pass` | statements | 低 | 带标签 |
| STMT-BREAK-004 | break_statement | break 在循环外 SyntaxError | fail_compile | P0 | no | `statements/xts/fail_compile/statement_break_outside_loop_fail_compile` | statements | 中 | 语法错误 |
| STMT-BREAK-005 | break_statement | break label 不存在 SyntaxError | fail_compile | P1 | no | `statements/xts/fail_compile/statement_break_label_not_found_fail_compile` | statements | 中 | 语法错误 |
| STMT-BREAK-006 | break_statement | break 在嵌套循环中只跳出内层 | pass | P1 | no | `statements/xts/pass/statement_break_inner_only_pass` | statements | 低 | 只跳出内层 |
| STMT-CONTINUE-001 | continue_statement | continue 跳过当前迭代 | pass | P0 | no | `statements/xts/pass/statement_continue_skip_pass` | statements | 低 | ES 核心行为 |
| STMT-CONTINUE-002 | continue_statement | continue label 跳到外层循环 | pass | P0 | no | `statements/xts/pass/statement_continue_label_pass` | statements | 低 | 带标签 |
| STMT-CONTINUE-003 | continue_statement | continue 在循环外 SyntaxError | fail_compile | P0 | no | `statements/xts/fail_compile/statement_continue_outside_loop_fail_compile` | statements | 中 | 语法错误 |
| STMT-CONTINUE-004 | continue_statement | continue 在 switch 中 | boundary | P1 | no | `statements/xts/boundary/statement_continue_switch_boundary` | statements | 中 | switch 中 continue |
| STMT-CONTINUE-005 | continue_statement | continue label 指向非循环 SyntaxError | fail_compile | P1 | no | `statements/xts/fail_compile/statement_continue_label_non_loop_fail_compile` | statements | 中 | 语法错误 |
| STMT-RETURN-001 | return_statement_boundary | return 在函数内正常 | pass | P0 | no | `../01_function/return_type/xts/pass/` | 01_function | 低 | 归 function |
| STMT-RETURN-002 | return_statement_boundary | return 在函数外 SyntaxError | fail_compile | P0 | no | `statements/xts/fail_compile/statement_return_outside_function_fail_compile` | statements | 中 | 语法错误 |
| STMT-RETURN-003 | return_statement_boundary | return 无值返回 undefined | pass | P1 | no | `../01_function/return_type/xts/pass/` | 01_function | 低 | 归 function |
| STMT-RETURN-004 | return_statement_boundary | return 在 finally 中覆盖 try return | boundary | P0 | no | `statements/xts/boundary/statement_return_in_finally_boundary` | statements / function | 高 | 控制流覆盖 |
| STMT-RETURN-005 | return_statement_boundary | return 在顶层模块 SyntaxError | fail_compile | P1 | no | `statements/xts/fail_compile/statement_return_top_level_fail_compile` | statements / module | 中 | 语法错误 |
| STMT-THROW-001 | throw_statement | throw 抛出异常 | pass | P0 | no | `statements/xts/pass/statement_throw_basic_pass` | statements | 低 | ES 核心行为 |
| STMT-THROW-002 | throw_statement | throw Error 对象 | pass | P0 | no | `statements/xts/pass/statement_throw_error_pass` | statements | 低 | Error 对象 |
| STMT-THROW-003 | throw_statement | throw null / undefined | pass | P1 | no | `statements/xts/pass/statement_throw_null_pass` | statements | 中 | 非标准异常 |
| STMT-THROW-004 | throw_statement | throw 未捕获导致程序终止 | fail_runtime | P0 | no | `statements/xts/fail_runtime/statement_throw_uncaught_fail_runtime` | statements | 高 | 程序终止 |
| STMT-THROW-005 | throw_statement | throw 在 try 块内被 catch | pass | P0 | no | `statements/xts/pass/statement_throw_in_try_pass` | statements | 低 | 被 catch |
| STMT-TRY-001 | try_catch_finally | try catch 捕获异常 | pass | P0 | no | `statements/xts/pass/statement_try_catch_pass` | statements | 低 | ES 核心行为 |
| STMT-TRY-002 | try_catch_finally | try finally 执行 | pass | P0 | no | `statements/xts/pass/statement_try_finally_pass` | statements | 低 | finally 执行 |
| STMT-TRY-003 | try_catch_finally | try catch finally 执行顺序 | pass | P0 | no | `statements/xts/pass/statement_try_catch_finally_order_pass` | statements | 低 | 执行顺序 |
| STMT-TRY-004 | try_catch_finally | finally 中 return 覆盖 try | boundary | P0 | no | `statements/xts/boundary/statement_finally_return_override_boundary` | statements / function | 高 | 控制流覆盖 |
| STMT-TRY-005 | try_catch_finally | finally 中 throw 覆盖 try | fail_runtime | P0 | no | `statements/xts/fail_runtime/statement_finally_throw_fail_runtime` | statements | 高 | 新异常传播 |
| STMT-TRY-006 | try_catch_finally | catch binding 块级作用域 | pass | P0 | no | `statements/xts/pass/statement_catch_binding_scope_pass` | statements / declarations | 中 | 块级绑定 |
| STMT-TRY-007 | try_catch_finally | catch 不捕获非 try 块异常 | pass | P1 | no | `statements/xts/pass/statement_catch_scope_pass` | statements | 低 | catch 范围 |
| STMT-TRY-008 | try_catch_finally | finally 中 break 覆盖 | boundary | P1 | no | `statements/xts/boundary/statement_finally_break_boundary` | statements | 中 | 控制流覆盖 |
| STMT-LABEL-001 | labelled_statement | label 正常标记语句 | pass | P0 | no | `statements/xts/pass/statement_label_basic_pass` | statements | 低 | ES 核心行为 |
| STMT-LABEL-002 | labelled_statement | break label 跳出 | pass | P0 | no | `statements/xts/pass/statement_break_label_pass` | statements | 低 | break label |
| STMT-LABEL-003 | labelled_statement | continue label 跳转 | pass | P0 | no | `statements/xts/pass/statement_continue_label_pass` | statements | 低 | continue label |
| STMT-LABEL-004 | labelled_statement | label 重复声明 SyntaxError | fail_compile | P1 | no | `statements/xts/fail_compile/statement_label_duplicate_fail_compile` | statements | 中 | 语法错误 |
| STMT-LABEL-005 | labelled_statement | label 不影响正常执行 | pass | P1 | no | `statements/xts/pass/statement_label_no_effect_pass` | statements | 低 | 标签透明 |
| STMT-DEBUG-001 | debugger_statement | debugger 语句 no-op | pass | P0 | no | `statements/xts/pass/statement_debugger_noop_pass` | statements | 低 | ES 核心行为 |
| STMT-DEBUG-002 | debugger_statement | debugger 不影响控制流 | pass | P0 | no | `statements/xts/pass/statement_debugger_no_control_flow_pass` | statements | 低 | normal completion |
| STMT-DEBUG-003 | debugger_statement | debugger 在循环中 | pass | P1 | no | `statements/xts/pass/statement_debugger_in_loop_pass` | statements | 低 | 循环中 |
| STMT-DEBUG-004 | debugger_statement | debugger 运行时行为 | boundary | P1 | no | `statements/xts/boundary/statement_debugger_runtime_boundary` | statements | 中 | 非调试环境 |
| STMT-DEBUG-005 | debugger_statement | debugger 在函数中 | pass | P2 | no | `statements/xts/pass/statement_debugger_in_function_pass` | statements / function | 低 | 函数中 |
| STMT-TOP-001 | top_level_statement_boundary | 顶层 return SyntaxError | fail_compile | P0 | no | `statements/xts/fail_compile/statement_top_return_fail_compile` | statements / module | 中 | 语法错误 |
| STMT-TOP-002 | top_level_statement_boundary | 顶层 break SyntaxError | fail_compile | P0 | no | `statements/xts/fail_compile/statement_top_break_fail_compile` | statements / module | 中 | 语法错误 |
| STMT-TOP-003 | top_level_statement_boundary | 顶层 continue SyntaxError | fail_compile | P0 | no | `statements/xts/fail_compile/statement_top_continue_fail_compile` | statements / module | 中 | 语法错误 |
| STMT-TOP-004 | top_level_statement_boundary | 模块顶层语句执行顺序 | integration | P1 | no | `../06_module/xts/integration/` | statements / module | 中 | 模块顶层 |
| STMT-TOP-005 | top_level_statement_boundary | 严格模式块级函数声明 | boundary | P1 | no | `statements/xts/boundary/statement_strict_block_function_boundary` | statements / declarations | 高 | 模式差异 |

## Stage 1 Update Summary

以下 33 个 `.ets` 文件在 Statements Stage 1 中生成，对应 coverage matrix 中多个测试点标记为"是"：

| 生成文件 | 对应 Coverage IDs | 用例类型 |
|---|---|---|
| `xts/pass/statement_block_basic_pass.ets` | STMT-BLOCK-001, STMT-BLOCK-002 | pass |
| `xts/pass/statement_empty_basic_pass.ets` | STMT-EMPTY-001, STMT-EMPTY-003 | pass |
| `xts/pass/statement_expression_basic_pass.ets` | STMT-EXPR-001, STMT-EXPR-002, STMT-EXPR-003 | pass |
| `xts/pass/statement_if_true_branch_pass.ets` | STMT-IF-001 | pass |
| `xts/pass/statement_if_false_branch_pass.ets` | STMT-IF-002 | pass |
| `xts/pass/statement_if_else_chain_pass.ets` | STMT-IF-003 | pass |
| `xts/pass/statement_switch_case_match_pass.ets` | STMT-SWITCH-001, STMT-SWITCH-004 | pass |
| `xts/pass/statement_switch_default_pass.ets` | STMT-SWITCH-002, STMT-SWITCH-005 | pass |
| `xts/pass/statement_switch_fall_through_pass.ets` | STMT-SWITCH-003 | pass |
| `xts/pass/statement_switch_break_pass.ets` | STMT-SWITCH-001 | pass |
| `xts/pass/statement_while_basic_pass.ets` | STMT-WHILE-001, STMT-WHILE-002 | pass |
| `xts/pass/statement_while_break_pass.ets` | STMT-WHILE-003, STMT-BREAK-001 | pass |
| `xts/pass/statement_do_while_execute_once_pass.ets` | STMT-DOWHILE-001, STMT-DOWHILE-002 | pass |
| `xts/pass/statement_for_basic_pass.ets` | STMT-FOR-002 | pass |
| `xts/pass/statement_for_execution_order_pass.ets` | STMT-FOR-001 | pass |
| `xts/pass/statement_for_break_pass.ets` | STMT-FOR-003 | pass |
| `xts/pass/statement_for_continue_pass.ets` | STMT-FOR-004, STMT-CONTINUE-001 | pass |
| `xts/pass/statement_for_in_object_property_pass.ets` | STMT-FORIN-001, STMT-FORIN-004 | pass |
| `xts/pass/statement_for_of_array_pass.ets` | STMT-FOROF-001 | pass |
| `xts/pass/statement_break_label_pass.ets` | STMT-BREAK-003, STMT-LABEL-001, STMT-LABEL-002 | pass |
| `xts/pass/statement_continue_label_pass.ets` | STMT-CONTINUE-002, STMT-LABEL-003 | pass |
| `xts/pass/statement_throw_catch_pass.ets` | STMT-THROW-001, STMT-THROW-005, STMT-TRY-001 | pass |
| `xts/pass/statement_try_finally_executes_pass.ets` | STMT-TRY-002 | pass |
| `xts/pass/statement_try_catch_finally_order_pass.ets` | STMT-TRY-003 | pass |
| `xts/pass/statement_catch_binding_scope_pass.ets` | STMT-TRY-006 | pass |
| `xts/fail_compile/statement_break_outside_loop_fail_compile.ets` | STMT-BREAK-004 | fail_compile |
| `xts/fail_compile/statement_continue_outside_loop_fail_compile.ets` | STMT-CONTINUE-003 | fail_compile |
| `xts/fail_compile/statement_return_outside_function_fail_compile.ets` | STMT-RETURN-002 | fail_compile |
| `xts/fail_runtime/statement_for_of_non_iterable_fail_runtime.ets` | STMT-FOROF-003 | fail_runtime |
| `xts/boundary/statement_invalid_label_boundary.ets` | STMT-LABEL-004 | boundary |
| `xts/boundary/statement_finally_override_control_flow_boundary.ets` | STMT-TRY-004 | boundary |
| `xts/boundary/statement_debugger_boundary.ets` | STMT-DEBUG-001, STMT-DEBUG-002 | boundary |
| `xts/regression/statement_loop_control_flow_regression.ets` | STMT-BREAK-006 | regression |
