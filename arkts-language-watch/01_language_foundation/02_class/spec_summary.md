# Class Spec Summary

## Feature

ArkTS Class

## ECMA Baseline Status

ES2022

## Standard Source

- ECMAScript 2022 Class Definitions
- ECMAScript 2022 Object / Function / Constructor runtime semantics
- ArkTS official language documentation
- ArkTS static language rules
- TypeScript class/type behavior as compatibility reference

## Definition

Class 是 ArkTS 中描述对象结构、实例成员、构造逻辑、继承关系和类型约束的核心语言结构。

在看护中需要同时关注：

1. class 作为运行时值；
2. class 作为实例类型；
3. constructor 作为构造器；
4. instance side 与 static side 的区别；
5. ArkTS 静态检查与 ECMAScript 运行时行为的边界。

## Watch Scope

本目录覆盖：

- class declaration
- class type
- class instantiation
- field
- method
- constructor
- visibility modifiers
- inheritance
- super
- override
- static members
- readonly members
- object literal compatibility
- abstract class
- class and interface
- generic class
- this in class
- class scope
- class initialization order
- class runtime behavior

## ArkTS Boundary

需要重点记录：

- ECMAScript class runtime error 是否在 ArkTS 静态语言中前移为编译期错误；
- ArkTS 是否支持 class expression、private field、static block 等 ES2022 class 能力；
- ArkTS class 是结构类型兼容为主，还是存在名义类型限制；
- private/protected/readonly 是否影响类型兼容；
- class 与 interface、object literal、generic 的交叉行为；
- ArkTS checker 与 ArkRuntime 行为是否一致。

## Out of Scope

- ArkUI Component class/struct 组件模型；
- Ability 生命周期；
- UI 状态管理；
- 非 Class 语言特性的大规模展开。
