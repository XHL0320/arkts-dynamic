# Decorator and Annotation Watch

本目录用于看护 ArkTS 语言层面的 decorator / annotation 相关能力。

## Scope

本目录分为两条主线：

| 子目录 | 范围 | 当前优先级 |
|---|---|---|
| `01_arkts_annotation/` | ArkTS annotation 机制，例如 `@interface`、`@Retention`、`@Target`、annotation field、runtime access | 后续展开 |
| `02_ts_style_decorator/` | TS 风格 decorator，例如 class/property/method decorator、decorator factory、transform/lowering、sendable 交叉 | 当前优先 |

## Out of Scope

本轮暂不覆盖 ArkUI UI 框架装饰器：

- `@Entry`
- `@Component`
- `@State`
- `@Prop`
- `@Link`
- `@Builder`
- `@Provide`
- `@Consume`

这些属于 ArkUI framework / UI state management 范围，不放入当前语言层 decorator watch。
