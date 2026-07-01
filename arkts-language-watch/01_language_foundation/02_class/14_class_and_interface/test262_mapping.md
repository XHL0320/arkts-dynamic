# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
|  |  |  | 待确认 | 待确认 |  |  |  |

<!-- CLASS_INTERFACE_DETAILED_WATCH_V1 -->
# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
| ---------- | -------------------- | ------- | ---------- | ------ | ------ | ---- | ---- |
| interface-specific behavior is ArkTS-specific, not from test262 | ArkTS-specific / TS-compatible | ArkTS checker interface rules | 是 | 不适用 test262 |  | ECMA 无 interface 语法 | 使用 ArkTS spec/checker 用例设计 |
| implements-specific checker behavior is ArkTS-specific, not from test262 | ArkTS-specific / TS-compatible | ArkTS checker implements rules | 是 | 不适用 test262 |  | test262 不覆盖 implements 静态检查 | 使用 ArkTS spec/checker 用例设计 |
| class instance runtime behavior | ES2022 | Class instance runtime | 待确认 | 需要适配 |  | 仅验证 class instance，不验证 interface | 运行时交叉验证 |
| prototype chain | ES2022 | Class prototype chain | 待确认 | 需要适配 |  | implements 不应改变 prototype | 运行时交叉验证 |
| instanceof class | ES2022 | instanceof operator | 待确认 | 需要适配 |  | interface 不是运行时 constructor | 运行时交叉验证 |
| method call runtime behavior | ES2022 | MethodDefinition / Call | 待确认 | 需要适配 |  | 验证 class method 调用，不验证 interface | 运行时交叉验证 |
| field access runtime behavior | ES2022 | Class fields / property access | 待确认 | 需要适配 |  | 验证 class field 访问 | 运行时交叉验证 |
| class inheritance runtime behavior | ES2022 | Class extends | 待确认 | 需要适配 |  | extends + implements 中只映射 runtime extends | 运行时交叉验证 |
| TypeScript interface compatibility reference, not test262 | ArkTS-specific / TS-compatible | TS compatibility reference | 是 | 不适用 test262 |  | TS 只作参考，不能替代 ArkTS 规范 | 使用 ArkTS spec/checker 用例设计 |
| object literal structural compatibility, ArkTS-specific/TS-compatible | ArkTS-specific / TS-compatible | ArkTS type assignability | 是 | 不适用 test262 |  | ECMA/test262 不覆盖静态结构兼容 | 使用 ArkTS spec/checker 用例设计 |
| private/protected member compatibility | ArkTS-specific / TS-compatible | ArkTS accessibility checker | 是 | 不适用 test262 |  | 静态可见性规则 | 使用 fail_compile 用例 |
| generic interface implements | ArkTS-specific | ArkTS generics/interfaces | 是 | 不适用 test262 |  | 非 ECMA 运行时特性 | 使用 ArkTS spec/checker 用例设计 |
| abstract class implements interface | ArkTS-specific | ArkTS abstract/interface checker | 是 | 不适用 test262 |  | 非 ECMA 运行时特性 | 使用 ArkTS spec/checker 用例设计 |
| module import interface implements | ArkTS-specific | ArkTS modules/interfaces | 是 | 不适用 test262 |  | test262 不覆盖 ArkTS module checker | 使用跨模块 checker 用例 |
