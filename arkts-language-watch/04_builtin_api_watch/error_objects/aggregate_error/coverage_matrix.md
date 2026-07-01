# Coverage Matrix

| 测试点 | 错误类型 | 用例类型 | 是否已有 | 用例路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|
| 构造器存在性 | AggregateError | pass | 否 |  | P1 |  |
| prototype 继承 | AggregateError | pass | 否 |  | P1 |  |
| name/message 属性 | AggregateError | pass | 否 |  | P1 |  |
| 典型运行时触发 | AggregateError | fail_runtime | 否 |  | P0 |  |
| test262 对照 | AggregateError | mapping | 否 |  | P0 |  |
| ArkRuntime 差异 | AggregateError | regression | 否 |  | P0 |  |

<!-- ERROR_OBJECTS_SEMANTIC_WATCH_V1 -->

# Coverage Matrix

| 场景目录 | 语义类别 | 优先级 | 是否已有测试设计 | 是否已有 XTS | 是否已有 test262 映射 | 备注 |
|---|---|---|---|---|---|---|
| 00_error_object_behavior | AggregateError 错误对象自身行为 | P0 | 是 | 否 | 是 | 初始语义骨架 |
| 01_constructor_errors_iterable | AggregateError 构造器 errors 参数 | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 02_errors_property | AggregateError errors 属性 | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 03_message_and_cause | AggregateError message/cause | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 04_promise_any_rejection | Promise.any 全部 rejected 时抛 AggregateError | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 05_iterator_close_on_error | AggregateError 构造或 Promise.any 过程中的 iterator close | P2 | 是 | 否 | 是 | 初始语义骨架 |
| 99_test262_mapping | AggregateError 相关 test262 映射 | P0 | 是 | 否 | 是 | 初始语义骨架 |
