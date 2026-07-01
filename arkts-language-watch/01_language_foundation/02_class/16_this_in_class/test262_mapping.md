# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
|  |  |  | 待确认 | 待确认 |  |  |  |

<!-- CLASS_THIS_IN_CLASS_DETAILED_WATCH_V1 -->
# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
| ---------- | -------------------- | ------- | ---------- | ------ | ------ | ---- | ---- |
| class method this binding | ES2022 | Method call this binding | 待确认 | 需要适配 |  | 运行时 this | 运行时行为用例 |
| class method strict this | ES2022 | Strict method this | 待确认 | 需要适配 |  | class method strict | 运行时行为用例 |
| method extraction this undefined | ES2022 | Reference / Call | 待确认 | 需要适配 |  | unbound method | 运行时行为用例 |
| derived constructor this before super | ES2022 | Derived constructor this binding | 待确认 | 待确认 |  | ArkTS 可能 fail_compile | 静态/运行时分流 |
| this after super | ES2022 | SuperCall initialization | 待确认 | 需要适配 |  | derived constructor | 运行时行为用例 |
| field initializer using this | ES2022 | FieldDefinition initializer | 待确认 | 待确认 |  | ArkTS 支持待确认 | 记录差异或适配 |
| super.method receiver | ES2022 | SuperProperty receiver | 待确认 | 需要适配 |  | receiver is current this | 运行时行为用例 |
| arrow function lexical this in class method | ES2022 | Arrow lexical this | 待确认 | 需要适配 |  | lexical this | 运行时行为用例 |
| static method this | ES2022 | Static method call | 待确认 | 需要适配 |  | constructor object this | 运行时行为用例 |
| static method inherited this | ES2022 | Static method inherited call | 待确认 | 需要适配 |  | derived constructor this | 运行时行为用例 |
| call/apply/bind this behavior, only if ArkTS supports it | ES2022 | Function.prototype call/apply/bind | 待确认 | 待确认 |  | 支持待确认 | 记录差异或排除 |
| this type checking is ArkTS-specific/TS-compatible | ArkTS-specific / TS-compatible | ArkTS checker | 是 | 不适用 test262 |  | test262 不覆盖静态 this 类型 | 使用 ArkTS spec/checker 用例设计 |
| polymorphic this is ArkTS-specific/TS-compatible | ArkTS-specific / TS-compatible | ArkTS checker | 是 | 不适用 test262 |  | 多态 this 非 ECMA runtime | 使用 ArkTS spec/checker 用例设计 |
| explicit this parameter is ArkTS-specific/TS-compatible, only if ArkTS supports it | ArkTS-specific / TS-compatible | ArkTS checker | 待确认 | 不适用 test262 |  | 显式 this 参数支持待确认 | 记录差异或设计 checker 用例 |
| object literal method this contrast | ES2022 / Mixed | Object method this binding | 待确认 | 需要适配 |  | 与 class method 对照 | 运行时交叉验证 |
