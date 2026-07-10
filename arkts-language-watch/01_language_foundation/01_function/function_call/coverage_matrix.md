# Coverage Matrix

| ID | 测试点 | 用例类型 | 优先级 | 是否已有用例 | 建议路径 | 备注 |
|---|---|---|---|---|---|---|
| FUNCTION-CALL-0001 | 普通函数调用返回值 | pass | P0 | 是 | function_call/xts/pass/function_call_basic_pass.ets | Function Stage 1 generated |
| FUNCTION-CALL-0002 | 调用非函数抛 TypeError | fail_runtime | P0 | 是 | function_call/xts/fail_runtime/function_call_non_callable_fail_runtime.ets | Function Stage 1 generated |
| FUNCTION-CALL-0003 | 方法调用 this 绑定 | pass | P0 | 否 | function_call/xts/pass/方法调用_this_绑定_pass.ets | Stage 0 候选，未生成 .ets |
| FUNCTION-CALL-0004 | call 改变 this | pass | P1 | 否 | function_call/xts/pass/call_改变_this_pass.ets | Stage 0 候选，未生成 .ets |
| FUNCTION-CALL-0005 | apply 传参 | pass | P1 | 是 | function_call/xts/pass/function_call_apply_bind_pass.ets | Function Stage 1 generated with bind |
| FUNCTION-CALL-0006 | bind 固定 this 和前置参数 | pass | P1 | 是 | function_call/xts/pass/function_call_apply_bind_pass.ets | Function Stage 1 generated with apply |
| FUNCTION-CALL-0007 | callback 抛异常传播 | fail_runtime | P2 | 否 | function_call/xts/fail_runtime/callback_抛异常传播_fail_runtime.ets | Stage 0 候选，未生成 .ets |
| FUNCTION-CALL-0008 | 调用求值顺序 | pass | P2 | 否 | function_call/xts/pass/调用求值顺序_pass.ets | Stage 0 候选，未生成 .ets |

| FUNCTION-CALL-0009 | 多传参数 | pass | P1 | 是 | function_call/xts/pass/function_call_extra_args_pass.ets | Function Stage 1 generated |
| FUNCTION-CALL-0010 | 少传参数 | pass | P1 | 是 | function_call/xts/pass/function_call_missing_args_pass.ets | Function Stage 1 generated |
| FUNCTION-CALL-0011 | 函数作为值 | pass | P1 | 是 | function_call/xts/pass/function_call_as_value_pass.ets | Function Stage 1 generated |
| FUNCTION-CALL-0012 | 函数作为参数 | pass | P1 | 是 | function_call/xts/pass/function_call_as_parameter_pass.ets | Function Stage 1 generated |