# Fixed Issues

| 问题标题 | Decorator 场景 | 修复说明 | 风险等级 | 状态 | 备注 |
|---|---|---|---|---|---|

<!-- SENDABLE_DEEPENING_2026_07_03 -->

| PR 10632 | Sendable class 中装饰器内的语句生成的字节码错误 | property decorator + sendable class + transformer + binder + bytecode | P0 | fixed | 需要 bytecode regression + XTS smoke |
