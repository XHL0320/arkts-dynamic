# Coverage Matrix

| 测试点 | 错误类型 | 用例类型 | 是否已有 | 用例路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|
| 构造器存在性 | URIError | pass | 否 |  | P1 |  |
| prototype 继承 | URIError | pass | 否 |  | P1 |  |
| name/message 属性 | URIError | pass | 否 |  | P1 |  |
| 典型运行时触发 | URIError | fail_runtime | 否 |  | P0 |  |
| test262 对照 | URIError | mapping | 否 |  | P0 |  |
| ArkRuntime 差异 | URIError | regression | 否 |  | P0 |  |

<!-- ERROR_OBJECTS_SEMANTIC_WATCH_V1 -->

# Coverage Matrix

| 场景目录 | 语义类别 | 优先级 | 是否已有测试设计 | 是否已有 XTS | 是否已有 test262 映射 | 备注 |
|---|---|---|---|---|---|---|
| 00_error_object_behavior | URIError 错误对象自身行为 | P0 | 是 | 否 | 是 | 初始语义骨架 |
| 01_decode_uri_malformed_escape | decodeURI 非法百分号编码触发 URIError | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 02_decode_uri_component_malformed_escape | decodeURIComponent 非法百分号编码触发 URIError | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 03_encode_uri_invalid_surrogate | encodeURI 遇到非法 surrogate 触发 URIError | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 04_encode_uri_component_invalid_surrogate | encodeURIComponent 遇到非法 surrogate 触发 URIError | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 99_test262_mapping | URIError 相关 test262 映射 | P0 | 是 | 否 | 是 | 初始语义骨架 |
