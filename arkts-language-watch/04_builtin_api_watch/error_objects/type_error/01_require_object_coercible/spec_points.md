# Spec Points

## Semantic Category

RequireObjectCoercible TypeError

## Related ECMA Concepts

- abstract operation:
- syntax runtime semantics:
- built-in object algorithm:
- internal slot:
- protocol:

## TypeError Trigger Conditions

| 编号 | 触发条件 | 规范入口 | 代表 API/语法 | 优先级 | 备注 |
|---|---|---|---|---|---|
| 01 | null receiver | RequireObjectCoercible | String.prototype.trim.call(null) | P0 | 初始规范点 |
| 02 | undefined receiver | RequireObjectCoercible | String.prototype.trim.call(undefined) | P0 | 初始规范点 |
| 03 | Array prototype null receiver | RequireObjectCoercible | Array.prototype.forEach.call(null, cb) | P0 | 初始规范点 |
| 04 | Object static null | RequireObjectCoercible | Object.keys(null) | P0 | 初始规范点 |
| 05 | Object static undefined | RequireObjectCoercible | Object.values(undefined) | P0 | 初始规范点 |

## ArkTS Boundary

| 场景 | ECMA 行为 | ArkTS 静态语言预期 | ArkTS 动态/运行时预期 | 备注 |
|---|---|---|---|---|
| RequireObjectCoercible: null/undefined 不能作为对象使用 | 运行时抛 TypeError | 待确认是否前移为编译期错误 | 待确认是否按 ECMA 抛 TypeError | 初始记录 |

## Open Questions

- 当前 ArkRuntime 是否支持该特性？
- 当前 ArkTS 静态语言是否将该运行时错误前移为编译期错误？
- 是否存在 test262 用例可直接适配？
