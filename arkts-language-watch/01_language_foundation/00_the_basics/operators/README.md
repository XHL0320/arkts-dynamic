# Operators

## 目录定位

本目录用于看护鸿蒙动态 ArkTS 的运算符体系，重点关注表达式层面的运行时运算语义、隐式类型转换、求值顺序、短路行为、赋值行为和异常边界。

本目录不是 ArkTS 静态 checker 专项，不展开 builtin API 方法行为，不覆盖 declarations 的声明绑定 / TDZ / 重复声明，也不替代 function 的调用、参数、return、closure 章节。

## 看护范围

| 运算符方向 | 看护范围 | 关联章节 |
|---|---|---|
| arithmetic | `+ - * / % **`、number/bigint 边界、字符串拼接边界 | `operators` / `types` |
| equality | `== != === !==`、null/undefined、number/string/boolean 转换边界 | `operators` / `types` |
| relational | `< <= > >=`、string/number/bigint 比较边界 | `operators` / `types` |
| logical | `&& || !`、短路求值、truthy/falsy | `operators` / `types` |
| bitwise | `& | ^ ~ << >> >>>`、ToInt32、bigint 边界 | `operators` |
| assignment | `= += -= *= /= %= **=` 等赋值与复合赋值 | `operators` / `declarations` |
| unary | `typeof void delete + - ++ --` | `operators` / `types` |
| conditional | `condition ? a : b` 求值顺序与分支选择 | `operators` / `statements` |
| optional chaining | `?.` 访问、调用、短路 | `operators` / `function` / `types` |
| nullish coalescing | `??` 与 `||` 的差异 | `operators` / `types` |
| instanceof / in | 原型链、属性存在性判断 | `operators` / `types` / `class` |

## 资产结构

| 文件 / 目录 | 用途 |
|---|---|
| `spec_summary.md` | 运算符规范点摘要 |
| `test_design.md` | 正向、负向、边界、回归测试设计 |
| `coverage_matrix.md` | 总覆盖矩阵 |
| `operator_first_batch_candidate_index.md` | 首批 P0/P1 候选索引 |
| `operator_to_feature_mapping.md` | 与 types / declarations / function / class / statements / builtin API 的 ownership 映射 |
| `xts/` | 后续 XTS 候选目录，本阶段只保留空目录 |
| `issues/` | 已知问题和已修复问题记录 |
