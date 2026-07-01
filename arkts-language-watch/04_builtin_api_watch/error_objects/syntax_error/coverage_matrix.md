# Coverage Matrix

| 测试点 | 错误类型 | 用例类型 | 是否已有 | 用例路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|
| 构造器存在性 | SyntaxError | pass | 否 |  | P1 |  |
| prototype 继承 | SyntaxError | pass | 否 |  | P1 |  |
| name/message 属性 | SyntaxError | pass | 否 |  | P1 |  |
| 典型运行时触发 | SyntaxError | fail_runtime | 否 |  | P0 |  |
| test262 对照 | SyntaxError | mapping | 否 |  | P0 |  |
| ArkRuntime 差异 | SyntaxError | regression | 否 |  | P0 |  |

<!-- ERROR_OBJECTS_SEMANTIC_WATCH_V1 -->

# Coverage Matrix

| 场景目录 | 语义类别 | 优先级 | 是否已有测试设计 | 是否已有 XTS | 是否已有 test262 映射 | 备注 |
|---|---|---|---|---|---|---|
| 00_error_object_behavior | SyntaxError 错误对象自身行为 | P0 | 是 | 否 | 是 | 初始语义骨架 |
| 01_static_parse_error | 静态源码解析阶段 SyntaxError | P0 | 是 | 否 | 是 | 初始语义骨架 |
| 02_eval_parse_error | eval 动态解析非法源码触发 SyntaxError | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 03_function_constructor_parse_error | Function 构造器动态解析非法源码触发 SyntaxError | P1 | 是 | 否 | 是 | 初始语义骨架 |
| 04_regexp_parse_error | RegExp 构造非法正则触发 SyntaxError | P0 | 是 | 否 | 是 | 初始语义骨架 |
| 05_json_parse_error | JSON.parse 非法 JSON 触发 SyntaxError | P0 | 是 | 否 | 是 | 初始语义骨架 |
| 06_module_parse_error | module 解析阶段 SyntaxError | P2 | 是 | 否 | 是 | 初始语义骨架 |
| 07_invalid_private_name_syntax | private name 语法非法触发 SyntaxError | P2 | 是 | 否 | 是 | 初始语义骨架 |
| 08_invalid_destructuring_or_parameter_syntax | 解构、参数列表等语法错误 | P2 | 是 | 否 | 是 | 初始语义骨架 |
| 99_test262_mapping | SyntaxError 相关 test262 映射 | P0 | 是 | 否 | 是 | 初始语义骨架 |
