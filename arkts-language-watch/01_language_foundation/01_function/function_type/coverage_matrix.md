# Coverage Matrix

| ID | 测试点 | 用例类型 | 优先级 | 是否已有用例 | 建议路径 | 备注 |
|---|---|---|---|---|---|---|
| FUNCTION-TYPE-0001 | 函数作为值保存 | pass | P0 | 是 | function_type/xts/pass/function_type_function_as_value_pass.ets | Function Stage 3 generated |
| FUNCTION-TYPE-0002 | 函数作为参数传递 | pass | P0 | 是 | function_type/xts/pass/function_type_function_as_parameter_pass.ets | Function Stage 3 generated |
| FUNCTION-TYPE-0003 | 函数作为返回值返回 | pass | P0 | 是 | function_type/xts/pass/function_type_function_as_return_value_pass.ets | Function Stage 3 generated |
| FUNCTION-TYPE-0004 | 函数变量重新赋值 | pass | P1 | 是 | function_type/xts/pass/function_type_assign_function_variable_pass.ets | Function Stage 3 generated |
| FUNCTION-TYPE-0005 | callback 基础调用 | pass | P1 | 是 | function_type/xts/pass/function_type_callback_basic_pass.ets | Function Stage 3 generated |
| FUNCTION-TYPE-0006 | 嵌套 callback | pass | P1 | 是 | function_type/xts/pass/function_type_nested_callback_pass.ets | Function Stage 3 generated |
| FUNCTION-TYPE-0007 | 函数对象属性边界 | boundary | P2 | 是 | function_type/xts/boundary/function_type_function_property_boundary.ets | Function Stage 3 generated; pending confirmation |
| FUNCTION-TYPE-0008 | 非函数值调用异常 | fail_runtime | P0 | 是 | function_type/xts/fail_runtime/function_type_call_non_function_fail_runtime.ets | Function Stage 3 generated |
| FUNCTION-TYPE-0009 | TS 函数类型标注兼容边界 | boundary | P1 | 是 | function_type/xts/boundary/function_type_ts_annotation_boundary.ets | Function Stage 3 generated; pending confirmation |
| FUNCTION-TYPE-0010 | callback identity 回归 | regression | P1 | 是 | function_type/xts/regression/function_type_callback_identity_regression.ets | Function Stage 3 generated |
