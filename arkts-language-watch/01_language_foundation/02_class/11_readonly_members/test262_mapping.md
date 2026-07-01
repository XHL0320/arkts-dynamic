# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
|  |  |  | 待确认 | 待确认 |  |  |  |

<!-- CLASS_READONLY_MEMBERS_DETAILED_WATCH_V1 -->
# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
| ---------- | -------------------- | ------- | ---------- | ------ | ------ | ---- | ---- |
| readonly-specific behavior is ArkTS-specific/TS-compatible, not from test262 | ArkTS-specific / TS-compatible | ArkTS readonly checker | 是 | 不适用 test262 |  | ECMA 无 readonly class field 语法 | 使用 ArkTS spec/checker 用例设计 |
| public instance field initialization | ES2022 | Public class fields | 待确认 | 需要适配 |  | 只映射运行时字段初始化 | 运行时交叉验证 |
| public static field initialization | ES2022 | Static class fields | 待确认 | 需要适配 |  | 只映射 static field 初始化 | 运行时交叉验证 |
| field initialization order | ES2022 | FieldDefinition evaluation | 待确认 | 需要适配 |  | readonly 静态规则另行设计 | 运行时交叉验证 |
| constructor initialization order | ES2022 | Constructor execution | 待确认 | 需要适配 |  | readonly constructor 赋值是 ArkTS checker 规则 | 运行时交叉验证 |
| derived class field initialization | ES2022 | Derived class fields | 待确认 | 需要适配 |  | 继承初始化顺序 | 运行时交叉验证 |
| static field inheritance | ES2022 | Constructor object property lookup | 待确认 | 需要适配 |  | readonly static 规则另行设计 | 运行时交叉验证 |
| class fields are runtime properties | ES2022 | Class field runtime property | 待确认 | 需要适配 |  | 用于确认 property descriptor 边界 | 运行时交叉验证 |
| property assignment runtime behavior, only for dynamic boundary | ES2022 | Assignment to property | 待确认 | 待确认 |  | 静态 checker 拦截时不直接映射 | 记录为 ArkTS Static Boundary |
| Object.freeze comparison, only as runtime contrast if needed | ES2022 | Object.freeze | 待确认 | 待确认 |  | readonly 不等于 freeze | 仅作差异对照 |
