# Spec Points

## Semantic Category

JSON / Structured Clone / Symbol Special TypeError

## Related ECMA Concepts

- abstract operation:
- syntax runtime semantics:
- built-in object algorithm:
- internal slot:
- protocol:

## TypeError Trigger Conditions

| 编号 | 触发条件 | 规范入口 | 代表 API/语法 | 优先级 | 备注 |
|---|---|---|---|---|---|
| 01 | JSON.stringify BigInt property | SerializeJSONProperty | JSON.stringify({ x: 1n }) | P3 | 初始规范点 |
| 02 | JSON.stringify BigInt primitive | SerializeJSONProperty | JSON.stringify(1n) | P3 | 初始规范点 |
| 03 | structuredClone unsupported value | StructuredSerialize | structuredClone(value) | P3 | 初始规范点 |
| 04 | Symbol special conversion | ToString/ToNumber | Symbol wrapper conversion | P3 | 初始规范点 |

## ArkTS Boundary

| 场景 | ECMA 行为 | ArkTS 静态语言预期 | ArkTS 动态/运行时预期 | 备注 |
|---|---|---|---|---|
| JSON/structuredClone/Symbol 特殊 TypeError | 运行时抛 TypeError | 待确认是否前移为编译期错误 | 待确认是否按 ECMA 抛 TypeError | 初始记录 |

## Open Questions

- 当前 ArkRuntime 是否支持该特性？
- 当前 ArkTS 静态语言是否将该运行时错误前移为编译期错误？
- 是否存在 test262 用例可直接适配？
