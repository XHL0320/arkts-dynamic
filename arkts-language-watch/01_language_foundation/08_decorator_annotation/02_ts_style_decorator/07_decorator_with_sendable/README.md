# 07 Decorator With Sendable

本目录用于看护 TS style decorator 的 `07_decorator_with_sendable` 语义场景。

## Scope

- decorator 语法和目标合法性；
- decorator transform / lowering 的行为；
- 与 class、field、method、sendable、module 的交叉；
- compile-time、runtime、bytecode regression、boundary 和 integration 设计。

## Out of Scope

- ArkUI UI framework decorators；
- ArkTS `@interface` annotation 主线；
- 具体 XTS `.ets` 用例代码生成。

<!-- SENDABLE_DEEPENING_2026_07_03 -->

# Decorator With Sendable

本目录用于看护 TS style decorator 与 ArkTS sendable class / sendable function 的交叉语义。

## Scope

重点关注：

1. sendable class 中的 property decorator；
2. decorator factory；
3. decorator 参数表达式；
4. decorator 参数中的 arrow function / normal function；
5. decorator 参数引用 module import；
6. decorator transform/lowering 后 class 外执行逻辑；
7. binder `inSendable` 标记是否正确；
8. bytecode 是否错误生成 sendable 相关指令；
9. PR 10632 regression。

## Out of Scope

本目录不关注：

1. ArkUI UI decorators；
2. `@interface/@Retention/@Target` annotation；
3. 纯 decorator syntax；
4. 与 sendable 无关的 decorator execution order。
