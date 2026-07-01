# Spec Points

## Semantic Category

现代 eval 通常不主动抛 EvalError

## Related ECMA Concepts

- abstract operation:
- syntax runtime semantics:
- built-in object algorithm:
- internal slot:
- protocol:

## Error Trigger Conditions

| 编号 | 触发条件 | 规范入口 | 代表 API/语法 | 优先级 | 备注 |
|---|---|---|---|---|---|
| 01 | eval SyntaxError | 待确认 | eval SyntaxError | P3 | 初始规范点 |
| 02 | eval 运行时具体错误 | 待确认 | eval 运行时具体错误 | P3 | 初始规范点 |
| 03 | 兼容保留 | 待确认 | 兼容保留 | P3 | 初始规范点 |
| 04 | eval 支持确认 | 待确认 | eval 支持确认 | P3 | 初始规范点 |

## ArkTS Boundary

| 场景 | ECMA 行为 | ArkTS 静态语言预期 | ArkTS 动态/运行时预期 | 备注 |
|---|---|---|---|---|
| eval does not normally throw EvalError | 运行时异常或解析失败 | 待确认是否前移为编译期错误 | 待确认 ArkRuntime 行为 | 初始记录 |

## Open Questions

- 当前 ArkRuntime 是否支持该特性？
- 是否可能被 ArkTS 静态语言前移为编译期错误？
- 是否存在 test262 用例可直接适配？
