# Coverage Matrix

| 测试点 | 错误类型 | 用例类型 | 是否已有 | 用例路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|
| 构造器存在性 | SuppressedError | pass | 否 |  | P1 |  |
| prototype 继承 | SuppressedError | pass | 否 |  | P1 |  |
| name/message 属性 | SuppressedError | pass | 否 |  | P1 |  |
| 典型运行时触发 | SuppressedError | fail_runtime | 否 |  | P0 |  |
| test262 对照 | SuppressedError | mapping | 否 |  | P0 |  |
| ArkRuntime 差异 | SuppressedError | regression | 否 |  | P0 |  |

<!-- ERROR_OBJECTS_SEMANTIC_WATCH_V1 -->

# Coverage Matrix

| 场景目录 | 语义类别 | 优先级 | 是否已有测试设计 | 是否已有 XTS | 是否已有 test262 映射 | 备注 |
|---|---|---|---|---|---|---|
| 00_error_object_behavior | SuppressedError 错误对象自身行为 | P2 | 是 | 否 | 是 | 初始语义骨架 |
| 01_constructor_error_suppressed_message | SuppressedError 构造器参数 | P2 | 是 | 否 | 是 | 初始语义骨架 |
| 02_explicit_resource_management_support | 显式资源管理相关错误抑制 | P3 | 是 | 否 | 是 | 初始语义骨架 |
| 03_unsupported_feature_difference | SuppressedError / 显式资源管理支持差异 | P2 | 是 | 否 | 是 | 初始语义骨架 |
| 99_test262_mapping | SuppressedError 相关 test262 映射 | P0 | 是 | 否 | 是 | 初始语义骨架 |
