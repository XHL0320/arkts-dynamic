# test262 Mapping

| ECMA/Test262 测试点 | test262 用例 | ArkTS 是否适用 | XTS 对应用例 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|
| 构造器基础行为 |  | 待确认 |  |  |  |
| prototype 继承关系 |  | 待确认 |  |  |  |
| name/message 属性 |  | 待确认 |  |  |  |
| 运行时抛出场景 |  | 待确认 |  |  |  |
| 新标准特性 |  | 待确认 |  |  |  |

<!-- ERROR_OBJECTS_SEMANTIC_WATCH_V1 -->

# test262 Mapping

| 场景目录 | test262 搜索方向 | ECMA 入口 | ArkTS 是否适用 | 适配策略 | XTS 目标路径 | 差异原因 | 风险等级 |
|---|---|---|---|---|---|---|---|
| 00_error_object_behavior | EvalError Object Behavior EvalError test262 | 待确认 | 待确认 | 语法适配 |  |  | P2 |
| 01_constructor_legacy_behavior | Constructor legacy behavior EvalError test262 | 待确认 | 待确认 | 语法适配 |  |  | P2 |
| 02_eval_does_not_normally_throw_evalerror | eval does not normally throw EvalError EvalError test262 | 待确认 | 待确认 | 语法适配 |  |  | P3 |
| 99_test262_mapping | EvalError test262 Mapping EvalError test262 | 待确认 | 待确认 | 语法适配 |  |  | P0 |
