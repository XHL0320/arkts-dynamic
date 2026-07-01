# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
|  |  |  | 待确认 | 待确认 |  |  |  |

<!-- CLASS_METHOD_DETAILED_WATCH_V1 -->

# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
| class method definition | ES2022 | MethodDefinition | 待确认 | 待确认 |  | ArkTS 类型注解需适配 | 语法适配 |
| method on prototype | ES2022 | DefineMethod / prototype property | 待确认 | 待确认 |  | 运行时语义对照 | 适配 |
| method name property | ES2022 | SetFunctionName | 待确认 | 待确认 |  | 不强断 message/name 以外文本 | 适配 |
| method this binding | ES2022 | EvaluateCall | 待确认 | 待确认 |  | ArkTS 可能静态限制 | 适配 |
| static method | ES2022 | ClassElementEvaluation | 待确认 | 待确认 |  | static side 差异 | 适配 |
| super.method | ES2022 | MakeSuperPropertyReference | 待确认 | 待确认 |  | 继承组合 | 适配 |
| getter method | ES2022 | MethodDefinition get | 待确认 | 待确认 |  | 如 ArkTS 不支持需排除 | 记录差异或排除 |
| setter method | ES2022 | MethodDefinition set | 待确认 | 待确认 |  | 如 ArkTS 不支持需排除 | 记录差异或排除 |
| computed method name | ES2022 | ClassElementName | 待确认 | 待确认 |  | 支持情况待确认 | 记录差异或排除 |
| private method | ES2022 | PrivateMethodDefinition | 待确认 | 待确认 |  | ArkTS private 与 #private 差异 | 记录差异或排除 |
| async method | ES2022 | AsyncMethod | 待确认 | 待确认 |  | 按 async 支持情况 | 记录差异或适配 |
| generator method | ES2022 | GeneratorMethod | 待确认 | 待确认 |  | ArkTS 可能不支持 generator | 记录差异或排除 |
| class method cannot be used as constructor | ES2022 | IsConstructor | 待确认 | 待确认 |  | 运行时 TypeError | 适配 |
| method inheritance | ES2022 | prototype chain | 待确认 | 待确认 |  | 继承组合 | 适配 |
| method definition and TDZ | ES2022 | ClassDefinitionEvaluation | 待确认 | 待确认 |  | TDZ/静态前移 | 适配 |
