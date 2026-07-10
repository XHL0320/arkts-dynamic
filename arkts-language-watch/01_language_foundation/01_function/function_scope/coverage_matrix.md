# Coverage Matrix

| ID | 测试点 | 用例类型 | 优先级 | 是否已有用例 | 建议路径 | 备注 |
|---|---|---|---|---|---|---|
| FUNCTION-SCOPE-0001 | 函数内部局部变量 | pass | P0 | 是 | function_scope/xts/pass/function_scope_local_variable_pass.ets | Function Stage 2 generated |
| FUNCTION-SCOPE-0002 | 嵌套函数访问外层变量 | pass | P0 | 是 | function_scope/xts/pass/function_scope_nested_function_pass.ets | Function Stage 2 generated |
| FUNCTION-SCOPE-0003 | 内层变量遮蔽外层变量 | pass | P0 | 是 | function_scope/xts/pass/function_scope_variable_shadowing_pass.ets | Function Stage 2 generated |
| FUNCTION-SCOPE-0004 | 函数内 block 作用域 | pass | P1 | 是 | function_scope/xts/pass/function_scope_block_inside_function_pass.ets | Function Stage 2 generated |
| FUNCTION-SCOPE-0005 | 参数名与局部 block 变量遮蔽 | pass | P1 | 是 | function_scope/xts/pass/function_scope_parameter_shadowing_pass.ets | Function Stage 2 generated |
| FUNCTION-SCOPE-0006 | 函数外访问函数内部变量抛异常 | fail_runtime | P1 | 是 | function_scope/xts/fail_runtime/function_scope_outer_inaccessible_fail_runtime.ets | Function Stage 2 generated |
| FUNCTION-SCOPE-0007 | 块级函数声明边界 | boundary | P2 | 是 | function_scope/xts/boundary/function_scope_block_function_boundary.ets | Function Stage 2 generated; pending confirmation |
| FUNCTION-SCOPE-0008 | 嵌套作用域解析回归 | regression | P1 | 是 | function_scope/xts/regression/function_scope_nested_resolution_regression.ets | Function Stage 2 generated |
