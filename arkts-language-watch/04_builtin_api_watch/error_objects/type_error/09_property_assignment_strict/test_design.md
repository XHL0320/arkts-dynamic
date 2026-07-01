# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- obj.x = 1: 应覆盖 non-writable property write。
- obj.x = 1: 应覆盖 getter-only property write。
- Object.freeze(obj).x = 1: 应覆盖 frozen object property write。
- Object.preventExtensions(obj).x = 1: 应覆盖 non-extensible add。
- delete obj.x: 应覆盖 delete non-configurable。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- PutValue/Set
- Set
- Set
- Set
- Delete

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `09_property_assignment_strict`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
