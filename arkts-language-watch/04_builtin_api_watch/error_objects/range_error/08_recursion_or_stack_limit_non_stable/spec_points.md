# Spec Points

## Semantic Category

递归过深、调用栈溢出等非稳定场景

## Related ECMA Concepts

- abstract operation:
- syntax runtime semantics:
- built-in object algorithm:
- internal slot:
- protocol:

## Error Trigger Conditions

| 编号 | 触发条件 | 规范入口 | 代表 API/语法 | 优先级 | 备注 |
|---|---|---|---|---|---|
| 01 | 部分引擎 RangeError | 待确认 | 部分引擎 RangeError | P3 | 初始规范点 |
| 02 | 部分引擎 InternalError | 待确认 | 部分引擎 InternalError | P3 | 初始规范点 |
| 03 | 不作为稳定标准必测 | 待确认 | 不作为稳定标准必测 | P3 | 初始规范点 |

## ArkTS Boundary

| 场景 | ECMA 行为 | ArkTS 静态语言预期 | ArkTS 动态/运行时预期 | 备注 |
|---|---|---|---|---|
| Recursion or stack limit non-stable | 运行时异常或解析失败 | 待确认是否前移为编译期错误 | 待确认 ArkRuntime 行为 | 初始记录 |

## Open Questions

- 当前 ArkRuntime 是否支持该特性？
- 是否可能被 ArkTS 静态语言前移为编译期错误？
- 是否存在 test262 用例可直接适配？
