# Spec Summary

## Feature

Function Expression

## Reference

主要参考 ECMAScript 2022 中 FunctionExpression、NamedEvaluation、CallExpression、Lexical Environment 和 Function object 相关语义。

## Core Semantics

- 函数表达式赋值后调用
- 函数表达式不提升
- 匿名函数表达式 name 推断
- 具名函数表达式内部名称绑定
- 具名函数表达式递归调用
- 函数表达式作为对象属性
- 函数表达式作为 callback
- IIFE 函数表达式
- 函数表达式求值时抛异常
- 函数表达式与 this 绑定边界

## ArkTS Dynamic Notes

动态 ArkTS 应把函数表达式作为运行时可调用值处理。测试应区分函数声明的 hoisting 与函数表达式的求值/赋值时机。

## TypeScript Compatibility Notes

函数表达式可能带 TS 风格参数或返回类型标注。这里仅确认动态 ArkTS 是否接受该语法以及运行时行为是否稳定，不做静态类型系统推断。

## Compile Negative Conditions

- 非法函数表达式语法；
- 不支持的 TS 风格函数表达式标注；
- IIFE 或具名函数表达式语法错误。

## Runtime Exception Conditions

- 在赋值前调用函数表达式绑定；
- 函数表达式求值阶段抛异常；
- callback 中函数表达式抛异常并向外传播。

## Pending Questions

- 动态 ArkTS 对匿名函数表达式 
ame 推断是否与 ECMAScript 一致；
- 具名函数表达式内部名称是否只在函数体内可见；
- IIFE 与模块顶层副作用顺序是否需要单独拆分。