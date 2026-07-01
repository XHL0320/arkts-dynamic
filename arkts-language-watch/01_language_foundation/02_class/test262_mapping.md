# Class test262 Mapping

## Mapping Rule

Class 相关 test262 用例只用于 ECMAScript class runtime semantics 对照。

ArkTS-specific 或 TypeScript-compatible 的静态类型行为，不直接从 test262 推导，需要结合 ArkTS 官方文档和 ArkCompiler checker 行为。

## Mapping Table

| 场景目录 | test262 搜索方向 | ECMA Baseline Status | ArkTS 是否适用 | 是否需要适配 | XTS 目标路径 | 差异原因 | 风险等级 |
|---|---|---|---|---|---|---|---|
| 00_class_declaration | class declaration / class TDZ | ES2022 | 待确认 | 待确认 |  |  | P1 |
| 02_class_instantiation | class constructor / new | ES2022 | 待确认 | 待确认 |  |  | P1 |
| 07_inheritance | extends / derived class | ES2022 | 待确认 | 待确认 |  |  | P0 |
| 08_super | super call / this before super | ES2022 | 待确认 | 待确认 |  |  | P0 |
| 10_static_members | static fields / static blocks | ES2022 | 待确认 | 待确认 |  | static block 需确认 | P1 |
| 18_class_initialization_order | class fields initialization order | ES2022 | 待确认 | 待确认 |  |  | P1 |
| 19_class_runtime_behavior | prototype / instanceof / constructor | ES2022 | 待确认 | 待确认 |  |  | P2 |
