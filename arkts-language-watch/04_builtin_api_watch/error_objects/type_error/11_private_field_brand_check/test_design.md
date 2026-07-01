# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- A.prototype.m.call({}): 应覆盖 private field wrong receiver。
- A.prototype.m.call({}): 应覆盖 private method wrong receiver。
- A getter on wrong object: 应覆盖 private accessor wrong receiver。
- static private access: 应覆盖 static private wrong receiver。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- PrivateFieldGet
- PrivateMethodOrAccessorAdd/Get
- PrivateGet/Set
- PrivateBrandCheck

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `11_private_field_brand_check`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
