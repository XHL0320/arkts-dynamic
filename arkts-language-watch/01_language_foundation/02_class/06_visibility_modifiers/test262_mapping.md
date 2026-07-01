# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
|  |  |  | 待确认 | 待确认 |  |  |  |

<!-- CLASS_VISIBILITY_DETAILED_WATCH_V1 -->
# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
| ---------- | -------------------- | ------- | ---------- | ------ | ------ | ---- | ---- |
| TypeScript-style private/protected/public is ArkTS-specific or TS-compatible, not from test262 | ArkTS-specific / TS-compatible | ArkTS visibility checker | 是 | 不适用 test262 |  | ECMA 无 TS-style visibility | 使用 ArkTS spec/checker 用例设计 |
| ECMAScript private fields #x, only if ArkTS supports it | ES2022 | PrivateFieldDefinition | 待确认 | 待确认 |  | ArkTS 是否支持 #private 未确认 | 记录差异或排除 |
| private field brand check, only if ArkTS supports #private | ES2022 | Private field brand check | 待确认 | 待确认 |  | 仅适用于 #private | 记录差异或排除 |
| public class fields runtime behavior | ES2022 | Class fields | 待确认 | 需要适配 |  | 只验证 public runtime，不验证 TS visibility | 运行时交叉验证 |
| public class methods runtime behavior | ES2022 | MethodDefinition | 待确认 | 需要适配 |  | 只验证普通方法 runtime | 运行时交叉验证 |
| static fields runtime behavior | ES2022 | Static fields | 待确认 | 需要适配 |  | visibility 规则由 ArkTS checker 设计 | 运行时交叉验证 |
| static methods runtime behavior | ES2022 | Static methods | 待确认 | 需要适配 |  | visibility 规则由 ArkTS checker 设计 | 运行时交叉验证 |
| class inheritance runtime behavior | ES2022 | Class extends | 待确认 | 需要适配 |  | protected/private 静态规则不由 test262 覆盖 | 运行时交叉验证 |
| prototype chain | ES2022 | Prototype chain | 待确认 | 需要适配 |  | visibility 不应改变 prototype | 运行时交叉验证 |
| instanceof class | ES2022 | instanceof operator | 待确认 | 需要适配 |  | visibility 不应改变 instanceof | 运行时交叉验证 |
| interface compatibility with private/protected | ArkTS-specific / TS-compatible | ArkTS interface checker | 是 | 不适用 test262 |  | 静态可见性规则 | 使用 ArkTS spec/checker 用例设计 |
| object literal compatibility with private/protected | ArkTS-specific / TS-compatible | ArkTS assignability checker | 是 | 不适用 test262 |  | 静态类型兼容规则 | 使用 ArkTS spec/checker 用例设计 |
