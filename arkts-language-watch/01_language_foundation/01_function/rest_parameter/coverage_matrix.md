# Coverage Matrix

| ID | 测试点 | 用例类型 | 优先级 | 是否已有用例 | 建议路径 | 备注 |
|---|---|---|---|---|---|---|
| REST-PARAMETER-0001 | rest 参数收集剩余实参 | pass | P0 | 是 | rest_parameter/xts/pass/rest_parameter_basic_pass.ets | Function Stage 1 generated |
| REST-PARAMETER-0002 | rest 参数为空数组 | pass | P0 | 是 | rest_parameter/xts/pass/rest_parameter_empty_pass.ets | Function Stage 1 generated |
| REST-PARAMETER-0003 | rest 与普通参数混合 | pass | P0 | 是 | rest_parameter/xts/pass/rest_parameter_with_normal_params_pass.ets | Function Stage 1 generated |
| REST-PARAMETER-0004 | rest 与 arguments 差异 | regression | P1 | 是 | rest_parameter/xts/regression/rest_parameter_arguments_difference_regression.ets | Function Stage 1 generated |
| REST-PARAMETER-0005 | rest 参数不是最后一个应报错 | fail_compile | P1 | 是 | rest_parameter/xts/fail_compile/rest_parameter_not_last_fail_compile.ets | Function Stage 1 generated |
| REST-PARAMETER-0006 | rest 参数影响 function.length | pass | P1 | 否 | rest_parameter/xts/pass/rest_参数影响_functionlength_pass.ets | Stage 0 候选，未生成 .ets |
| REST-PARAMETER-0007 | rest 参数转发到 apply | pass | P2 | 否 | rest_parameter/xts/pass/rest_参数转发到_apply_pass.ets | Stage 0 候选，未生成 .ets |
| REST-PARAMETER-0008 | rest 参数解构边界 | boundary | P2 | 否 | rest_parameter/xts/boundary/rest_参数解构边界_boundary.ets | Stage 0 候选，未生成 .ets |

| REST-PARAMETER-0009 | rest 作为数组使用 | pass | P1 | 是 | rest_parameter/xts/pass/rest_parameter_array_behavior_pass.ets | Function Stage 1 generated |