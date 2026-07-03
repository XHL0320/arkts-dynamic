# PR 10632 Sendable Property Decorator Regression

## PR

https://gitcode.com/openharmony/arkcompiler_ets_frontend/pull/10632

## Title

[Bug]: Sendable class 中装饰器内的语句生成的字节码错误

## Category

Property Decorator / Sendable Class / Transformer / Binder / Bytecode

## Bug Description

在 sendable class 中使用类属性装饰器时，经过 TS transformer 转化后，装饰器会被转到 class 外部，但原有 decorator 节点依然保留在 AST 中，且原有 decorator 节点与转化后的节点共用相同指针。binder 阶段 decorator 节点内的函数被错误标记为 `inSendable`，导致生成字节码时生成 sendable 相关字节码。

## Root Cause

1. property decorator 源码位置位于 sendable class 内；
2. TS transformer 将 decorator 调用外提到 class 外；
3. 原始 AST decorator 节点仍保留；
4. 原始节点与转换后节点共享相同指针；
5. binder 遍历原始节点时将 decorator 内函数标记为 `inSendable`；
6. 转换后 class 外节点复用同一指针，旧 `inSendable` 状态污染 codegen；
7. 最终生成错误 sendable 字节码。

## Fix Summary

修复方式不是在 transformer 中做深拷贝，而是在设置函数 `inSendable` 标签时显式传入 bool：

- 如果当前函数处于 sendable class 或 sendable function 内，则设置为 true；
- 如果当前函数不在 sendable class 内，则设置为 false；
- 这样 transformer 后 class 外部的 decorator 节点可以覆盖旧状态，避免原始节点污染。

## Compiler Pipeline Impact

| 阶段 | 是否相关 | 说明 |
|---|---|---|
| Parser | 是 | 解析 property decorator |
| AST | 是 | 原始 decorator 节点和转换后节点共享指针 |
| Transformer | 是 | decorator 调用被外提到 class 外部 |
| Binder | 是 | 错误设置 `inSendable` |
| Checker | 间接 | decorator 表达式和函数类型 |
| CodeGen | 是 | 生成错误 sendable 字节码 |
| Runtime | 间接 | 错误字节码可能导致运行异常或语义错误 |

## Regression Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 建议目录 |
|---|---|---|---|---|
| PR10632-001 | sendable class 中 property decorator 参数里的 arrow function 不应被标记为 inSendable | bytecode regression | P0 | 07_decorator_with_sendable |
| PR10632-002 | property decorator transform 后 class 外部 decorator 调用不应生成 sendable function 字节码 | bytecode regression | P0 | 05_decorator_transform |
| PR10632-003 | sendable class 本体仍应生成 sendable class 字节码 | regression/pass | P0 | 07_decorator_with_sendable |
| PR10632-004 | 非 sendable class property decorator 对照 | pass | P1 | 02_property_decorator |
| PR10632-005 | sendable class 普通方法内部 arrow function 仍应保持 sendable 语义 | integration | P1 | 07_decorator_with_sendable |
| PR10632-006 | 多个 property decorators 不应互相污染 inSendable 标记 | regression | P1 | 07_decorator_with_sendable |

## Suggested XTS / Compiler Tests

优先生成 bytecode expected 测试，其次生成 XTS smoke 测试。

## Conclusion

该 PR 属于 TS style property decorator 看护范围，不属于 ArkUI UI decorator，也不属于 `@interface` annotation 主线。
