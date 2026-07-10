# Types

## 目录定位

本目录用于看护鸿蒙动态 ArkTS 的基础类型体系，关注动态语言运行时类型行为和 TypeScript 类型语法兼容边界。

本目录**不是** ArkTS 静态类型 checker 专项，不展开静态泛型、静态 overload resolution 或类型擦除规则；也**不覆盖** ArkUI / Ability / UI framework。

## 看护范围

| 类型方向 | 看护范围 | 关联章节 |
|---|---|---|
| primitive types | number/string/boolean/bigint/symbol/null/undefined 基础行为 | `types` |
| object type | object、array、function、class instance 的运行时类型 | `types` / `class` / `function` |
| typeof | typeof 返回值、未声明变量、函数、对象、null 等行为 | `types` / `operators` |
| instanceof | 原型链判断、class instance、非对象边界 | `types` / `operators` / `class` |
| type annotation | TypeScript 类型标注在动态 ArkTS 中的兼容边界 | `types` / `typescript_compatibility` |
| union/literal/type alias | TS 类型语法兼容与限制 | `types` / `typescript_compatibility` |
| conversion | 显式/隐式类型转换边界 | `types` / `operators` |

## 与其他章节的关系

- 基础运行时类型识别、typeof、instanceof 基础行为归本目录。
- 具体运算符行为归 `operators`（+、-、==、===、<、>）。
- 函数作为对象的基础类型识别可归本目录，但函数调用、参数、return、closure 归 `01_function`。
- class instance 的 instanceof 基础判断可归本目录，class 成员、constructor、继承归 `02_class`。
- Array / String / Number / BigInt 等 builtin API 的方法行为归 builtin API watch。
- TS 类型标注、union、literal、type alias 在动态 ArkTS 中的支持状态在本目录做边界索引，详细兼容差异映射到 typescript_compatibility。

详见 `type_to_feature_mapping.md`。

## 资产类型

| 文件 | 作用 |
|---|---|
| `README.md` | 当前目录定位与看护范围 |
| `spec_summary.md` | 类型体系规范摘要 |
| `test_design.md` | 正向、负向、运行时异常、边界和回归测试设计 |
| `coverage_matrix.md` | 覆盖点和建议路径 |
| `type_first_batch_candidate_index.md` | 首批候选用例索引 |
| `type_to_feature_mapping.md` | 类型体系到其他语言特性的映射 |
| `type_stage0_generation_report.md` | Stage 0 生成报告 |
| `xts/` | 后续 XTS / ohosTest 候选目录 |
| `issues/` | 已知问题与已修复回归 |

Stage 0 只完成设计骨架、覆盖矩阵和首批候选索引，不批量生成 `.ets` 用例。
