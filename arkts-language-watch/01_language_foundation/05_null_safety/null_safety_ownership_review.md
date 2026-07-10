# Null Safety Ownership Review

## Purpose

本文件用于确认 `05_null_safety` 章节只负责 null / undefined、空值安全组合、可选链空值场景、空值合并场景、空值访问运行时异常、NonNullable / strict null 边界，避免把 types / operators / function / class / interface / generic / TypeScript compatibility 的完整语义误归入 null_safety。

## Ownership Rule

| 规则类型 | 主归属目录 | Null Safety 中处理方式 |
|---|---|---|
| null / undefined basic | `05_null_safety` + `types` | null_safety 从空值安全视角覆盖 |
| typeof null / undefined | `05_null_safety` + `types` / `operators` | null_safety 只覆盖关键 nullish 行为 |
| null / undefined equality | `05_null_safety` + `operators` | null_safety 只覆盖空值组合 |
| optional chaining nullish scenario | `05_null_safety` + `operators` | null_safety 负责 nullish 场景，operators 负责完整求值 |
| nullish coalescing nullish scenario | `05_null_safety` + `operators` | null_safety 负责 nullish 场景，operators 负责完整运算符语义 |
| nullish assignment | `05_null_safety` + `operators` | null_safety 做边界索引 |
| optional parameter nullish | `05_null_safety` + `01_function` | null_safety 负责 nullish 组合，function 负责参数语义 |
| optional property nullish | `05_null_safety` + `03_interface` / `02_class` | null_safety 负责 nullish 组合 |
| function return nullish | `05_null_safety` + `01_function` | null_safety 负责 null/undefined 返回边界 |
| class field nullish | `05_null_safety` + `02_class` | null_safety 只做 class field 空值边界 |
| generic NonNullable / union nullish | `05_null_safety` + `04_generic` | null_safety 做空值泛型边界 |
| TypeScript strict null checks | `02_typescript_compatibility` | null_safety 做核心语言看护，完整差异后续归 TS compatibility |
| types full runtime model | `00_the_basics/types` | null_safety 不展开 |
| operators full expression semantics | `00_the_basics/operators` | null_safety 不展开 |
| function full semantics | `01_function` | null_safety 不展开 |
| class full semantics | `02_class` | null_safety 不展开 |
| interface full semantics | `03_interface` | null_safety 不展开 |
| generic full semantics | `04_generic` | null_safety 不展开 |

## Potential Misplaced Cases

| 文件路径 | 测试点 | 是否疑似误放 null_safety | 建议处理 |
|---|---|---|---|
| `xts/pass/null_safety_null_basic_pass.ets` | null 基础值 | 否 | keep_as_null_safety — 测试空值安全视角，不展开类型系统 |
| `xts/pass/null_safety_typeof_null_pass.ets` | typeof null | 否 | keep_as_null_safety — 测试 nullish typeof 关键行为 |
| `xts/pass/null_safety_null_undefined_equality_pass.ets` | null/undefined 相等性 | 否 | keep_as_null_safety — 测试空值组合相等性 |
| `xts/pass/null_safety_optional_chaining_property_pass.ets` | 可选链属性 | 否 | keep_as_null_safety — 测试 nullish 场景安全访问 |
| `xts/pass/null_safety_nullish_coalescing_null_pass.ets` | null/undefined ?? | 否 | keep_as_null_safety — 测试 nullish 触发 fallback |
| `xts/pass/null_safety_default_parameter_null_pass.ets` | 默认参数 null | 否 | keep_as_null_safety — 测试 null vs undefined 触发差异 |
| `xts/fail_runtime/null_safety_property_access_on_null_fail_runtime.ets` | null 属性访问 TypeError | 否 | keep_as_null_safety — 测试空值访问异常 |
| `xts/boundary/null_safety_non_null_assertion_boundary.ets` | ! 非空断言 | 否 | keep_as_null_safety_boundary — 测试空值安全边界 |
| `xts/boundary/null_safety_nonnullable_boundary.ets` | NonNullable<T> | 否 | keep_as_null_safety_boundary — 测试空值泛型边界 |
| `xts/boundary/null_safety_class_field_null_boundary.ets` | class field null | 否 | keep_as_null_safety_boundary — 测试字段空值边界 |

**结论：未发现疑似误放文件。** 所有 30 个 .ets 文件均正确归属于 null_safety 章节管辖范围。

## Cross Feature Ownership

| 交叉点 | Null Safety 负责 | 关联章节负责 | 说明 |
|---|---|---|---|
| optional chaining | null/undefined 场景下安全访问 | operators 负责完整求值顺序和短路 | 避免重复 |
| nullish coalescing | null/undefined 触发 fallback 与 falsy 差异 | operators 负责完整表达式语义 | 避免重复 |
| optional parameter | omitted / undefined / null 组合 | function 负责参数和默认值完整语义 | 避免重复 |
| optional property | absent / undefined / null 组合 | interface/class 负责成员声明完整语义 | 避免重复 |
| NonNullable | 空值排除边界索引 | generic/TS compatibility 负责完整类型工具语义 | 避免重复 |
| runtime exception | nullish 属性访问/方法调用异常 | types/operators 负责基础对象访问语义 | 避免重复 |

## Conclusion

经过逐文件审查，当前 null_safety 章节的 30 个 .ets 候选用例均正确归属于空值安全体系管辖范围。没有发现需要迁移到 types / operators / function / class / interface / generic / TypeScript compatibility 的误放文件。

交叉场景的处理符合 ownership 规则：
- 可选链只测试 null/undefined 场景下安全访问，不展开运算符完整求值语义
- 空值合并只测试 null/undefined 触发 fallback 和 falsy 差异，不展开运算符完整语义
- 可选参数只测试 omitted/undefined/null 组合，不展开函数参数完整语义
- 可选属性只测试 absent/undefined/null 组合，不展开 interface/class 成员完整语义
- NonNullable 只做空值排除边界索引，不展开泛型完整语义
- 运行时异常只测试 nullish 属性访问/方法调用 TypeError，不展开基础对象访问语义
