# test262 Mapping

## Principle

TS style decorator、decorator transform、sendable class、binder inSendable、bytecode generation 均不属于 ECMAScript 2022/test262 直接覆盖范围。

## Mapping Table

| 方向 | Baseline Status | test262 是否覆盖 | ArkTS 是否适用 | 处理方式 | 备注 |
|---|---|---|---|---|---|
| class decorator | TS-compatible / ArkTS-specific | 否 | 待确认 | ArkTS compiler / XTS smoke | Not from test262 |
| property decorator | TS-compatible / ArkTS-specific | 否 | 待确认 | ArkTS compiler / XTS smoke | Not from test262 |
| method decorator | TS-compatible / ArkTS-specific | 否 | 待确认 | ArkTS compiler / XTS smoke | Not from test262 |
| decorator factory | TS-compatible / ArkTS-specific | 否 | 待确认 | ArkTS compiler / XTS smoke | Not from test262 |
| decorator execution order | TS-compatible / ArkTS-specific | 否 | 待确认 | ArkTS runtime smoke | Not from test262 |
| decorator transform | ArkTS-specific | 否 | 是 | compiler transform regression | Not from test262 |
| decorator bytecode generation | ArkTS-specific | 否 | 是 | bytecode expected | Not from test262 |
| decorator with sendable class | ArkTS-specific | 否 | 是 | bytecode regression | PR 10632 area |
| PR 10632 regression | ArkTS-specific | 否 | 是 | ArkTS compiler regression / bytecode expected / XTS smoke | Not from test262 |
| ArkUI decorators out of scope | Framework-specific | 否 | 否 | exclude | Not this language watch |
| `@interface` annotation out of current scope | ArkTS-specific | 否 | 后续 | separate annotation watch | Not current focus |

## Conclusion

PR 10632 不属于 test262 可覆盖范围，应由 ArkTS compiler regression / bytecode expected / XTS smoke test 覆盖。
