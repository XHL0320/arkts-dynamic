# test262 Mapping

| 方向 | Baseline Status | test262 是否覆盖 | ArkTS 是否适用 | 处理方式 | 备注 |
|---|---|---|---|---|---|
| TS style decorator | ArkTS-specific / TS-compatible | 否 | 待确认 | ArkTS compiler regression / XTS smoke | Not from test262 |

<!-- SENDABLE_DEEPENING_2026_07_03 -->

# test262 Mapping

## Conclusion

Decorator with sendable class is ArkTS-specific and cannot be directly covered by test262.

## Mapping Table

| 测试方向 | Baseline Status | test262 是否覆盖 | 原因 | 替代测试方式 |
|---|---|---|---|---|
| sendable class recognition | ArkTS-specific | 否 | sendable 是 ArkTS-specific 语义 | compiler expected / XTS smoke |
| binder `inSendable` 标记 | ArkTS-specific | 否 | `inSendable` 是 ArkCompiler binder 内部状态 | bytecode expected |
| decorator transform/lowering | ArkTS-specific | 否 | decorator lowering 不是 ES2022 runtime 语义 | compiler expected |
| property decorator | TS-compatible / ArkTS-specific | 否 | TS style decorator 不属于 test262 常规覆盖 | parser/checker + smoke |
| bytecode sendable generation | ArkTS-specific | 否 | 字节码生成不属于 test262 | bytecode expected |
| PR 10632 regression | ArkTS-specific | 否 | compiler pipeline regression | compiler expected / bytecode expected / XTS smoke |
| decorator 参数引用 module import | Mixed | 否 | module scope 可参考 ES，但 sendable 污染不可由 test262 覆盖 | integration + bytecode expected |
| multiple decorators 状态隔离 | ArkTS-specific | 否 | transformer/binder 状态管理问题 | bytecode expected |
