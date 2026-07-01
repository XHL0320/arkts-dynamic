# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
|  |  |  | 待确认 | 待确认 |  |  |  |

<!-- CLASS_OVERRIDE_DETAILED_WATCH_V1 -->
# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
| ---------- | -------------------- | ------- | ---------- | ------ | ------ | ---- | ---- |
| method inheritance runtime behavior | ES2022 | Prototype method inheritance | 待确认 | 需要适配 |  | 只映射 runtime，不覆盖 override checker | 运行时交叉验证 |
| prototype method lookup | ES2022 | GetValue / prototype chain | 待确认 | 需要适配 |  | 验证派生 prototype 优先 | 运行时交叉验证 |
| overridden method dispatch | ES2022 | Method call dispatch | 待确认 | 需要适配 |  | 动态分派 | 运行时交叉验证 |
| super.method property lookup | ES2022 | SuperProperty | 待确认 | 需要适配 |  | super lookup | 运行时交叉验证 |
| super.method receiver | ES2022 | EvaluateCall receiver | 待确认 | 需要适配 |  | receiver 为当前 this | 运行时交叉验证 |
| static method inheritance | ES2022 | Constructor object inheritance | 待确认 | 需要适配 |  | static runtime | 运行时交叉验证 |
| static super method | ES2022 | SuperProperty in static method | 待确认 | 待确认 |  | ArkTS static super 支持待确认 | 记录差异或适配 |
| class fields vs methods name collision | ES2022 / ArkTS-specific | Class fields/methods | 待确认 | 待确认 |  | ArkTS checker 规则需适配 | 静态/运行时分流 |
| getter/setter override, only if ArkTS supports accessors | ES2022 / ArkTS-specific | Accessor property | 待确认 | 待确认 |  | accessor 支持未确认 | 记录差异或排除 |
| method cannot be used as constructor | ES2022 | Method [[Construct]] absence | 待确认 | 需要适配 |  | 运行时 TypeError | 运行时交叉验证 |
| method function name behavior | ES2022 | SetFunctionName | 待确认 | 需要适配 |  | 只做 runtime 对照 | 运行时交叉验证 |
| TypeScript/ArkTS override keyword is not from test262 | ArkTS-specific / TS-compatible | ArkTS checker | 是 | 不适用 test262 |  | ECMA 无 override 关键字 | 使用 ArkTS spec/checker 用例设计 |
| override type checking is ArkTS-specific/TS-compatible | ArkTS-specific / TS-compatible | ArkTS checker | 是 | 不适用 test262 |  | test262 不覆盖静态类型兼容 | 使用 ArkTS spec/checker 用例设计 |
| abstract method implementation is ArkTS-specific/TS-compatible | ArkTS-specific / TS-compatible | ArkTS abstract checker | 是 | 不适用 test262 |  | ECMA 无 abstract | 使用 ArkTS spec/checker 用例设计 |
| interface method implementation is ArkTS-specific/TS-compatible | ArkTS-specific / TS-compatible | ArkTS interface checker | 是 | 不适用 test262 |  | ECMA 无 interface | 使用 ArkTS spec/checker 用例设计 |
