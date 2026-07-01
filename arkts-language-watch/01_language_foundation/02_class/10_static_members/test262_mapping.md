# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
|  |  |  | 待确认 | 待确认 |  |  |  |

<!-- CLASS_STATIC_MEMBERS_DETAILED_WATCH_V1 -->
# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
| ---------- | -------------------- | ------- | ---------- | ------ | ------ | ---- | ---- |
| public static field | ES2022 | Class static fields | 待确认 | 需要适配 |  | ArkTS 语法支持待确认 | 运行时交叉验证 |
| public static method | ES2022 | Static MethodDefinition | 待确认 | 需要适配 |  | ArkTS 语法支持待确认 | 运行时交叉验证 |
| static field initialization order | ES2022 | Class field definition evaluation | 待确认 | 需要适配 |  | 静态类型规则另行设计 | 运行时交叉验证 |
| static method inheritance | ES2022 | Class extends / constructor prototype chain | 待确认 | 需要适配 |  | 覆盖 runtime 继承 | 运行时交叉验证 |
| static field inheritance | ES2022 | Constructor object property lookup | 待确认 | 需要适配 |  | 覆盖 runtime property lookup | 运行时交叉验证 |
| static super method | ES2022 | SuperProperty in static method | 待确认 | 需要适配 |  | ArkTS super 支持范围待确认 | 语法适配 |
| static super property | ES2022 | SuperProperty in static method | 待确认 | 待确认 |  | super.staticField 支持待确认 | 记录差异或排除 |
| static block, only if ArkTS supports it | ES2022 | StaticBlock | 待确认 | 待确认 |  | ArkTS static block 支持未确认 | 记录差异或排除 |
| static block abrupt completion, only if ArkTS supports it | ES2022 | ClassEvaluation abrupt completion | 待确认 | 待确认 |  | 仅 static block 支持时纳入 | 记录差异或排除 |
| static private field, only if ArkTS supports ECMAScript #private | ES2022 | Private static fields | 待确认 | 待确认 |  | #private static 支持未确认 | 记录差异或排除 |
| class evaluation with static members | ES2022 | ClassEvaluation | 待确认 | 需要适配 |  | 运行时初始化顺序 | 运行时交叉验证 |
| constructor object property behavior | ES2022 | Property access on class constructor | 待确认 | 需要适配 |  | 验证 static 位于 constructor object | 运行时交叉验证 |
| static members are not on instances | ES2022 / ArkTS-specific | Property access / checker | 待确认 | 需要适配 |  | ECMA runtime 与 ArkTS checker 分流 | 静态/运行时分流 |
| static this binding | ES2022 | Call static method | 待确认 | 需要适配 |  | 验证 derived this 绑定 | 运行时交叉验证 |
| TypeScript/ArkTS static type checking is not from test262 | ArkTS-specific / TS-compatible | ArkTS checker | 是 | 不适用 test262 |  | test262 不覆盖 ArkTS 静态类型规则 | 使用 ArkTS spec/checker 用例设计 |
