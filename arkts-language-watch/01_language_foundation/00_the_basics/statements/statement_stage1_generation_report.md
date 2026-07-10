# Statement Stage 1 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理目录数量 | 1 |
| 新增 pass 用例数量 | 25 |
| 新增 fail_compile 用例数量 | 3 |
| 新增 fail_runtime 用例数量 | 1 |
| 新增 boundary 用例数量 | 3 |
| 新增 regression 用例数量 | 1 |
| 新增 .ets 文件总数 | 33 |
| 更新 coverage_matrix 文件数量 | 1 |
| 更新 candidate index 文件数量 | 1 |

## Generated Cases

| 文件 | 语句方向 | 用例类型 | 测试点 | 是否适合 ohosTest | 是否需要 test262 对照 |
|---|---|---|---|---|---|
| `xts/pass/statement_block_basic_pass.ets` | block_statement | pass | block 块级作用域 let 不泄露 | yes | yes |
| `xts/pass/statement_empty_basic_pass.ets` | empty_statement | pass | 空语句不影响执行 | yes | yes |
| `xts/pass/statement_expression_basic_pass.ets` | expression_statement | pass | 表达式语句执行并丢弃 | yes | yes |
| `xts/pass/statement_if_true_branch_pass.ets` | if_statement | pass | if true 分支执行 | yes | yes |
| `xts/pass/statement_if_false_branch_pass.ets` | if_statement | pass | if false 分支跳过 | yes | yes |
| `xts/pass/statement_if_else_chain_pass.ets` | if_statement | pass | if else if 链匹配 | yes | yes |
| `xts/pass/statement_switch_case_match_pass.ets` | switch_statement | pass | switch case 匹配 + 严格相等 | yes | yes |
| `xts/pass/statement_switch_default_pass.ets` | switch_statement | pass | switch default 执行 | yes | yes |
| `xts/pass/statement_switch_fall_through_pass.ets` | switch_statement | pass | switch fall-through 无 break | yes | yes |
| `xts/pass/statement_switch_break_pass.ets` | switch_statement | pass | switch with break | yes | yes |
| `xts/pass/statement_while_basic_pass.ets` | while_statement | pass | while 循环正常执行 | yes | yes |
| `xts/pass/statement_while_break_pass.ets` | while_statement | pass | while break 退出 | yes | yes |
| `xts/pass/statement_do_while_execute_once_pass.ets` | do_while_statement | pass | do-while 至少执行一次 | yes | yes |
| `xts/pass/statement_for_basic_pass.ets` | for_statement | pass | for 基础循环 | yes | yes |
| `xts/pass/statement_for_execution_order_pass.ets` | for_statement | pass | for init/cond/update 执行顺序 | yes | yes |
| `xts/pass/statement_for_break_pass.ets` | for_statement | pass | for break 退出 | yes | yes |
| `xts/pass/statement_for_continue_pass.ets` | for_statement | pass | for continue 跳过 | yes | yes |
| `xts/pass/statement_for_in_object_property_pass.ets` | for_in_statement | pass | for-in 枚举对象属性 | yes | yes |
| `xts/pass/statement_for_of_array_pass.ets` | for_of_statement | pass | for-of 迭代数组 | yes | yes |
| `xts/pass/statement_break_label_pass.ets` | labelled_statement | pass | break label 跳出外层循环 | yes | yes |
| `xts/pass/statement_continue_label_pass.ets` | labelled_statement | pass | continue label 跳到外层循环 | yes | yes |
| `xts/pass/statement_throw_catch_pass.ets` | throw_statement | pass | throw 被 catch 捕获 | yes | yes |
| `xts/pass/statement_try_finally_executes_pass.ets` | try_catch_finally | pass | try finally 必定执行 | yes | yes |
| `xts/pass/statement_try_catch_finally_order_pass.ets` | try_catch_finally | pass | try/catch/finally 执行顺序 | yes | yes |
| `xts/pass/statement_catch_binding_scope_pass.ets` | try_catch_finally | pass | catch binding 块级作用域 | yes | yes |
| `xts/fail_compile/statement_break_outside_loop_fail_compile.ets` | break_statement | fail_compile | break 在循环外 SyntaxError | no | yes |
| `xts/fail_compile/statement_continue_outside_loop_fail_compile.ets` | continue_statement | fail_compile | continue 在循环外 SyntaxError | no | yes |
| `xts/fail_compile/statement_return_outside_function_fail_compile.ets` | return_statement_boundary | fail_compile | return 在函数外 SyntaxError | no | yes |
| `xts/fail_runtime/statement_for_of_non_iterable_fail_runtime.ets` | for_of_statement | fail_runtime | for-of 非 iterable TypeError | yes | yes |
| `xts/boundary/statement_invalid_label_boundary.ets` | labelled_statement | boundary | 非法 label 边界 | no | yes |
| `xts/boundary/statement_finally_override_control_flow_boundary.ets` | try_catch_finally | boundary | finally 覆盖控制流边界 | yes | yes |
| `xts/boundary/statement_debugger_boundary.ets` | debugger_statement | boundary | debugger 语句运行时行为 | yes | yes |
| `xts/regression/statement_loop_control_flow_regression.ets` | for_statement | regression | 嵌套循环 break 只退出内层 | yes | yes |

## Boundary Cases

| 文件 | 测试点 | 放入 boundary 原因 | 后续确认方式 |
|---|---|---|---|
| `xts/boundary/statement_invalid_label_boundary.ets` | 非法 label 引用 | 动态 ArkTS label 支持和错误检测待确认 | compiler / runtime smoke |
| `xts/boundary/statement_finally_override_control_flow_boundary.ets` | finally 覆盖控制流 | finally 中 return/throw 覆盖 try 结果行为待确认 | runtime smoke |
| `xts/boundary/statement_debugger_boundary.ets` | debugger 语句运行时行为 | 非调试环境行为待确认 | runtime smoke |

## Updated Documents

| 文件 | 更新内容 |
|---|---|
| `coverage_matrix.md` | 追加 Stage 1 Update Summary，记录 33 个已生成文件与 coverage ID 映射 |
| `statement_first_batch_candidate_index.md` | 将 33 个 candidate 状态从 planned 改为 created，新增阶段和实际路径列，17 个保持 planned |

## Ownership Notes

| 测试点 | 归属判断 |
|---|---|
| return outside function | 归 `00_the_basics/statements` |
| function return value | 已归 `01_function/return_type`，本阶段不重复 |
| for init declaration binding | 归 `00_the_basics/declarations`，本阶段不展开 |
| for condition/update expression | 归 `00_the_basics/operators`，本阶段不展开 |
| loop control flow | 归 `00_the_basics/statements` |
| try/catch/finally | 归 `00_the_basics/statements` |
| for-of iterable 协议 | 归 `00_the_basics/types`，statements 只做循环控制 |
| catch binding 声明规则 | 归 `00_the_basics/declarations`，statements 只做语句行为 |

## Notes

- 本阶段生成 Statements P0/P1 XTS 候选。
- 本阶段未进行 ECMA / test262 规范对齐，待 `00_the_basics` 首轮完成后统一比对。
- 本阶段未进行 DevEco / hvigor 实际编译验证。
- 本阶段未修改 declarations / types / operators / function。
- 本阶段未提交 commit，未 push 远程仓库。
