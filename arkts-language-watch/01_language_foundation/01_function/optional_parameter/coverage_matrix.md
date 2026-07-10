# Coverage Matrix

| ID | 测试点 | 用例类型 | 优先级 | 是否已有用例 | 建议路径 | 备注 |
|---|---|---|---|---|---|---|
| OPTIONAL-PARAMETER-0001 | 可选参数缺省为 undefined | pass | P0 | 否 | optional_parameter/xts/pass/可选参数缺省为_undefined_pass.ets | Stage 0 候选，未生成 .ets |
| OPTIONAL-PARAMETER-0002 | 默认参数基础行为 | pass | P0 | 是 | optional_parameter/xts/pass/default_parameter_basic_pass.ets | Function Stage 1 generated |
| OPTIONAL-PARAMETER-0003 | 显式 undefined 触发默认值 | pass | P0 | 是 | optional_parameter/xts/pass/default_parameter_undefined_pass.ets | Function Stage 1 generated |
| OPTIONAL-PARAMETER-0004 | 默认参数引用前序参数 | pass | P1 | 是 | optional_parameter/xts/pass/default_parameter_reference_previous_param_pass.ets | Function Stage 1 generated |
| OPTIONAL-PARAMETER-0005 | 默认参数求值顺序 | pass | P1 | 是 | optional_parameter/xts/pass/default_parameter_evaluation_order_pass.ets | Function Stage 1 generated |
| OPTIONAL-PARAMETER-0006 | 默认参数表达式抛异常 | fail_runtime | P1 | 否 | optional_parameter/xts/fail_runtime/默认参数表达式抛异常_fail_runtime.ets | Stage 0 候选，未生成 .ets |
| OPTIONAL-PARAMETER-0007 | TS 可选参数标记兼容边界 | boundary | P2 | 否 | optional_parameter/xts/boundary/ts_可选参数标记兼容边界_boundary.ets | Stage 0 候选，未生成 .ets |
| OPTIONAL-PARAMETER-0008 | 非法默认参数语法 | pass | P2 | 否 | optional_parameter/xts/pass/非法默认参数语法_pass.ets | Stage 0 候选，未生成 .ets |

| OPTIONAL-PARAMETER-0009 | 传入 null 不触发默认值 | pass | P1 | 是 | optional_parameter/xts/pass/default_parameter_null_pass.ets | Function Stage 1 generated |
| OPTIONAL-PARAMETER-0010 | 默认参数表达式副作用只在需要时执行 | regression | P1 | 是 | optional_parameter/xts/regression/default_parameter_side_effect_regression.ets | Function Stage 1 generated |