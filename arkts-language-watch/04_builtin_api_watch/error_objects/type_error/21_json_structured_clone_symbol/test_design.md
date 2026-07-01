# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- JSON.stringify({ x: 1n }): 应覆盖 JSON.stringify BigInt property。
- JSON.stringify(1n): 应覆盖 JSON.stringify BigInt primitive。
- structuredClone(value): 应覆盖 structuredClone unsupported value。
- Symbol wrapper conversion: 应覆盖 Symbol special conversion。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- SerializeJSONProperty
- SerializeJSONProperty
- StructuredSerialize
- ToString/ToNumber

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `21_json_structured_clone_symbol`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
