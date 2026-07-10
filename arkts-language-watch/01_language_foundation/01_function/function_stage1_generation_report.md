# Function Stage 1 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理叶子目录数量 | 4 |
| 新增 pass 用例数量 | 19 |
| 新增 fail_compile 用例数量 | 2 |
| 新增 fail_runtime 用例数量 | 1 |
| 新增 boundary 用例数量 | 0 |
| 新增 regression 用例数量 | 2 |
| 新增 .ets 文件总数 | 24 |
| 更新 coverage_matrix 文件数量 | 5 |
| 更新 candidate index 文件数量 | 1 |

## Generated Cases

| 文件 | 子目录 | 用例类型 | 测试点 | 是否适合 ohosTest | 是否需要 test262 对照 |
|---|---|---|---|---|---|
| `optional_parameter/xts/pass/default_parameter_basic_pass.ets` | optional_parameter | pass | 默认参数基础行为 | 是 | 是 |
| `optional_parameter/xts/pass/default_parameter_undefined_pass.ets` | optional_parameter | pass | 传入 undefined 触发默认值 | 是 | 是 |
| `optional_parameter/xts/pass/default_parameter_null_pass.ets` | optional_parameter | pass | 传入 null 不触发默认值 | 是 | 是 |
| `optional_parameter/xts/pass/default_parameter_evaluation_order_pass.ets` | optional_parameter | pass | 默认参数表达式求值顺序 | 是 | 是 |
| `optional_parameter/xts/pass/default_parameter_reference_previous_param_pass.ets` | optional_parameter | pass | 默认参数引用前序参数 | 是 | 是 |
| `optional_parameter/xts/regression/default_parameter_side_effect_regression.ets` | optional_parameter | regression | 默认参数表达式副作用只在缺省时发生 | 是 | 是 |
| `rest_parameter/xts/pass/rest_parameter_basic_pass.ets` | rest_parameter | pass | rest 收集剩余参数 | 是 | 是 |
| `rest_parameter/xts/pass/rest_parameter_empty_pass.ets` | rest_parameter | pass | 无剩余参数时 rest 为空数组 | 是 | 是 |
| `rest_parameter/xts/pass/rest_parameter_multiple_args_pass.ets` | rest_parameter | pass | rest 收集多个参数 | 是 | 是 |
| `rest_parameter/xts/pass/rest_parameter_with_normal_params_pass.ets` | rest_parameter | pass | 普通参数与 rest 参数组合 | 是 | 是 |
| `rest_parameter/xts/pass/rest_parameter_array_behavior_pass.ets` | rest_parameter | pass | rest 参数具备数组行为 | 是 | 是 |
| `rest_parameter/xts/fail_compile/rest_parameter_not_last_fail_compile.ets` | rest_parameter | fail_compile | rest 参数必须位于参数列表最后 | 否 | 是 |
| `rest_parameter/xts/regression/rest_parameter_arguments_difference_regression.ets` | rest_parameter | regression | rest 与 arguments 的差异 | 是 | 是 |
| `return_type/xts/pass/return_value_basic_pass.ets` | return_type | pass | return 返回值 | 是 | 是 |
| `return_type/xts/pass/return_without_value_pass.ets` | return_type | pass | 无返回值时结果为 undefined | 是 | 是 |
| `return_type/xts/pass/return_early_exit_pass.ets` | return_type | pass | return 提前退出 | 是 | 是 |
| `return_type/xts/pass/return_finally_override_pass.ets` | return_type | pass | finally 中 return 覆盖 try return | 是 | 是 |
| `return_type/xts/fail_compile/return_outside_function_fail_compile.ets` | return_type | fail_compile | 函数外 return 非法 | 否 | 是 |
| `function_call/xts/pass/function_call_basic_pass.ets` | function_call | pass | 普通函数调用 | 是 | 是 |
| `function_call/xts/pass/function_call_extra_args_pass.ets` | function_call | pass | 多传参数 | 是 | 是 |
| `function_call/xts/pass/function_call_missing_args_pass.ets` | function_call | pass | 少传参数 | 是 | 是 |
| `function_call/xts/pass/function_call_as_value_pass.ets` | function_call | pass | 函数作为值 | 是 | 是 |
| `function_call/xts/pass/function_call_as_parameter_pass.ets` | function_call | pass | 函数作为参数 | 是 | 是 |
| `function_call/xts/pass/function_call_apply_bind_pass.ets` | function_call | pass | apply / bind 调用 | 是 | 是 |
| `function_call/xts/fail_runtime/function_call_non_callable_fail_runtime.ets` | function_call | fail_runtime | 非函数调用 TypeError | 是 | 是 |

## Boundary Cases

| 文件 | 测试点 | 放入 boundary 原因 | 后续确认方式 |
|---|---|---|---|
| N/A | 本阶段未新增 boundary 用例 | optional/rest/function_call 的不确定组合仍保留在设计矩阵中 | 后续 Stage 按动态 ArkTS 编译结果转 pass / fail_compile / fail_runtime |

## Updated Documents

| 文件 | 更新内容 |
|---|---|
| `optional_parameter/coverage_matrix.md` | 标记默认参数相关 Stage 1 用例已生成，并补充 null / side effect 回归点 |
| `rest_parameter/coverage_matrix.md` | 标记 rest 参数相关 Stage 1 用例已生成，并补充数组行为点 |
| `return_type/coverage_matrix.md` | 标记 return 相关 Stage 1 用例已生成 |
| `function_call/coverage_matrix.md` | 标记函数调用相关 Stage 1 用例已生成，并补充多传、少传、函数作为值/参数点 |
| `function_coverage_matrix.md` | 同步 Function 总覆盖矩阵的 Stage 1 生成状态与真实路径 |
| `function_first_batch_candidate_index.md` | 将已匹配候选标记为 created / Function Stage 1 / 实际路径 |
| `function_stage1_generation_report.md` | 新增本阶段生成报告 |

## Declaration Ownership Notes

| 测试点 | 归属判断 |
|---|---|
| function declaration hoisting | 已归 `00_the_basics/declarations`，本阶段不重复 |
| duplicate function declaration | 已归 `00_the_basics/declarations`，本阶段不重复 |
| block-level function declaration | 已归 `00_the_basics/declarations`，本阶段不重复 |
| class/function declaration TDZ | 已归 `00_the_basics/declarations`，本阶段不重复 |
| import/export declaration binding | 已归 `00_the_basics/declarations`，本阶段不重复 |
| function call / parameters / return / arguments | 归 `01_function`，本阶段生成 |

## Notes

- 本阶段生成 Function 参数、返回值、调用语义 P0/P1 XTS 候选。
- 本阶段未进行 DevEco / hvigor 实际编译验证。
- 本阶段未提交 commit，未 push 远程仓库。
- fail_compile 文件不得进入正向运行套件。
- declarations 已负责声明绑定、提升、TDZ、重复声明等共性规则。
