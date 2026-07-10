# Type Ownership Review

## Purpose

本文件用于确认 types 章节只负责基础运行时类型、类型识别、类型转换边界和 TypeScript 类型语法兼容边界，避免把 operators / function / class / builtin API 的专属行为误归入 types。

## Ownership Rule

| 规则类型 | 主归属目录 | Types 中处理方式 |
|---|---|---|
| typeof 基础行为 | `00_the_basics/types` | 主负责 |
| null / undefined 区分 | `00_the_basics/types` | 主负责 |
| number / string / boolean / bigint / symbol 基础识别 | `00_the_basics/types` | 主负责 |
| object / array / function object 基础运行时类型 | `00_the_basics/types` | 主负责 |
| instanceof 基础行为 | `00_the_basics/types` | 主负责，后续与 class / operators 联动 |
| ToBoolean / ToNumber / ToString 基础转换边界 | `00_the_basics/types` | 主负责基础点 |
| number + bigint 混合运算 | `00_the_basics/operators` | Types 只记录类型边界，不展开全量运算 |
| + / - / == / === / < / > 等运算符全量行为 | `00_the_basics/operators` | 不在 types 展开 |
| function call / return / closure | `01_function` | 不在 types 展开 |
| class constructor / method / field / inheritance | `02_class` | 不在 types 展开 |
| Array / String / Number / BigInt builtin 方法 | `04_builtin_api_watch` | 不在 types 展开 |
| TypeScript type annotation / union / literal / type alias | `00_the_basics/types` + `02_typescript_compatibility` | Types 做边界索引，详细兼容差异后续归 TS compatibility |

## Potential Misplaced Cases

| 文件路径 | 测试点 | 是否疑似误放 types | 建议处理 |
|---|---|---|---|
| `xts/pass/type_number_bigint_compare_pass.ets` | number / bigint comparison | 轻微交叉 operators | keep_as_type_boundary |
| `xts/fail_runtime/type_number_bigint_add_fail_runtime.ets` | number + bigint runtime error | 轻微交叉 operators | keep_as_type_boundary |
| `xts/pass/type_null_undefined_loose_equal_pass.ets` | null == undefined | 轻微交叉 operators | keep_as_type_boundary |
| `xts/pass/type_null_undefined_strict_not_equal_pass.ets` | null !== undefined | 轻微交叉 operators | keep_as_type_boundary |
| `xts/pass/type_instanceof_class_pass.ets` | class instance instanceof class | 轻微交叉 class/operators | keep_as_type_boundary |
| `xts/pass/type_array_runtime_type_pass.ets` | Array.isArray smoke | 轻微交叉 builtin API | keep_as_type_boundary |

## Cross Feature Ownership

| 交叉点 | Types 负责 | 关联章节负责 | 说明 |
|---|---|---|---|
| number / bigint | 类型识别与边界 | operators 负责全量运算 | 避免重复 |
| function object | typeof / instanceof 基础识别 | function 负责调用、参数、return、closure | 避免重复 |
| class instance | instanceof 基础识别 | class 负责构造、继承、成员 | 避免重复 |
| array object | typeof / instanceof 基础识别 | builtin API 负责 Array 方法 | 避免重复 |
| TS type syntax | boundary 索引 | TypeScript compatibility 负责详细差异 | 避免重复 |

## Conclusion

当前 Stage 1 用例整体仍属于 types 基础识别和边界层。少量用例触及 operators、class、builtin API，但仅作为类型边界 smoke 保留，不展开全量运算符、class 语义或 builtin 方法行为。
