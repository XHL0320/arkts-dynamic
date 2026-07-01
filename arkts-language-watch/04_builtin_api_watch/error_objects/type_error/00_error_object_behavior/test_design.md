# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- new TypeError('x'): 应覆盖 TypeError constructor。
- TypeError.prototype.name: 应覆盖 TypeError.prototype.name。
- throw new TypeError(): 应覆盖 throw/catch TypeError。
- class E extends TypeError: 应覆盖 subclass extends TypeError。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- Native Error Constructor
- Error Object Properties
- ThrowStatement/Catch
- ClassDefinition

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `00_error_object_behavior`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
