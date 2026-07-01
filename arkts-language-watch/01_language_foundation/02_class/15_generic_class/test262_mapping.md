# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
|  |  |  | 待确认 | 待确认 |  |  |  |

<!-- CLASS_GENERIC_CLASS_DETAILED_WATCH_V1 -->
# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
| ---------- | -------------------- | ------- | ---------- | ------ | ------ | ---- | ---- |
| generic-specific behavior is ArkTS-specific/TS-compatible, not from test262 | ArkTS-specific / TS-compatible | ArkTS generic checker | 是 | 不适用 test262 |  | ECMA 无 generic class 类型系统 | 使用 ArkTS spec/checker 用例设计 |
| class constructor runtime behavior | ES2022 | ClassDefinition / constructor | 待确认 | 需要适配 |  | 仅作为 runtime class 交叉验证 | 运行时交叉验证 |
| class cannot be called without new | ES2022 | Class constructor call | 待确认 | 需要适配 |  | 泛型擦除后仍是 class runtime | 运行时交叉验证 |
| prototype property | ES2022 | prototype property | 待确认 | 需要适配 |  | 不推导 generic checking | 运行时交叉验证 |
| instanceof class | ES2022 | instanceof operator | 待确认 | 需要适配 |  | 类型实参不参与 instanceof | 运行时交叉验证 |
| class fields runtime behavior | ES2022 | Class fields | 待确认 | 需要适配 |  | generic field 运行时只是普通字段 | 运行时交叉验证 |
| class methods runtime behavior | ES2022 | Class methods | 待确认 | 需要适配 |  | generic method 运行时只是普通方法 | 运行时交叉验证 |
| class inheritance runtime behavior | ES2022 | Class extends | 待确认 | 需要适配 |  | generic inheritance type checking 另行设计 | 运行时交叉验证 |
| static members runtime behavior | ES2022 | Static members | 待确认 | 需要适配 |  | static T 规则不归 test262 | 运行时交叉验证 |
| type erasure runtime contrast, ArkTS-specific | ArkTS-specific | ArkTS runtime boundary | 是 | 不适用 test262 |  | 用于记录类型擦除差异 | 差异记录 |
| TypeScript generic compatibility reference, not test262 | ArkTS-specific / TS-compatible | TS compatibility reference | 是 | 不适用 test262 |  | TS 只作参考 | 使用 ArkTS spec/checker 用例设计 |
| generic constraints are ArkTS-specific/TS-compatible, not test262 | ArkTS-specific / TS-compatible | ArkTS constraints checker | 是 | 不适用 test262 |  | ECMA 无泛型约束 | 使用 ArkTS spec/checker 用例设计 |
| generic default type parameters are ArkTS-specific/TS-compatible, not test262 | ArkTS-specific / TS-compatible | ArkTS default generic checker | 是 | 不适用 test262 |  | ECMA 无默认类型参数 | 记录支持边界 |
| generic implements interface is ArkTS-specific/TS-compatible, not test262 | ArkTS-specific / TS-compatible | ArkTS interface checker | 是 | 不适用 test262 |  | ECMA 无 interface | 使用 ArkTS spec/checker 用例设计 |
