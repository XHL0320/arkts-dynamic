# Statements

## 目录定位

本目录用于看护鸿蒙动态 ArkTS 的语句体系，关注控制流语句、块语句、循环语句、异常语句、跳转语句和标签语句的执行语义。

本目录**不是** ArkTS 静态 checker 专项，不展开静态类型检查规则；也**不覆盖** ArkUI / Ability / UI framework。

## 看护范围

| 语句方向 | 看护范围 | 关联章节 |
|---|---|---|
| block / empty / expression | 块语句、空语句、表达式语句基础执行 | `statements` / `operators` |
| if / switch | 条件分支、case 匹配、default、fall-through | `statements` / `operators` |
| while / do while | 循环条件、循环体、break / continue | `statements` / `operators` |
| for | init / condition / update 执行顺序、break / continue | `statements` / `declarations` / `operators` |
| for-in / for-of | 枚举对象属性、迭代数组 / iterable 边界 | `statements` / `types` / `builtin API` |
| break / continue | 跳转目标、标签、非法位置 | `statements` |
| return | 函数外非法、与 function return 行为交叉 | `statements` / `function` |
| throw / try / catch / finally | 异常传播、finally 执行、catch 绑定 | `statements` / `declarations` |
| labelled | label、break label、continue label 边界 | `statements` |
| debugger | debugger 语句基础语法和运行边界 | `statements` |

## 与其他章节的关系

- 控制流语句执行语义归本目录。
- 表达式计算、运算符短路和求值顺序归 `operators`；本目录只使用表达式作为条件或子表达式。
- 声明绑定、TDZ、重复声明归 `declarations`；for 初始化中的声明可做交叉说明。
- 函数调用、参数、return 返回值语义归 `01_function`；return outside function 的语法边界归本目录。
- throw / try / catch / finally 的语句执行和异常传播归本目录。

详见 `statement_to_feature_mapping.md`。

## 资产类型

| 文件 | 作用 |
|---|---|
| `README.md` | 当前目录定位与看护范围 |
| `spec_summary.md` | 语句体系规范摘要 |
| `test_design.md` | 正向、负向、运行时异常、边界和回归测试设计 |
| `coverage_matrix.md` | 覆盖点和建议路径 |
| `statement_first_batch_candidate_index.md` | 首批候选用例索引 |
| `statement_to_feature_mapping.md` | 语句体系到其他语言特性的映射 |
| `statement_stage0_generation_report.md` | Stage 0 生成报告 |
| `xts/` | 后续 XTS / ohosTest 候选目录 |
| `issues/` | 已知问题与已修复回归 |

Stage 0 只完成设计骨架、覆盖矩阵和首批候选索引，不批量生成 `.ets` 用例。
