# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- Array subclass map: 应覆盖 Array species non-constructor。
- Promise.prototype.then: 应覆盖 Promise species non-constructor。
- RegExp subclass: 应覆盖 RegExp species non-constructor。
- TypedArray.prototype.map: 应覆盖 TypedArray species non-constructor。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- SpeciesConstructor
- SpeciesConstructor
- SpeciesConstructor
- SpeciesConstructor

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `19_species_constructor`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
