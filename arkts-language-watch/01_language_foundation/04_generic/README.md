# 04 Generic

## 目录定位

本目录用于看护鸿蒙动态 ArkTS 的泛型体系，关注 TypeScript/ArkTS generic 语法兼容、动态运行时擦除、泛型函数、泛型类、泛型接口、泛型约束、泛型默认参数和泛型推断边界。

Generic 在 ECMAScript 运行时中没有原生语义，属于 TypeScript / ArkTS 类型语法兼容层。本目录关注的是编译期语法兼容、动态运行时是否擦除、泛型实参是否参与运行时、泛型约束是否被检查。

本目录**不是** ArkTS 静态 checker 专项；也**不覆盖** ArkUI / Ability / UI framework。

## 子目录结构

| 子目录 | 看护范围 | 当前状态 |
|---|---|---|
| `generic_function/` | 泛型函数声明、调用、显式类型实参、推断 | Stage 0 placeholder |
| `generic_class_and_interface/` | 泛型类、泛型接口、泛型方法 | Stage 0 placeholder |
| `generic_constraints/` | 泛型约束 `T extends U` | Stage 0 placeholder |
| `generic_default/` | 泛型参数默认值 | Stage 0 placeholder |
| `generic_type_and_function/` | 嵌套泛型、数组泛型、对象泛型、union 边界 | Stage 0 placeholder |

## 看护范围

| Generic 方向 | 看护范围 | 关联章节 |
|---|---|---|
| generic function | 泛型函数声明、调用、显式类型实参、推断边界 | `generic` / `function` |
| generic class | 泛型类声明、实例化、成员类型边界 | `generic` / `class` |
| generic interface | 泛型接口声明和使用边界 | `generic` / `interface` |
| generic method | 类方法 / 对象方法中的泛型边界 | `generic` / `function` / `class` |
| type parameter | 单泛型参数、多泛型参数、作用域边界 | `generic` / `declarations` |
| constraint | `T extends U` 约束支持边界 | `generic` / `types` |
| default type parameter | 泛型参数默认值边界 | `generic` / `typescript_compatibility` |
| inference | 泛型实参推断边界 | `generic` / `function` |
| nested generic | 嵌套泛型、数组泛型、对象泛型边界 | `generic` / `types` |
| runtime erasure | 泛型是否参与运行时、typeof/instanceof 边界 | `generic` / `types` |

## 与其他章节的关系

- 泛型函数/类/接口/方法的泛型语法、类型参数、约束、默认参数、推断边界归本目录。
- 函数调用/参数/return/closure 归 `01_function`；generic 只看泛型参数和类型实参边界。
- class constructor/成员/继承归 `02_class`；generic class 只做泛型类边界。
- interface 成员签名/extends/implements 归 `03_interface`；generic interface 只做泛型接口边界。
- 基础运行时类型识别归 `types`；generic runtime erasure 边界由本目录做索引。

详见 `generic_to_feature_mapping.md`。

## 资产类型

| 文件 | 作用 |
|---|---|
| `README.md` | 当前目录定位与看护范围 |
| `spec_summary.md` | 泛型体系规范摘要 |
| `test_design.md` | 正向、负向、运行时边界测试设计 |
| `coverage_matrix.md` | 覆盖点和建议路径 |
| `generic_first_batch_candidate_index.md` | 首批候选用例索引 |
| `generic_to_feature_mapping.md` | 泛型体系到其他语言特性的映射 |
| `generic_stage0_generation_report.md` | Stage 0 生成报告 |
| `xts/` | 后续 XTS / ohosTest 候选目录 |
| `issues/` | 已知问题与已修复回归 |

Stage 0 只完成设计骨架、覆盖矩阵和首批候选索引，不批量生成 `.ets` 用例。
