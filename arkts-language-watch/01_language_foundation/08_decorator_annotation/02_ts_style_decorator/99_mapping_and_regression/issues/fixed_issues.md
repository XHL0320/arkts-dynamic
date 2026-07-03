# Fixed Issues

| 问题标题 | Decorator 场景 | 修复说明 | 风险等级 | 状态 | 备注 |
|---|---|---|---|---|---|
| PR 10632 | sendable class + property decorator + decorator argument function | transformer 外提 decorator 调用后，binder 错误保留 `inSendable` 状态导致字节码错误 | P0 | fixed | 需要 bytecode regression + XTS smoke |
