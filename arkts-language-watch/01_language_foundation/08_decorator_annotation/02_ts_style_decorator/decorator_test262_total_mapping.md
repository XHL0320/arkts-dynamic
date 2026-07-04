# Decorator test262 Total Mapping

## Conclusion

TS style decorator、decorator transform/lowering、decorator factory、decorator execution order、sendable class integration、ArkTS bytecode regression 不属于 ECMAScript 2022 test262 直接覆盖范围。

## Mapping Table

| 方向 | Baseline Status | test262 是否覆盖 | ArkTS 是否适用 | 处理方式 | 备注 |
|---|---|---|---|---|---|
| decorator syntax | TS-compatible / ArkTS-specific | 否 | 是 | parser/checker + XTS smoke | Not from test262 |
| class decorator | TS-compatible / ArkTS-specific | 否 | 是 | compiler expected / smoke | Not from test262 |
| property decorator | TS-compatible / ArkTS-specific | 否 | 是 | compiler expected / smoke | Not from test262 |
| method decorator | TS-compatible / ArkTS-specific | 否 | 是 | compiler expected / smoke | Not from test262 |
| decorator factory | TS-compatible / ArkTS-specific | 否 | 是 | XTS smoke / boundary | Not from test262 |
| decorator transform/lowering | ArkTS-specific | 否 | 是 | compiler expected / bytecode expected | Not from test262 |
| decorator execution order | TS-compatible / ArkTS-specific | 否 | 是 | runtime smoke / compiler expected | Not from test262 |
| decorator module scope | Mixed | 否 | 是 | multi-file integration | Not from test262 |
| decorator with class features | Mixed | 否 | 是 | parser/checker / integration | Not from test262 |
| decorator with sendable | ArkTS-specific | 否 | 是 | bytecode expected / XTS smoke | Not from test262 |
| PR 10632 | ArkTS-specific | 否 | 是 | bytecode expected + XTS smoke | sendable-specific regression |
| ArkUI decorators out of scope | Framework-specific | 否 | 否 | 不纳入本目录 | Out of scope |
| ArkTS @interface annotation out of current scope | ArkTS-specific | 否 | 否 | 后续在 01_arkts_annotation 展开 | Out of scope |

## PR 10632 Boundary

PR 10632 不属于 test262 覆盖范围；它作为 sendable-specific bytecode regression 归入 `07_decorator_with_sendable`，并与 `05_decorator_transform` 建立根因关联。
