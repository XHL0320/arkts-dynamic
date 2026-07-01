# Spec Points

## Semantic Category

静态源码解析阶段 SyntaxError

## Related ECMA Concepts

- abstract operation:
- syntax runtime semantics:
- built-in object algorithm:
- internal slot:
- protocol:

## Error Trigger Conditions

| 编号 | 触发条件 | 规范入口 | 代表 API/语法 | 优先级 | 备注 |
|---|---|---|---|---|---|
| 01 | 非法 token | 待确认 | 非法 token | P0 | 初始规范点 |
| 02 | 非法声明 | 待确认 | 非法声明 | P0 | 初始规范点 |
| 03 | 非法语句 | 待确认 | 非法语句 | P0 | 初始规范点 |
| 04 | 非法模块语法 | 待确认 | 非法模块语法 | P0 | 初始规范点 |
| 05 | parser negative | 待确认 | parser negative | P0 | 初始规范点 |

## ArkTS Boundary

| 场景 | ECMA 行为 | ArkTS 静态语言预期 | ArkTS 动态/运行时预期 | 备注 |
|---|---|---|---|---|
| Static parse error | 运行时异常或解析失败 | 待确认是否前移为编译期错误 | 待确认 ArkRuntime 行为 | 初始记录 |

## Open Questions

- 当前 ArkRuntime 是否支持该特性？
- 是否可能被 ArkTS 静态语言前移为编译期错误？
- 是否存在 test262 用例可直接适配？
