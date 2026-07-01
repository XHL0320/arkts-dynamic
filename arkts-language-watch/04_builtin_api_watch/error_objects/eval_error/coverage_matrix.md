# Coverage Matrix

| 测试点 | 错误类型 | 用例类型 | 是否已有 | 用例路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|
| 构造器存在性 | EvalError | pass | 否 |  | P1 |  |
| prototype 继承 | EvalError | pass | 否 |  | P1 |  |
| name/message 属性 | EvalError | pass | 否 |  | P1 |  |
| 典型运行时触发 | EvalError | fail_runtime | 否 |  | P0 |  |
| test262 对照 | EvalError | mapping | 否 |  | P0 |  |
| ArkRuntime 差异 | EvalError | regression | 否 |  | P0 |  |

<!-- ERROR_OBJECTS_SEMANTIC_WATCH_V1 -->

# Coverage Matrix

| 场景目录 | 语义类别 | 优先级 | 是否已有测试设计 | 是否已有 XTS | 是否已有 test262 映射 | 备注 |
|---|---|---|---|---|---|---|
| 00_error_object_behavior | EvalError 错误对象自身行为 | P2 | 是 | 否 | 是 | 初始语义骨架 |
| 01_constructor_legacy_behavior | EvalError 历史保留构造器 | P2 | 是 | 否 | 是 | 初始语义骨架 |
| 02_eval_does_not_normally_throw_evalerror | 现代 eval 通常不主动抛 EvalError | P3 | 是 | 否 | 是 | 初始语义骨架 |
| 99_test262_mapping | EvalError 相关 test262 映射 | P0 | 是 | 否 | 是 | 初始语义骨架 |
