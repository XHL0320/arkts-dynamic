# Test Design

## Positive Cases

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

## Compile Negative Cases

- 非法函数表达式语法；
- 不支持的 TS 风格函数表达式类型标注；
- IIFE 缺少调用括号或参数列表非法。

## Runtime Exception Cases

- 函数表达式赋值前调用；
- 函数表达式求值时表达式抛异常；
- callback 内函数表达式抛异常传播。

## Boundary Cases

- 匿名函数表达式 
ame 推断；
- 具名函数表达式名称外部可见性；
- 函数表达式作为对象属性时的 	his；
- IIFE 顶层副作用顺序。

## Regression Cases

- 函数表达式被误当作声明提升；
- name 推断与 test262 不一致；
- 具名函数表达式内部绑定丢失。

## Test262 Mapping Notes

优先映射 ECMAScript 2022 FunctionExpression、NamedEvaluation 和 IIFE 相关 test262。TypeScript 标注兼容不属于 test262 直接覆盖。