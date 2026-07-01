# Coverage Matrix

| 测试点 | ECMA 入口 | 代表 API/语法 | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|---|
| 基础对象行为/基础触发条件 |  |  | fail_runtime | 否 |  | P0 |  |
| 非抛错对照场景 |  |  | pass | 否 |  | P1 |  |
| 边界场景 |  |  | boundary | 否 |  | P1 |  |
| ArkTS 静态前移场景 |  |  | fail_compile 或差异记录 | 否 |  | P0 |  |
| test262 对应用例 |  |  | mapping | 否 |  | P0 |  |
| 回归场景 |  |  | regression | 否 |  | P0 |  |
| TypeError test262 映射探测 | test262 mapping | mapping tables | boundary | 是 | xts/boundary/type_error_test262_mapping_probe.boundary.ts/js | P0 | 映射目录，不代表具体运行时语义 |
