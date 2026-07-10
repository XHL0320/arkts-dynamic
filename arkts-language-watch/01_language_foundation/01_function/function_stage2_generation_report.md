# Function Stage 2 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理叶子目录数量 | 3 |
| 新增 pass 用例数量 | 17 |
| 新增 fail_compile 用例数量 | 0 |
| 新增 fail_runtime 用例数量 | 1 |
| 新增 boundary 用例数量 | 3 |
| 新增 regression 用例数量 | 3 |
| 新增 .ets 文件总数 | 24 |
| 更新 coverage_matrix 文件数量 | 4 |
| 更新 candidate index 文件数量 | 1 |

## Generated Cases

| 文件 | 子目录 | 用例类型 | 测试点 | 是否适合 ohosTest | 是否需要 test262 对照 |
|---|---|---|---|---|---|
| `function_scope/xts/pass/function_scope_local_variable_pass.ets` | function_scope | pass | 函数内部局部变量 | 是 | 后续统一处理 |
| `function_scope/xts/pass/function_scope_nested_function_pass.ets` | function_scope | pass | 嵌套函数访问外层变量 | 是 | 后续统一处理 |
| `function_scope/xts/pass/function_scope_variable_shadowing_pass.ets` | function_scope | pass | 变量遮蔽 | 是 | 后续统一处理 |
| `function_scope/xts/pass/function_scope_block_inside_function_pass.ets` | function_scope | pass | 函数内 block 作用域 | 是 | 后续统一处理 |
| `function_scope/xts/pass/function_scope_parameter_shadowing_pass.ets` | function_scope | pass | 参数与 block 变量遮蔽 | 是 | 后续统一处理 |
| `function_scope/xts/fail_runtime/function_scope_outer_inaccessible_fail_runtime.ets` | function_scope | fail_runtime | 外部访问函数内部变量异常 | 是 | 后续统一处理 |
| `function_scope/xts/boundary/function_scope_block_function_boundary.ets` | function_scope | boundary | 块级函数声明边界 | 否 | 后续统一处理 |
| `function_scope/xts/regression/function_scope_nested_resolution_regression.ets` | function_scope | regression | 嵌套作用域解析回归 | 是 | 后续统一处理 |
| `closure/xts/pass/closure_capture_outer_variable_pass.ets` | closure | pass | 闭包捕获外层变量 | 是 | 后续统一处理 |
| `closure/xts/pass/closure_update_outer_variable_pass.ets` | closure | pass | 闭包修改外层变量 | 是 | 后续统一处理 |
| `closure/xts/pass/closure_return_inner_function_pass.ets` | closure | pass | 返回内部函数 | 是 | 后续统一处理 |
| `closure/xts/pass/closure_multiple_instances_pass.ets` | closure | pass | 多个闭包实例隔离 | 是 | 后续统一处理 |
| `closure/xts/pass/closure_nested_closure_pass.ets` | closure | pass | 嵌套闭包 | 是 | 后续统一处理 |
| `closure/xts/pass/closure_loop_capture_let_pass.ets` | closure | pass | 循环中 let 捕获 | 是 | 后续统一处理 |
| `closure/xts/boundary/closure_loop_capture_var_boundary.ets` | closure | boundary | 循环中 var 捕获边界 | 否 | 后续统一处理 |
| `closure/xts/regression/closure_lifetime_regression.ets` | closure | regression | 闭包生命周期回归 | 是 | 后续统一处理 |
| `arrow_function_lambda/xts/pass/arrow_function_expression_body_pass.ets` | arrow_function_lambda | pass | 箭头函数表达式体 | 是 | 后续统一处理 |
| `arrow_function_lambda/xts/pass/arrow_function_block_body_pass.ets` | arrow_function_lambda | pass | 箭头函数块体 | 是 | 后续统一处理 |
| `arrow_function_lambda/xts/pass/arrow_function_single_param_pass.ets` | arrow_function_lambda | pass | 单参数箭头函数 | 是 | 后续统一处理 |
| `arrow_function_lambda/xts/pass/arrow_function_multiple_params_pass.ets` | arrow_function_lambda | pass | 多参数箭头函数 | 是 | 后续统一处理 |
| `arrow_function_lambda/xts/pass/arrow_function_as_callback_pass.ets` | arrow_function_lambda | pass | 箭头函数作为 callback | 是 | 后续统一处理 |
| `arrow_function_lambda/xts/pass/arrow_function_lexical_this_pass.ets` | arrow_function_lambda | pass | 箭头函数词法 this | 是 | 后续统一处理 |
| `arrow_function_lambda/xts/boundary/arrow_function_no_arguments_boundary.ets` | arrow_function_lambda | boundary | 箭头函数无自身 arguments | 否 | 后续统一处理 |
| `arrow_function_lambda/xts/regression/arrow_function_nested_regression.ets` | arrow_function_lambda | regression | 嵌套箭头函数回归 | 是 | 后续统一处理 |

## Boundary Cases

| 文件 | 测试点 | 放入 boundary 原因 | 后续确认方式 |
|---|---|---|---|
| `function_scope/xts/boundary/function_scope_block_function_boundary.ets` | 块级函数声明边界 | block-level function 语义可能受严格模式和 ArkTS 动态实现影响 | 后续统一做 ECMA/test262 对照和编译运行验证 |
| `closure/xts/boundary/closure_loop_capture_var_boundary.ets` | 循环中 var 捕获 | var loop capture 在动态实现中的兼容行为需确认 | 后续运行验证并对照 ECMA |
| `arrow_function_lambda/xts/boundary/arrow_function_no_arguments_boundary.ets` | 箭头函数无自身 arguments | `arguments` 解析可能涉及 ArkTS 动态实现差异 | 后续运行验证并对照 ECMA |

## Updated Documents

| 文件 | 更新内容 |
|---|---|
| `function_scope/coverage_matrix.md` | 同步 Stage 2 function_scope 用例真实路径与状态 |
| `closure/coverage_matrix.md` | 同步 Stage 2 closure 用例真实路径与状态 |
| `arrow_function_lambda/coverage_matrix.md` | 同步 Stage 2 arrow_function_lambda 用例真实路径与状态 |
| `function_coverage_matrix.md` | 同步 Function 总覆盖矩阵 Stage 2 状态，并追加新增细分覆盖点 |
| `function_first_batch_candidate_index.md` | 将 Stage 2 已生成候选标记为 created，并追加新增 Stage 2 候选 |
| `function_stage2_generation_report.md` | 新增本阶段生成报告 |

## Ownership Notes

| 测试点 | 归属判断 |
|---|---|
| let/const TDZ | 已归 `00_the_basics/declarations`，本阶段不重复 |
| duplicate declaration | 已归 `00_the_basics/declarations`，本阶段不重复 |
| function declaration hoisting | 已归 `00_the_basics/declarations`，本阶段不重复 |
| function local scope / closure / arrow function | 归 `01_function`，本阶段生成 |

## Notes

- 本阶段生成 Function 作用域、闭包、箭头函数 P0/P1 XTS 候选。
- 本阶段未进行 ECMA / test262 规范对齐，待首轮用例生成完成后统一比对。
- 本阶段未进行 DevEco / hvigor 实际编译验证。
- 本阶段未提交 commit，未 push 远程仓库。
