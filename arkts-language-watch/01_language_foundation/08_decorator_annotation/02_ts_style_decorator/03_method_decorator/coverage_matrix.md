# Coverage Matrix

| 测试点 | Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|
| 基础合法场景 | Pending | pass | 否 |  | P1 | Not from test262 |
| parser/checker 负向 | Pending | fail_compile | 否 |  | P1 | Not from test262 |
| transform/lowering | ArkTS-specific | bytecode regression | 否 |  | P0 | bytecode regression |
| sendable 交叉 | ArkTS-specific | regression | 否 |  | P0 | PR 10632 related |
| integration 组合 | Mixed | integration | 否 |  | P1 | Not from test262 |
