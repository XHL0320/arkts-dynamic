# Decorator Regression Index

## Regression Table

| ID | 来源 | 问题标题 | 主归属目录 | 关联目录 | 风险等级 | 状态 | 建议测试类型 | 备注 |
|---|---|---|---|---|---|---|---|---|
| DECORATOR-REG-0001 | PR 10632 | Sendable class 中装饰器内的语句生成的字节码错误 | 07_decorator_with_sendable | 02_property_decorator, 04_decorator_factory, 05_decorator_transform, 09_decorator_module_scope | P0 | fixed | bytecode expected + XTS smoke | property decorator + factory parameter + imported binding + transform/lowering + binder inSendable |

## Boundary Notes

1. PR 10632 不是 syntax bug；
2. PR 10632 不是 class decorator bug；
3. PR 10632 不是 method decorator bug；
4. PR 10632 不是 module scope bug；
5. PR 10632 不是 execution order bug；
6. PR 10632 主归属是 sendable-specific regression；
7. 普通主线中只保留 reference。
