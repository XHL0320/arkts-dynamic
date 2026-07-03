# TS Style Decorator Watch

本目录用于看护 ArkTS 中 TS 风格 decorator 相关能力。

## Current Focus

当前重点：

1. decorator syntax
2. class decorator
3. property decorator
4. method decorator
5. decorator factory
6. decorator transform / lowering
7. decorator execution order
8. decorator with sendable class
9. decorator with class features
10. decorator module scope
11. regression for compiler pipeline bugs

## Important Regression

PR 10632:

`Sendable class 中装饰器内的语句生成的字节码错误`

该问题属于：

`property decorator + sendable class + transformer + binder + bytecode generation`

应作为 P0 regression 进入：

`07_decorator_with_sendable`
和
`99_mapping_and_regression`
