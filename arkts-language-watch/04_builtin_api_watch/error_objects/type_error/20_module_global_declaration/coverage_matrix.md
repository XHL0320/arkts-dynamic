# Coverage Matrix

| 测试点 | ECMA 入口 | 代表 API/语法 | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|---|
| 基础对象行为/基础触发条件 |  |  | fail_runtime | 否 |  | P0 |  |
| 非抛错对照场景 |  |  | pass | 否 |  | P1 |  |
| 边界场景 |  |  | boundary | 否 |  | P1 |  |
| ArkTS 静态前移场景 |  |  | fail_compile 或差异记录 | 否 |  | P0 |  |
| test262 对应用例 |  |  | mapping | 否 |  | P0 |  |
| 回归场景 |  |  | regression | 否 |  | P0 |  |
| Host global declaration boundary | GlobalDeclarationInstantiation | host global declaration | boundary | 是 | xts/boundary/module_global_declaration_host_boundary.boundary.ts/js | P3 | Host 相关，先做边界探测 |
