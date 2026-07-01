# Spec Points

## Semantic Category

Construct Non-Constructor TypeError

## Related ECMA Concepts

- abstract operation:
- syntax runtime semantics:
- built-in object algorithm:
- internal slot:
- protocol:

## TypeError Trigger Conditions

| 编号 | 触发条件 | 规范入口 | 代表 API/语法 | 优先级 | 备注 |
|---|---|---|---|---|---|
| 01 | arrow function with new | IsConstructor | new arrowFunction() | P0 | 初始规范点 |
| 02 | async function with new | IsConstructor | new asyncFunction() | P1 | 初始规范点 |
| 03 | Math with new | IsConstructor | new Math() | P0 | 初始规范点 |
| 04 | Symbol with new | IsConstructor | new Symbol() | P0 | 初始规范点 |
| 05 | Reflect.construct target | IsConstructor | Reflect.construct(nonCtor, []) | P0 | 初始规范点 |

## ArkTS Boundary

| 场景 | ECMA 行为 | ArkTS 静态语言预期 | ArkTS 动态/运行时预期 | 备注 |
|---|---|---|---|---|
| 构造非 constructor 对象 | 运行时抛 TypeError | 待确认是否前移为编译期错误 | 待确认是否按 ECMA 抛 TypeError | 初始记录 |

## Open Questions

- 当前 ArkRuntime 是否支持该特性？
- 当前 ArkTS 静态语言是否将该运行时错误前移为编译期错误？
- 是否存在 test262 用例可直接适配？
