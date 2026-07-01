# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
|  |  |  | 待确认 | 待确认 |  |  |  |

<!-- CLASS_OBJECT_LITERAL_DETAILED_WATCH_V1 -->
# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
| ---------- | -------------------- | ------- | ---------- | ------ | ------ | ---- | ---- |
| object initializer runtime behavior | ES2022 | Object Initializer | 待确认 | 需要适配 |  | 仅 runtime object 行为 | 运行时交叉验证 |
| object literal property definition | ES2022 | PropertyDefinition | 待确认 | 需要适配 |  | 不推导 ArkTS type compatibility | 运行时交叉验证 |
| object literal method definition | ES2022 | MethodDefinition | 待确认 | 需要适配 |  | method runtime | 运行时交叉验证 |
| computed property name, only if ArkTS supports it | ES2022 | ComputedPropertyName | 待确认 | 待确认 |  | ArkTS 支持未确认 | 记录差异或排除 |
| getter/setter in object literal, only if ArkTS supports it | ES2022 | Object accessor | 待确认 | 待确认 |  | accessor 支持未确认 | 记录差异或排除 |
| property access runtime behavior | ES2022 | Property access | 待确认 | 需要适配 |  | runtime property access | 运行时交叉验证 |
| missing property runtime behavior | ES2022 | Get property | 待确认 | 需要适配 |  | 静态语言可能前移为 checker | 静态/运行时分流 |
| object prototype behavior | ES2022 | Object prototype | 待确认 | 需要适配 |  | 与 class instance 对照 | 运行时交叉验证 |
| object literal this binding in method | ES2022 | Method call this | 待确认 | 需要适配 |  | runtime this | 运行时交叉验证 |
| object literal spread, only if ArkTS supports it | ES2022 | Object spread | 待确认 | 待确认 |  | ArkTS 支持未确认 | 记录差异或排除 |
| object literal compatibility with class type is ArkTS-specific/TS-compatible | ArkTS-specific / TS-compatible | ArkTS class type checker | 是 | 不适用 test262 |  | test262 不覆盖静态 class compatibility | 使用 ArkTS spec/checker 用例设计 |
| object literal compatibility with interface type is ArkTS-specific/TS-compatible | ArkTS-specific / TS-compatible | ArkTS interface checker | 是 | 不适用 test262 |  | ECMA 无 interface | 使用 ArkTS spec/checker 用例设计 |
| excess property check is ArkTS-specific/TS-compatible | ArkTS-specific / TS-compatible | ArkTS checker | 是 | 不适用 test262 |  | test262 不覆盖 freshness/excess | 使用 ArkTS spec/checker 用例设计 |
| private/protected compatibility is ArkTS-specific/TS-compatible | ArkTS-specific / TS-compatible | ArkTS visibility checker | 是 | 不适用 test262 |  | 静态可见性规则 | 使用 ArkTS spec/checker 用例设计 |
| object literal runtime instanceof class contrast | ES2022 / Mixed | instanceof | 待确认 | 需要适配 |  | 仅 runtime contrast | 运行时交叉验证 |
