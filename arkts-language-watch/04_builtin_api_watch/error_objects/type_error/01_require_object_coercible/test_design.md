# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- String.prototype.trim.call(null): 应覆盖 null receiver。
- String.prototype.trim.call(undefined): 应覆盖 undefined receiver。
- Array.prototype.forEach.call(null, cb): 应覆盖 Array prototype null receiver。
- Object.keys(null): 应覆盖 Object static null。
- Object.values(undefined): 应覆盖 Object static undefined。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- RequireObjectCoercible
- RequireObjectCoercible
- RequireObjectCoercible
- RequireObjectCoercible
- RequireObjectCoercible

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `01_require_object_coercible`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
