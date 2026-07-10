# Coverage Matrix

| ID | 测试点 | 用例类型 | 优先级 | 是否已有用例 | 建议路径 | 备注 |
|---|---|---|---|---|---|---|
| FUNCTION-OVERLOAD-SIGNATURE-0001 | TS 风格 overload signature 基础兼容边界 | boundary | P0 | 是 | function_overload_signature/xts/boundary/function_overload_signature_basic_boundary.ets | Function Stage 3 generated; not static overload resolution |
| FUNCTION-OVERLOAD-SIGNATURE-0002 | overload signature 运行时实现函数边界 | boundary | P0 | 是 | function_overload_signature/xts/boundary/function_overload_signature_runtime_impl_boundary.ets | Function Stage 3 generated; runtime implementation only |
| FUNCTION-OVERLOAD-SIGNATURE-0003 | 多个 overload signature + 一个实现函数 | boundary | P1 | 是 | function_overload_signature/xts/boundary/function_overload_signature_multiple_signature_boundary.ets | Function Stage 3 generated; pending confirmation |
| FUNCTION-OVERLOAD-SIGNATURE-0004 | optional parameter 与 overload signature 组合边界 | boundary | P1 | 是 | function_overload_signature/xts/boundary/function_overload_signature_optional_param_boundary.ets | Function Stage 3 generated; pending confirmation |
| FUNCTION-OVERLOAD-SIGNATURE-0005 | 只有 overload signature 没有实现函数 | fail_compile | P0 | 是 | function_overload_signature/xts/fail_compile/function_overload_signature_missing_impl_fail_compile.ets | Function Stage 3 generated |
| FUNCTION-OVERLOAD-SIGNATURE-0006 | 多个实现函数非法 | fail_compile | P1 | 是 | function_overload_signature/xts/fail_compile/function_overload_signature_duplicate_impl_fail_compile.ets | Function Stage 3 generated |
| FUNCTION-OVERLOAD-SIGNATURE-0007 | 动态调用 overload 实现函数回归 | regression | P1 | 是 | function_overload_signature/xts/regression/function_overload_signature_dynamic_call_regression.ets | Function Stage 3 generated; implementation runtime only |
