# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- throw TypeError: 应覆盖 筛选 TypeError 用例。
- syntax adaptation: 应覆盖 标记 ArkTS 适用性。
- xts path: 应覆盖 记录 XTS 路径。
- excluded cases: 应覆盖 记录差异原因。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- test262 metadata/search
- ArkTS boundary
- XTS mapping
- difference tracking

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `99_test262_mapping`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
