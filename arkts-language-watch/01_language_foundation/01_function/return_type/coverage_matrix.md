# Coverage Matrix

| ID | 测试点 | 用例类型 | 优先级 | 是否已有用例 | 建议路径 | 备注 |
|---|---|---|---|---|---|---|
| RETURN-TYPE-0001 | 无 return 返回 undefined | pass | P0 | 是 | return_type/xts/pass/return_without_value_pass.ets | Function Stage 1 generated |
| RETURN-TYPE-0002 | 显式 return 值 | pass | P0 | 是 | return_type/xts/pass/return_value_basic_pass.ets | Function Stage 1 generated |
| RETURN-TYPE-0003 | return 后语句不执行 | pass | P0 | 是 | return_type/xts/pass/return_early_exit_pass.ets | Function Stage 1 generated |
| RETURN-TYPE-0004 | finally return 覆盖 try return | pass | P1 | 是 | return_type/xts/pass/return_finally_override_pass.ets | Function Stage 1 generated |
| RETURN-TYPE-0005 | throw 后异常传播 | pass | P1 | 否 | return_type/xts/pass/throw_后异常传播_pass.ets | Stage 0 候选，未生成 .ets |
| RETURN-TYPE-0006 | 函数外 return 语法错误 | fail_compile | P1 | 是 | return_type/xts/fail_compile/return_outside_function_fail_compile.ets | Function Stage 1 generated |
| RETURN-TYPE-0007 | TS 返回类型标注兼容边界 | boundary | P2 | 否 | return_type/xts/boundary/ts_返回类型标注兼容边界_boundary.ets | Stage 0 候选，未生成 .ets |
| RETURN-TYPE-0008 | async/generator return 边界 | boundary | P2 | 否 | return_type/xts/boundary/async_generator_return_边界_boundary.ets | Stage 0 候选，未生成 .ets |
