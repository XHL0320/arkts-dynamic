# Test Design

## Positive Cases

- 函数作为变量值
- 函数作为参数
- 函数作为返回值
- 函数类型标注语法兼容边界
- 非函数传入 callback 位置运行时失败
- 函数对象自定义属性
- function name 属性
- function length 属性

## Compile Negative Cases

- 非法语法应进入 xts/fail_compile/；
- 不支持的 TS 风格函数语法应进入 compatibility boundary 或 fail_compile；
- 每个负向文件只验证一个主要错误点。

## Runtime Exception Cases

- TypeError、ReferenceError 和显式 throw 应进入 xts/fail_runtime/；
- callback 抛异常、参数表达式抛异常和闭包抛异常需要验证传播路径。

## Boundary Cases

- ECMAScript 与动态 ArkTS 行为不确定的点先放 boundary；
- 严格模式、模块模式、test262 差异和 TS 兼容语法都先做边界记录。

## Regression Cases

- 后续发现鸿蒙动态 ArkTS 与 ECMAScript 语义不一致时，在 xts/regression/ 和 issues/ 中记录。

## Test262 Mapping Notes

优先映射 ECMAScript 2022 函数语义相关 test262。TypeScript 兼容语法不直接归为 test262 覆盖。