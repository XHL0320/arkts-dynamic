# 00 Decorator Syntax

本目录用于看护 TS style decorator 的 `00_decorator_syntax` 语义场景。

## Scope

- decorator 语法和目标合法性；
- decorator transform / lowering 的行为；
- 与 class、field、method、sendable、module 的交叉；
- compile-time、runtime、bytecode regression、boundary 和 integration 设计。

## Out of Scope

- ArkUI UI framework decorators；
- ArkTS `@interface` annotation 主线；
- 具体 XTS `.ets` 用例代码生成。

<!-- SYNTAX_DEEPENING_2026_07_03 -->

# Decorator Syntax

本目录用于看护 TS style decorator 的基础语法规则。

## Scope

重点关注：

1. decorator 基础写法；
2. decorator 标识符形式；
3. decorator factory call 形式；
4. decorator 表达式形态；
5. decorator 与 class/property/method 声明的语法位置；
6. decorator 与 export/default/static/readonly/visibility 修饰符的相对位置；
7. decorator 与换行、注释、空白的组合；
8. 多个 decorators 的基础排列语法；
9. decorator 非法位置；
10. parser/checker negative；
11. unsupported target boundary；
12. 与 class/property/method/factory 目录的交叉引用。

## Regression Boundary

PR 10632 属于 property decorator + transform + sendable 的历史 regression，不属于基础 syntax 主线。本目录只在 regression index 中保留引用，不展开 sendable 变体。

## Out of Scope

本目录不直接展开：

1. ArkUI UI decorators；
2. `@interface/@Retention/@Target` annotation；
3. property decorator target/key 完整语义；
4. method decorator descriptor 完整语义；
5. class decorator 返回值语义；
6. decorator factory 求值顺序完整语义；
7. decorator transform/lowering 字节码细节；
8. sendable class 语义本体。

相关交叉目录：

- `01_class_decorator/`
- `02_property_decorator/`
- `03_method_decorator/`
- `04_decorator_factory/`
- `05_decorator_transform/`
