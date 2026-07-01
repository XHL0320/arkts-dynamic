# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
|  |  |  | 待确认 | 待确认 |  |  |  |

<!-- CLASS_SUPER_DETAILED_WATCH_V1 -->
# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
| ---------- | -------------------- | ------- | ---------- | ------ | ------ | ---- | ---- |
| super call in derived constructor | ES2022 | SuperCall / Derived Constructor | 待确认 | 待确认 |  | ArkTS constructor 语法和静态检查可能不同 | 语法适配 |
| this before super | ES2022 | Derived Constructor this binding | 待确认 | 待确认 |  | ArkTS 可能前移为编译期错误 | 静态/运行时分流 |
| super called twice | ES2022 | SuperCall initialization | 待确认 | 待确认 |  | 异常类型需按 ArkRuntime 确认 | 记录差异或适配 |
| super call arguments | ES2022 | Constructor call semantics | 待确认 | 待确认 |  | ArkTS 强类型参数检查需适配 | 语法适配 |
| super property access | ES2022 | MakeSuperPropertyReference | 待确认 | 待确认 |  | super.field 支持范围待确认 | 记录差异或排除 |
| super.method receiver | ES2022 | EvaluateCall / SuperProperty | 待确认 | 待确认 |  | 需要验证 receiver 为当前 this | 语法适配 |
| super in class method | ES2022 | MethodDefinition [[HomeObject]] | 待确认 | 待确认 |  | ArkTS 方法定义差异需适配 | 语法适配 |
| super in arrow function | ES2022 | Lexical super binding | 待确认 | 待确认 |  | ArkTS arrow function 支持边界待确认 | 记录差异或排除 |
| super in nested function invalid | ES2022 | SuperProperty early errors | 待确认 | 待确认 |  | parser/checker 报错文本不做强一致 | fail_compile 映射 |
| static super method | ES2022 | Static MethodDefinition / SuperProperty | 待确认 | 待确认 |  | static method 支持边界需确认 | 语法适配 |
| static super property | ES2022 | Static field / SuperProperty | 待确认 | 待确认 |  | static field 支持边界需确认 | 记录差异或排除 |
| super with getters/setters | ES2022 | Accessor property with receiver | 待确认 | 待确认 |  | getter/setter 支持待确认 | 记录差异或排除 |
| super and prototype lookup | ES2022 | GetSuperBase / GetValue | 待确认 | 待确认 |  | 动态 prototype 修改可能受限 | 差异记录 |
| super with derived fields initialization | ES2022 | Class fields initialization order | 待确认 | 待确认 |  | ArkTS 字段初始化规则需适配 | 语法适配 |
| super abrupt completion | ES2022 | Constructor abrupt completion | 待确认 | 待确认 |  | 异常传播可作为运行时对照 | 语法适配 |
