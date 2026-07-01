# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
|  |  |  | 待确认 | 待确认 |  |  |  |

<!-- CLASS_TYPE_DETAILED_WATCH_V1 -->
# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
| ---------- | -------------------- | ------- | ---------- | ------ | ------ | ---- | ---- |
| class constructor runtime value | ES2022 | ClassDefinition runtime value | 待确认 | 需要适配 |  | 只验证 class value，不验证 ArkTS class type | 运行时交叉验证 |
| class cannot be called without new | ES2022 | Class constructor call | 待确认 | 需要适配 |  | ArkTS 可能前移为 checker 错误 | 静态/运行时分流 |
| prototype property | ES2022 | Class prototype | 待确认 | 需要适配 |  | 验证运行时 prototype | 运行时交叉验证 |
| instance constructor property | ES2022 | prototype.constructor | 待确认 | 需要适配 |  | 验证实例 constructor property | 运行时交叉验证 |
| instanceof class | ES2022 | instanceof operator | 待确认 | 需要适配 |  | 验证 prototype chain | 运行时交叉验证 |
| class inheritance runtime behavior | ES2022 | Class extends | 待确认 | 需要适配 |  | 只映射运行时继承 | 运行时交叉验证 |
| static members runtime behavior | ES2022 | Static fields/methods | 待确认 | 需要适配 |  | static side 类型规则仍由 ArkTS checker 设计 | 运行时交叉验证 |
| class type-specific behavior is ArkTS-specific, not from test262 | ArkTS-specific / TS-compatible | ArkTS class type checker | 是 | 不适用 test262 |  | test262 无静态类型系统 | 使用 ArkTS spec/checker 用例设计 |
| TypeScript class type compatibility reference, not test262 | ArkTS-specific / TS-compatible | TS compatibility reference | 是 | 不适用 test262 |  | TS 仅作参考，不能替代 ArkTS 规范 | 使用 ArkTS spec/checker 用例设计 |
| object literal to class type is ArkTS-specific/TS-compatible | ArkTS-specific / TS-compatible | ArkTS assignability | 是 | 不适用 test262 |  | ECMA/test262 不覆盖静态赋值兼容 | 使用 ArkTS spec/checker 用例设计 |
| constructor type / typeof Class | ArkTS-specific / TS-compatible | ArkTS constructor type checker | 是 | 不适用 test262 |  | typeof Class 类型含义不是 ECMA typeof 运行时语义 | 记录支持边界并设计 checker 用例 |
| static side vs instance side | ArkTS-specific / TS-compatible | ArkTS class type checker | 是 | 不适用 test262 |  | 静态类型区分非 test262 覆盖点 | 使用 ArkTS spec/checker 用例设计 |
