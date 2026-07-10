# 05 Null Safety

## 目录定位

本目录用于看护鸿蒙动态 ArkTS 的空值安全体系，关注 `null`、`undefined`、可选链、空值合并、非空断言、可选属性、函数默认参数、NonNullable 等边界。

与 interface/generic 不同，null 和 undefined 在 ECMAScript 运行时有真实语义。本目录同时覆盖 ECMAScript 运行时行为和 TypeScript/ArkTS 类型系统 null safety 边界。

本目录**不是** ArkTS 静态 checker 专项；也**不覆盖** ArkUI / Ability / UI framework。

## 子目录结构

| 子目录 | 看护范围 | 当前状态 |
|---|---|---|
| `optional_chaining/` | `?.` 属性访问、方法调用、元素访问、短路 | Stage 0 placeholder |
| `null_coalescing_operator/` | `??` 空值合并、`??=` 空值赋值 | Stage 0 placeholder |
| `non_null_assertion_operator/` | `!` 非空断言支持边界 | Stage 0 placeholder |

## 看护范围

| Null Safety 方向 | 看护范围 | 关联章节 |
|---|---|---|
| null / undefined basic | null、undefined 基础值、typeof、相等性边界 | `null_safety` / `types` / `operators` |
| equality boundary | `==` / `===` / `!=` / `!==` 中 nullish 行为 | `null_safety` / `operators` |
| optional chaining | `obj?.prop`、`obj?.method()`、`arr?.[index]` | `null_safety` / `operators` |
| nullish coalescing | `??`、短路、与 `||` 差异 | `null_safety` / `operators` |
| nullish assignment | `??=` 边界 | `null_safety` / `operators` |
| non-null assertion | `value!` 支持边界 | `null_safety` / `typescript_compatibility` |
| optional property | 可选属性与 undefined 边界 | `null_safety` / `interface` / `class` |
| function parameter | 默认参数、optional parameter、null/undefined 传参 | `null_safety` / `function` |
| generic null safety | NonNullable、T | null、T extends object 边界 | `null_safety` / `generic` |
| runtime exception | null / undefined 属性访问、方法调用异常 | `null_safety` / `types` / `operators` |

## 与其他章节的关系

- null/undefined 基础值、空值安全行为、运行时异常和 TS/ArkTS null safety 边界归本目录。
- 基础运行时类型识别归 `types`；本目录从空值安全角度覆盖 typeof/nullish 行为。
- 表达式运算、短路和可选链/空值合并运算符基础语义归 `operators`；本目录负责空值安全场景组合。
- 函数调用/参数/return 归 `01_function`；本目录负责 null/undefined 作为参数/返回值的边界。

详见 `null_safety_to_feature_mapping.md`。

## 资产类型

| 文件 | 作用 |
|---|---|
| `README.md` | 当前目录定位与看护范围 |
| `spec_summary.md` | 空值安全体系规范摘要 |
| `test_design.md` | 正向、负向、运行时异常、边界测试设计 |
| `coverage_matrix.md` | 覆盖点和建议路径 |
| `null_safety_first_batch_candidate_index.md` | 首批候选用例索引 |
| `null_safety_to_feature_mapping.md` | 空值安全到其他语言特性的映射 |
| `null_safety_stage0_generation_report.md` | Stage 0 生成报告 |
| `xts/` | 后续 XTS / ohosTest 候选目录 |
| `issues/` | 已知问题与已修复回归 |

Stage 0 只完成设计骨架、覆盖矩阵和首批候选索引，不批量生成 `.ets` 用例。
