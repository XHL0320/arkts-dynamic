# Spec Points

## Semantic Category

非标准 stack 行为

## Related ECMA Concepts

- abstract operation:
- syntax runtime semantics:
- built-in object algorithm:
- internal slot:
- protocol:

## Error Trigger Conditions

| 编号 | 触发条件 | 规范入口 | 代表 API/语法 | 优先级 | 备注 |
|---|---|---|---|---|---|
| 01 | stack 非 ECMA 标准强制属性 | 待确认 | stack 非 ECMA 标准强制属性 | P3 | 初始规范点 |
| 02 | ArkRuntime stack | 待确认 | ArkRuntime stack | P3 | 初始规范点 |
| 03 | 引擎差异 | 待确认 | 引擎差异 | P3 | 初始规范点 |
| 04 | 不作为标准必测 | 待确认 | 不作为标准必测 | P3 | 初始规范点 |

## ArkTS Boundary

| 场景 | ECMA 行为 | ArkTS 静态语言预期 | ArkTS 动态/运行时预期 | 备注 |
|---|---|---|---|---|
| Stack Non-standard Behavior | 运行时异常或解析失败 | 待确认是否前移为编译期错误 | 待确认 ArkRuntime 行为 | 初始记录 |

## Open Questions

- 当前 ArkRuntime 是否支持该特性？
- 是否可能被 ArkTS 静态语言前移为编译期错误？
- 是否存在 test262 用例可直接适配？
