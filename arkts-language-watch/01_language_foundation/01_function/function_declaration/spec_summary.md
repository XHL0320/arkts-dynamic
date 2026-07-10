# Spec Summary

## Feature

Function Declaration

## Reference

主要参考 ECMAScript 2022 中函数、参数绑定、调用表达式、词法环境和运行时异常相关语义；ECMAScript 2023 增量仅在确认与本功能相关时补充。

## Core Semantics

- 函数声明在声明前调用
- 递归函数声明
- 重复函数声明边界
- 块级函数声明边界
- 函数声明缺少名称
- 函数表达式不提升
- 函数声明作为 callback
- 函数 name 属性

## ArkTS Dynamic Notes

本目录关注鸿蒙动态 ArkTS 的运行时语义。测试应优先验证实际执行行为、异常类型、作用域链和函数对象行为，而不是静态类型推导。

## TypeScript Compatibility Notes

涉及 TypeScript 风格语法时，仅记录动态 ArkTS 的兼容或限制，例如可选参数标记、函数类型标注或 overload signature 语法边界。

## Compile Negative Conditions

- 非法函数语法；
- 非法参数列表；
- 动态 ArkTS 明确不支持的 TS 函数语法；
- 函数外非法 eturn 或声明缺失必要语法元素。

## Runtime Exception Conditions

- 调用非函数值导致 TypeError；
- 引用不存在或不可见绑定导致 ReferenceError；
- callback、默认参数表达式或闭包内部主动抛出异常并向外传播。

## Pending Questions

- 与 test262 的完全一致性待验证；
- 动态 ArkTS 对部分 TS 语法的支持范围待确认；
- 严格模式、模块模式和脚本模式差异需后续拆分。