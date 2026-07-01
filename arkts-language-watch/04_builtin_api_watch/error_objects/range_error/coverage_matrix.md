# Coverage Matrix

| 测试点 | 错误类型 | 用例类型 | 是否已有 | 用例路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|
| 构造器存在性 | RangeError | pass | 否 |  | P1 |  |
| prototype 继承 | RangeError | pass | 否 |  | P1 |  |
| name/message 属性 | RangeError | pass | 否 |  | P1 |  |
| 典型运行时触发 | RangeError | fail_runtime | 否 |  | P0 |  |
| test262 对照 | RangeError | mapping | 否 |  | P0 |  |
| ArkRuntime 差异 | RangeError | regression | 否 |  | P0 |  |

<!-- ERROR_OBJECTS_SEMANTIC_WATCH_V1 -->

# Coverage Matrix

| 场景目录 | 语义类别 | 优先级 | 是否已有测试设计 | 是否已有 XTS | 是否已有 test262 映射 | 备注 |
|---|---|---|---|---|---|---|
| 00_error_object_behavior | RangeError 错误对象自身行为 | P0 | 是 | 否 | 是 | 初始语义骨架 |
| 01_array_length | Array length 非法触发 RangeError | P0 | 是 | 否 | 是 | 初始语义骨架 |
| 02_string_repeat | String.prototype.repeat 参数非法触发 RangeError | P0 | 是 | 否 | 是 | 初始语义骨架 |
| 03_number_format_digits | Number 格式化参数越界触发 RangeError | P0 | 是 | 否 | 是 | 初始语义骨架 |
| 04_bigint_width | BigInt.asIntN/asUintN 位宽非法触发 RangeError | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 05_date_time_value | Date 相关 RangeError | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 06_typedarray_arraybuffer_length | TypedArray / ArrayBuffer 长度或偏移非法 | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 07_regexp_quantifier_or_string_limits | RegExp 或字符串长度限制相关 RangeError | P3 | 是 | 否 | 是 | 初始语义骨架 |
| 08_recursion_or_stack_limit_non_stable | 递归过深、调用栈溢出等非稳定场景 | P3 | 是 | 否 | 是 | 初始语义骨架 |
| 99_test262_mapping | RangeError 相关 test262 映射 | P0 | 是 | 否 | 是 | 初始语义骨架 |
