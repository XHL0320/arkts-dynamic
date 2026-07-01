# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- number(): 应覆盖 number call。
- object(): 应覆盖 object call。
- null(): 应覆盖 null call。
- obj.method(): 应覆盖 method value non-callable。
- Function.prototype.call.call({}): 应覆盖 Function.prototype.call receiver。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- IsCallable
- IsCallable
- IsCallable
- EvaluateCall
- IsCallable

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `05_call_non_callable`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
