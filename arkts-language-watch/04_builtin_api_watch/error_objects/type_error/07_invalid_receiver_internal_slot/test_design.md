# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- Map.prototype.get.call({}): 应覆盖 Map receiver。
- Set.prototype.add.call({}): 应覆盖 Set receiver。
- Date.prototype.getTime.call({}): 应覆盖 Date receiver。
- RegExp.prototype.exec.call({}): 应覆盖 RegExp receiver。
- Promise.prototype.then.call({}): 应覆盖 Promise receiver。
- DataView.prototype.getInt8.call({}): 应覆盖 DataView receiver。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- RequireInternalSlot
- RequireInternalSlot
- RequireInternalSlot
- RequireInternalSlot
- RequireInternalSlot
- RequireInternalSlot

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `07_invalid_receiver_internal_slot`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
