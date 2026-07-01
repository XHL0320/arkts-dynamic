# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- new WeakMap([[1, 'a']]): 应覆盖 WeakMap constructor primitive key。
- new WeakSet([1]): 应覆盖 WeakSet constructor primitive value。
- wm.set(1, 'a'): 应覆盖 WeakMap set primitive key。
- ws.add(1): 应覆盖 WeakSet add primitive value。
- registered/non-registered Symbol: 应覆盖 Symbol weak key support。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- CanBeHeldWeakly
- CanBeHeldWeakly
- CanBeHeldWeakly
- CanBeHeldWeakly
- CanBeHeldWeakly

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `17_weak_collection_key`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
