# Function Gap List

## Summary

| 缺口类型 | 数量 |
|---|---:|
| P0 未覆盖 | 7 |
| P1 未覆盖 | 17 |
| P2 未覆盖 | 22 |
| boundary 待确认 | 9 |
| 需要后续规范比对 | 65 |
| 需要运行验证 | 65 |

## P0 Gaps

| ID | 叶子目录 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| FUNCTION-TOTAL-0001 | function_declaration | function declaration hoisting | planned | 归 declarations 主线复核；Function 不优先生成 |
| FUNCTION-TOTAL-0005 | function_declaration | function declaration missing name | planned | 后续按 declarations / syntax 负向归属确认 |
| FUNCTION-TOTAL-0081 | function_expression | function expression assigned call | planned | Function 后续补 Stage 5/6 候选 |
| FUNCTION-TOTAL-0082 | function_expression | function expression no hoisting | planned | Function expression 专项补 fail_runtime |
| FUNCTION-TOTAL-0009 | optional_parameter | optional parameter omitted as undefined | planned | 可在 Stage 5 补齐或合并到 default parameter smoke |
| FUNCTION-TOTAL-0043 | function_call | method call this binding | planned | Function call this 专项补齐 |
| FUNCTION-TOTAL-0044 | function_call | Function.prototype.call changes this | planned | call/apply/bind 拆分补齐 |

## P1 Gaps

| ID | 叶子目录 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| FUNCTION-TOTAL-0002 | function_declaration | recursive function declaration | planned | 归 declarations/function_declaration 交叉候选 |
| FUNCTION-TOTAL-0003 | function_declaration | duplicate function declaration boundary | planned | 归 declarations，Function 不重复主线 |
| FUNCTION-TOTAL-0004 | function_declaration | block-level function declaration boundary | planned | 归 declarations，Function 只保留 boundary |
| FUNCTION-TOTAL-0006 | function_declaration | function declaration as callback | planned | 可作为 function_type/function_declaration 集成补齐 |
| FUNCTION-TOTAL-0083 | function_expression | anonymous function expression name inference | planned | Function expression boundary |
| FUNCTION-TOTAL-0084 | function_expression | named function expression internal binding | planned | Function expression boundary |
| FUNCTION-TOTAL-0085 | function_expression | named function expression recursive call | planned | Function expression pass |
| FUNCTION-TOTAL-0086 | function_expression | function expression as object property | planned | Function expression pass |
| FUNCTION-TOTAL-0087 | function_expression | function expression as callback | planned | Function expression pass |
| FUNCTION-TOTAL-0088 | function_expression | IIFE function expression | planned | Function expression pass |
| FUNCTION-TOTAL-0014 | optional_parameter | default parameter expression throws | planned | fail_runtime 补齐 |
| FUNCTION-TOTAL-0016 | optional_parameter | invalid default parameter syntax | planned | fail_compile 补齐 |
| FUNCTION-TOTAL-0029 | return_type | throw propagation without return | planned | fail_runtime 补齐 |
| FUNCTION-TOTAL-0047 | function_call | callback throws propagation | planned | fail_runtime 补齐 |
| FUNCTION-TOTAL-0048 | function_call | call evaluation order | planned | pass/regression 补齐 |
| FUNCTION-TOTAL-0056 | function_type | function length | planned | Function object 属性补齐 |
| FUNCTION-TOTAL-0071 | closure | closure throws propagation | planned | fail_runtime 补齐 |

## Boundary Pending Confirmation

| 文件路径/测试点 | 原因 | 后续确认方式 |
|---|---|---|
| `function_scope/xts/boundary/function_scope_block_function_boundary.ets` | block-level function behavior 与 declarations/strictness 交叉 | 编译运行 + ECMA/test262 对照 |
| `closure/xts/boundary/closure_loop_capture_var_boundary.ets` | var loop capture 需要确认动态实现 | 编译运行 + ECMA/test262 对照 |
| `arrow_function_lambda/xts/boundary/arrow_function_no_arguments_boundary.ets` | arrow arguments 绑定行为需确认 | 编译运行 + ECMA/test262 对照 |
| `function_type/xts/boundary/function_type_function_property_boundary.ets` | function object 自定义属性可能受 ArkTS 限制 | 编译运行验证 |
| `function_type/xts/boundary/function_type_ts_annotation_boundary.ets` | TS 函数类型标注兼容边界 | 编译验证 |
| `function_overload_signature/xts/boundary/function_overload_signature_basic_boundary.ets` | overload signature 语法兼容未确认 | 编译验证 |
| `function_overload_signature/xts/boundary/function_overload_signature_runtime_impl_boundary.ets` | overload runtime implementation 行为未确认 | 编译运行验证 |
| `function_overload_signature/xts/boundary/function_overload_signature_multiple_signature_boundary.ets` | 多 overload signature 兼容未确认 | 编译验证 |
| `function_overload_signature/xts/boundary/function_overload_signature_optional_param_boundary.ets` | optional parameter 与 overload 组合兼容未确认 | 编译验证 |

## Validation Pending

| 文件路径/测试点 | 需要验证内容 | 建议验证方式 |
|---|---|---|
| Stage 1-3 全部 65 个 `.ets` 候选 | 是否符合鸿蒙动态 ArkTS 编译和运行行为 | Function Stage 5 compile smoke + DevEco / hvigor / ohosTest |
| `fail_compile/` 下 4 个候选 | 是否稳定编译失败且错误点单一 | 官方工具链单文件验证 |
| `fail_runtime/` 下 3 个候选 | 是否稳定捕获运行时异常 | ohosTest / runtime smoke |
| `boundary/` 下 9 个候选 | 是否应转 pass / fail_compile / fail_runtime | 规范映射后再运行验证 |
