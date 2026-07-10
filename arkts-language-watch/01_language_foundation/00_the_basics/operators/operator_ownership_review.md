# Operator Ownership Review

## Purpose

本文件用于确认 operators 章节只负责表达式运算、求值顺序、短路行为、类型转换边界和运算异常，避免把 types / function / class / statements / builtin API 的专属行为误归入 operators。

## Ownership Rule

| 规则类型 | 主归属目录 | Operators 中处理方式 |
|---|---|---|
| 算术运算符 | `00_the_basics/operators` | 主负责 |
| 相等 / 关系运算符 | `00_the_basics/operators` | 主负责 |
| 逻辑运算符和短路求值 | `00_the_basics/operators` | 主负责 |
| 可选链 / 空值合并 | `00_the_basics/operators` | 主负责 |
| typeof 作为运算符的边界 | `00_the_basics/operators` | 负责表达式边界 |
| typeof 基础类型返回值 | `00_the_basics/types` | operators 不重复全量覆盖 |
| instanceof 基础判断 | `operators` + `types` | operators 负责运算符行为，types 负责类型识别入口 |
| function call / return / closure | `01_function` | 不在 operators 展开 |
| class constructor / method / field / inheritance | `02_class` | 不在 operators 展开 |
| if / for / while / switch 语句控制流 | `00_the_basics/statements` | 不在 operators 展开 |
| 条件表达式 `?:` | `00_the_basics/operators` | 主负责 |
| Array / String / Number / BigInt builtin 方法 | `04_builtin_api_watch` | 不在 operators 展开 |
| 声明绑定 / TDZ / 重复声明 | `00_the_basics/declarations` | 不在 operators 展开 |

## Potential Misplaced Cases

| 文件路径 | 测试点 | 是否疑似误放 operators | 建议处理 |
|---|---|---|---|
| `xts/pass/operator_typeof_function_pass.ets` | typeof function | 轻微交叉 function/types | keep_as_operator_boundary |
| `xts/pass/operator_instanceof_class_pass.ets` | instanceof class | 轻微交叉 class/types | keep_as_operator_boundary |
| `xts/pass/operator_conditional_true_branch_pass.ets` | conditional expression true branch | 轻微交叉 statements | keep_as_operator_boundary |
| `xts/pass/operator_conditional_false_branch_pass.ets` | conditional expression false branch | 轻微交叉 statements | keep_as_operator_boundary |

## Cross Feature Ownership

| 交叉点 | Operators 负责 | 关联章节负责 | 说明 |
|---|---|---|---|
| number / bigint | 混合运算异常、比较运算 | types 负责类型识别 | 避免重复 |
| typeof | 表达式边界、未声明变量 | types 负责基础返回值 | 避免重复 |
| optional chaining | 短路、属性访问、方法调用边界 | function 负责函数调用语义 | 避免重复 |
| instanceof | 运算符行为 | class 负责构造、继承、成员 | 避免重复 |
| conditional expression | `?:` 表达式求值 | statements 负责 if/switch 等语句 | 避免重复 |
| builtin methods | 不负责 | builtin API 负责方法行为 | 避免重复 |

## Conclusion

当前 operators 用例主要聚焦表达式运算语义。少量涉及 function/class/statements 的场景均为表达式级交叉 smoke，建议保留在 operators，并在对应章节后续做集成或更完整语义验证。
