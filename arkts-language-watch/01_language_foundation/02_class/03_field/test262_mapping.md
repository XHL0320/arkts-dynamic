# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
|  |  |  | 待确认 | 待确认 |  |  |  |

<!-- CLASS_FIELD_DETAILED_WATCH_V1 -->

# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
| public instance field | ES2022 | ClassFieldDefinitionEvaluation | 待确认 | 待确认 |  | ArkTS 字段类型规则需单独设计 | 语法适配 |
| public static field | ES2022 | ClassStaticBlockDefinitionEvaluation / field definition | 待确认 | 待确认 |  | static field 支持待确认 | 记录差异或适配 |
| class field initialization order | ES2022 | InitializeInstanceElements | 待确认 | 待确认 |  | 需结合 ArkRuntime 顺序 | 适配 |
| derived class field initialization | ES2022 | Derived constructor / InitializeInstanceElements | 待确认 | 待确认 |  | super/this 边界 | 适配 |
| field initializer this | ES2022 | ClassFieldDefinitionEvaluation | 待确认 | 待确认 |  | ArkTS 静态限制待确认 | 适配 |
| field initializer super | ES2022 | ClassFieldDefinitionEvaluation | 待确认 | 待确认 |  | 支持情况待确认 | 记录差异或排除 |
| computed field name | ES2022 | ClassElementName | 待确认 | 待确认 |  | 如 ArkTS 不支持需排除 | 记录差异或排除 |
| private field | ES2022 | PrivateFieldDefinition | 待确认 | 待确认 |  | ArkTS private 关键字不同于 #private | 记录差异或排除 |
| static block 与 static field | ES2022 | ClassStaticBlockDefinitionEvaluation | 待确认 | 待确认 |  | static block 需确认 | 记录差异或排除 |
| class fields and inheritance | ES2022 | InitializeInstanceElements / extends | 待确认 | 待确认 |  | 继承顺序需验证 | 适配 |
| class fields and TDZ | ES2022 | ClassDefinitionEvaluation | 待确认 | 待确认 |  | ArkTS 静态前移待确认 | 适配 |
| class cannot be called without new | ES2022 | Class constructor call | 待确认 | 待确认 |  | 归入 runtime TypeError 对照 | 适配 |
