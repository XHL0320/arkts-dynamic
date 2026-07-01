# Coverage Matrix

| 测试点 | 错误类型 | 用例类型 | 是否已有 | 用例路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|
| 构造器存在性 | Error | pass | 否 |  | P1 |  |
| prototype 继承 | Error | pass | 否 |  | P1 |  |
| name/message 属性 | Error | pass | 否 |  | P1 |  |
| 典型运行时触发 | Error | fail_runtime | 否 |  | P0 |  |
| test262 对照 | Error | mapping | 否 |  | P0 |  |
| ArkRuntime 差异 | Error | regression | 否 |  | P0 |  |

<!-- ERROR_OBJECTS_SEMANTIC_WATCH_V1 -->

# Coverage Matrix

| 场景目录 | 语义类别 | 优先级 | 是否已有测试设计 | 是否已有 XTS | 是否已有 test262 映射 | 备注 |
|---|---|---|---|---|---|---|
| 00_error_object_behavior | Error 作为通用错误对象的基础行为 | P0 | 是 | 否 | 是 | 初始语义骨架 |
| 01_error_constructor | Error 构造器行为 | P0 | 是 | 否 | 是 | 初始语义骨架 |
| 02_error_prototype | Error.prototype 行为 | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 03_message_name_to_string | name/message/toString 组合 | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 04_cause_option | Error cause 选项 | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 05_throw_catch_behavior | throw/catch 运行时行为 | P0 | 是 | 否 | 是 | 初始语义骨架 |
| 06_error_subclassing | Error 子类化 | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 07_stack_non_standard | 非标准 stack 行为 | P3 | 是 | 否 | 是 | 初始语义骨架 |
| 99_test262_mapping | Error 相关 test262 映射 | P0 | 是 | 否 | 是 | 初始语义骨架 |
