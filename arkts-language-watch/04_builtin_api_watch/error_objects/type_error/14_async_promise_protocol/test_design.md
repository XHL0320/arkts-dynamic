# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- Promise.prototype.then.call({}): 应覆盖 Promise receiver。
- new Promise(nonCallable): 应覆盖 Promise constructor resolver。
- Promise.resolve.call({}): 应覆盖 Promise.resolve receiver。
- Promise.all(badIterable): 应覆盖 Promise combinator iterable。
- for await: 应覆盖 async iterator protocol。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- RequireInternalSlot
- NewPromiseCapability
- SpeciesConstructor/NewPromiseCapability
- IterableToList
- AsyncIterator

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `14_async_promise_protocol`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
