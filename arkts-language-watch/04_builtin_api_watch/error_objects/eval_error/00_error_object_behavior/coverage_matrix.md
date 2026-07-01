# Coverage Matrix

| 测试点 | ECMA 入口 | 代表 API/语法 | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|---|
| 基础触发条件 |  |  | fail_runtime | 否 |  | P0 |  |
| 非抛错对照场景 |  |  | pass | 否 |  | P1 |  |
| 边界场景 |  |  | boundary | 否 |  | P1 |  |
| ArkTS 静态前移场景 |  |  | fail_compile 或差异记录 | 否 |  | P0 |  |
| test262 对应用例 |  |  | mapping | 否 |  | P0 |  |
| 回归场景 |  |  | regression | 否 |  | P0 |  |
| EvalError object throw/catch | Native Error Object | throw new EvalError() | fail_runtime | 是 | xts/fail_runtime/eval_error_throw_catch.fail.ts/js | P2 | 第三批示例 |
| 00_error_object_behavior 示例覆盖 | 当前语义场景 | TS/JS 示例 | pass/fail_runtime/boundary | 是 | xts/ | P1 | 最终补齐示例 |
