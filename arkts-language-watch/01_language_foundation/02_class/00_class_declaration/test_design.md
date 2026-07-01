# Test Design

## Positive Cases

记录合法语法、合法类型、正常运行场景。

## Compile Negative Cases

记录 parser/checker 应拦截的错误。

## Runtime Error Cases

记录符合 ECMA 运行时语义的异常场景，如 TypeError、ReferenceError 等。

## Boundary Cases

记录边界场景，如空类、空构造、重复字段、继承边界、初始化顺序等。

## Type System Cases

记录 class 与类型系统相关的场景：

- class as type
- class as value
- constructor type
- instance type
- assignability
- object literal compatibility
- interface compatibility
- generic compatibility

## Inheritance / Integration Cases

记录与继承、interface、abstract、generic、module、null safety 等组合场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## test262 Candidate Cases

记录可参考或适配的 test262 用例方向。

## Regression Cases

记录历史缺陷或后续回归用例。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
|---|---|---|---|---|
| 001 | class 声明语法 | pass | P0 | 初始设计点 |
| 002 | class 名称绑定 | fail_compile | P0 | 初始设计点 |
| 003 | class 声明作用域 | boundary | P0 | 初始设计点 |
| 004 | class declaration TDZ | fail_runtime | P0 | 初始设计点 |
| 005 | 重复声明 | integration | P0 | 初始设计点 |
| 006 | export class | regression | P0 | 初始设计点 |
| 007 | default export class | pass | P0 | 初始设计点 |
| 008 | class expression 是否支持，需确认 ArkTS 行为 | fail_compile | P0 | 初始设计点 |
| 009 | 正向基础场景 | boundary | P1 | 初始设计点 |
| 010 | 编译负向场景 | fail_runtime | P1 | 初始设计点 |
