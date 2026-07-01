# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- for (const x of obj): 应覆盖 @@iterator not callable。
- spread obj: 应覆盖 @@iterator returns non-object。
- Array.from(iterable): 应覆盖 next not callable。
- for-of: 应覆盖 next returns non-object。
- iterator close: 应覆盖 return not callable。
- Promise.all(iterable): 应覆盖 Promise combinator iterable。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- GetIterator
- GetIterator
- IteratorNext
- IteratorNext
- IteratorClose
- IterableToList

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `13_iterator_protocol`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
