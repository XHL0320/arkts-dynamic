# Coverage Matrix

| ID | 测试点 | 用例类型 | 优先级 | 是否已有用例 | 建议路径 | 备注 |
|---|---|---|---|---|---|---|
| FUNCTION-EXPRESSION-0001 | 函数表达式赋值后调用 | pass | P0 | 否 | function_expression/xts/pass/function_expression_assigned_call_pass.ets | Stage 0.1 候选，未生成 .ets |
| FUNCTION-EXPRESSION-0002 | 函数表达式不提升 | fail_runtime | P0 | 否 | function_expression/xts/fail_runtime/function_expression_no_hoisting_fail_runtime.ets | Stage 0.1 候选，未生成 .ets |
| FUNCTION-EXPRESSION-0003 | 匿名函数表达式 name 推断 | boundary | P0 | 否 | function_expression/xts/boundary/function_expression_anonymous_name_boundary.ets | Stage 0.1 候选，未生成 .ets |
| FUNCTION-EXPRESSION-0004 | 具名函数表达式内部名称绑定 | boundary | P1 | 否 | function_expression/xts/boundary/function_expression_named_internal_binding_boundary.ets | Stage 0.1 候选，未生成 .ets |
| FUNCTION-EXPRESSION-0005 | 具名函数表达式递归调用 | pass | P1 | 否 | function_expression/xts/pass/function_expression_named_recursive_pass.ets | Stage 0.1 候选，未生成 .ets |
| FUNCTION-EXPRESSION-0006 | 函数表达式作为对象属性 | pass | P1 | 否 | function_expression/xts/pass/function_expression_object_property_pass.ets | Stage 0.1 候选，未生成 .ets |
| FUNCTION-EXPRESSION-0007 | 函数表达式作为 callback | pass | P1 | 否 | function_expression/xts/pass/function_expression_callback_pass.ets | Stage 0.1 候选，未生成 .ets |
| FUNCTION-EXPRESSION-0008 | IIFE 函数表达式 | pass | P2 | 否 | function_expression/xts/pass/function_expression_iife_pass.ets | Stage 0.1 候选，未生成 .ets |
| FUNCTION-EXPRESSION-0009 | 函数表达式求值时抛异常 | fail_runtime | P2 | 否 | function_expression/xts/fail_runtime/function_expression_evaluation_throw_fail_runtime.ets | Stage 0.1 候选，未生成 .ets |
| FUNCTION-EXPRESSION-0010 | 函数表达式与 this 绑定边界 | boundary | P2 | 否 | function_expression/xts/boundary/function_expression_this_boundary_boundary.ets | Stage 0.1 候选，未生成 .ets |
