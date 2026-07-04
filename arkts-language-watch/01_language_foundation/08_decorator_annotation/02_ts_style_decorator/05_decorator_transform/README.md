# 05 Decorator Transform

本目录用于看护 TS style decorator 的 `05_decorator_transform` 语义场景。

## Scope

- decorator 语法和目标合法性；
- decorator transform / lowering 的行为；
- 与 class、field、method、sendable、module 的交叉；
- compile-time、runtime、bytecode regression、boundary 和 integration 设计。

## Out of Scope

- ArkUI UI framework decorators；
- ArkTS `@interface` annotation 主线；
- 具体 XTS `.ets` 用例代码生成。

<!-- TRANSFORM_DEEPENING_2026_07_03 -->

# Decorator Transform

本目录用于看护 TS style decorator 在 ArkTS 编译链中的 transform / lowering 行为。

## Scope

重点关注：

1. class decorator lowering；
2. property decorator lowering；
3. method decorator lowering；
4. decorator factory lowering；
5. decorator 调用外提；
6. decorator target 参数；
7. decorator property key 参数；
8. decorator expression evaluation；
9. transform 前后 AST 节点关系；
10. shallow copy / shared node pointer 风险；
11. binder context 状态污染；
12. codegen / bytecode regression；
13. PR 10632 根因层。

## Out of Scope

本目录不直接展开：

1. ArkUI decorators；
2. `@interface/@Retention/@Target` annotation；
3. sendable class 语义本身；
4. decorator execution order 的完整顺序规则。

与 sendable 的交叉详见：

`07_decorator_with_sendable/`
