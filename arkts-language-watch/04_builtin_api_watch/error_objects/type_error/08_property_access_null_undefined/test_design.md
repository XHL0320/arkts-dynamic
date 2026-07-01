# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- null.x: 应覆盖 null property get。
- undefined.x: 应覆盖 undefined property get。
- null['x']: 应覆盖 null computed get。
- undefined.method(): 应覆盖 undefined method call。
- null?.x: 应覆盖 optional chaining control。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- GetValue/RequireObjectCoercible
- GetValue/RequireObjectCoercible
- PropertyAccess
- EvaluateCall
- OptionalExpression

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `08_property_access_null_undefined`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
