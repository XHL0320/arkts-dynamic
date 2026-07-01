# Spec Points

## Semantic Category

Property Access on Null / Undefined TypeError

## Related ECMA Concepts

- abstract operation:
- syntax runtime semantics:
- built-in object algorithm:
- internal slot:
- protocol:

## TypeError Trigger Conditions

| 编号 | 触发条件 | 规范入口 | 代表 API/语法 | 优先级 | 备注 |
|---|---|---|---|---|---|
| 01 | null property get | GetValue/RequireObjectCoercible | null.x | P0 | 初始规范点 |
| 02 | undefined property get | GetValue/RequireObjectCoercible | undefined.x | P0 | 初始规范点 |
| 03 | null computed get | PropertyAccess | null['x'] | P0 | 初始规范点 |
| 04 | undefined method call | EvaluateCall | undefined.method() | P0 | 初始规范点 |
| 05 | optional chaining control | OptionalExpression | null?.x | P1 | 初始规范点 |

## ArkTS Boundary

| 场景 | ECMA 行为 | ArkTS 静态语言预期 | ArkTS 动态/运行时预期 | 备注 |
|---|---|---|---|---|
| null/undefined 属性访问 | 运行时抛 TypeError | 待确认是否前移为编译期错误 | 待确认是否按 ECMA 抛 TypeError | 初始记录 |

## Open Questions

- 当前 ArkRuntime 是否支持该特性？
- 当前 ArkTS 静态语言是否将该运行时错误前移为编译期错误？
- 是否存在 test262 用例可直接适配？
