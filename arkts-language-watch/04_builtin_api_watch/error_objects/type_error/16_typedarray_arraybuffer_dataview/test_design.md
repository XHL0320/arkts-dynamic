# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- Int8Array.prototype.set.call({}): 应覆盖 TypedArray receiver。
- DataView.prototype.getInt8.call({}): 应覆盖 DataView receiver。
- ArrayBuffer.prototype.slice.call({}): 应覆盖 ArrayBuffer receiver。
- typedArray on detached buffer: 应覆盖 detached buffer。
- BigInt64Array write Number: 应覆盖 BigInt typed array mismatch。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- ValidateTypedArray
- RequireInternalSlot
- RequireInternalSlot
- IsDetachedBuffer
- ToBigInt

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `16_typedarray_arraybuffer_dataview`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
