# Spec Points

## Semantic Category

TypeError Object Behavior

## Related ECMA Concepts

- abstract operation:
- syntax runtime semantics:
- built-in object algorithm:
- internal slot:
- protocol:

## TypeError Trigger Conditions

| 编号 | 触发条件 | 规范入口 | 代表 API/语法 | 优先级 | 备注 |
|---|---|---|---|---|---|
| 01 | TypeError constructor | Native Error Constructor | new TypeError('x') | P0 | 初始规范点 |
| 02 | TypeError.prototype.name | Error Object Properties | TypeError.prototype.name | P0 | 初始规范点 |
| 03 | throw/catch TypeError | ThrowStatement/Catch | throw new TypeError() | P0 | 初始规范点 |
| 04 | subclass extends TypeError | ClassDefinition | class E extends TypeError | P1 | 初始规范点 |

## ArkTS Boundary

| 场景 | ECMA 行为 | ArkTS 静态语言预期 | ArkTS 动态/运行时预期 | 备注 |
|---|---|---|---|---|
| TypeError 错误对象自身行为 | 运行时抛 TypeError | 待确认是否前移为编译期错误 | 待确认是否按 ECMA 抛 TypeError | 初始记录 |

## Open Questions

- 当前 ArkRuntime 是否支持该特性？
- 当前 ArkTS 静态语言是否将该运行时错误前移为编译期错误？
- 是否存在 test262 用例可直接适配？
