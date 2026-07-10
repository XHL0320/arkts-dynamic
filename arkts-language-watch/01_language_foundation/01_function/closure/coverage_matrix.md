# Coverage Matrix

| ID | 测试点 | 用例类型 | 优先级 | 是否已有用例 | 建议路径 | 备注 |
|---|---|---|---|---|---|---|
| CLOSURE-0001 | 闭包捕获外层变量 | pass | P0 | 是 | closure/xts/pass/closure_capture_outer_variable_pass.ets | Function Stage 2 generated |
| CLOSURE-0002 | 闭包修改外层变量 | pass | P0 | 是 | closure/xts/pass/closure_update_outer_variable_pass.ets | Function Stage 2 generated |
| CLOSURE-0003 | 返回内部函数后仍可访问捕获变量 | pass | P0 | 是 | closure/xts/pass/closure_return_inner_function_pass.ets | Function Stage 2 generated |
| CLOSURE-0004 | 多个闭包实例隔离 | pass | P1 | 是 | closure/xts/pass/closure_multiple_instances_pass.ets | Function Stage 2 generated |
| CLOSURE-0005 | 嵌套闭包多层捕获 | pass | P1 | 是 | closure/xts/pass/closure_nested_closure_pass.ets | Function Stage 2 generated |
| CLOSURE-0006 | 循环中 let 捕获 | pass | P1 | 是 | closure/xts/pass/closure_loop_capture_let_pass.ets | Function Stage 2 generated |
| CLOSURE-0007 | 循环中 var 捕获边界 | boundary | P2 | 是 | closure/xts/boundary/closure_loop_capture_var_boundary.ets | Function Stage 2 generated; pending confirmation |
| CLOSURE-0008 | 闭包生命周期回归 | regression | P0 | 是 | closure/xts/regression/closure_lifetime_regression.ets | Function Stage 2 generated |
