# Coverage Matrix

| 测试点 | 错误类型 | 用例类型 | 是否已有 | 用例路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|
| 构造器存在性 | ReferenceError | pass | 否 |  | P1 |  |
| prototype 继承 | ReferenceError | pass | 否 |  | P1 |  |
| name/message 属性 | ReferenceError | pass | 否 |  | P1 |  |
| 典型运行时触发 | ReferenceError | fail_runtime | 否 |  | P0 |  |
| test262 对照 | ReferenceError | mapping | 否 |  | P0 |  |
| ArkRuntime 差异 | ReferenceError | regression | 否 |  | P0 |  |

<!-- ERROR_OBJECTS_SEMANTIC_WATCH_V1 -->

# Coverage Matrix

| 场景目录 | 语义类别 | 优先级 | 是否已有测试设计 | 是否已有 XTS | 是否已有 test262 映射 | 备注 |
|---|---|---|---|---|---|---|
| 00_error_object_behavior | ReferenceError 错误对象自身行为 | P0 | 是 | 否 | 是 | 初始语义骨架 |
| 01_unresolvable_reference | 未声明变量访问触发 ReferenceError | P0 | 是 | 否 | 是 | 初始语义骨架 |
| 02_temporal_dead_zone | let/const TDZ 触发 ReferenceError | P0 | 是 | 否 | 是 | 初始语义骨架 |
| 03_typeof_tdz | typeof 访问 TDZ 变量触发 ReferenceError | P0 | 是 | 否 | 是 | 初始语义骨架 |
| 04_class_tdz | class 声明 TDZ | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 05_module_binding_initialization | module import/export 绑定初始化前访问 | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 06_super_reference | super/this 初始化错误中可能涉及 ReferenceError | P2 | 是 | 否 | 是 | 初始语义骨架 |
| 07_private_name_or_scope_difference | private name、scope 相关差异 | P3 | 是 | 否 | 是 | 初始语义骨架 |
| 99_test262_mapping | ReferenceError 相关 test262 映射 | P0 | 是 | 否 | 是 | 初始语义骨架 |
