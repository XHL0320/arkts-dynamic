# 03 Interface

## 目录定位

本目录用于看护鸿蒙动态 ArkTS 的 interface 体系，关注 TypeScript/ArkTS interface 语法兼容、动态运行时擦除、class implements、interface extends、对象结构兼容边界。

interface 在 ECMAScript 运行时中没有原生语义，更多属于 TypeScript / ArkTS 类型语法兼容层。本目录关注的是编译期语法兼容、动态运行时是否擦除、class implements 校验边界、object literal 结构匹配边界。

本目录**不是** ArkTS 静态 checker 专项；也**不覆盖** ArkUI / Ability / UI framework。

## 子目录结构

| 子目录 | 看护范围 | 当前状态 |
|---|---|---|
| `interface_property/` | interface 属性签名：必选、可选、readonly、index signature | Stage 0 placeholder |
| `interface_inheritance/` | interface extends：单继承、多继承、冲突成员 | Stage 0 placeholder |
| `abstract_class_and_interface/` | abstract class 与 interface 的交叉：class implements、abstract method | Stage 0 placeholder |

## 看护范围

| Interface 方向 | 看护范围 | 关联章节 |
|---|---|---|
| interface declaration | interface 声明、空接口、重复声明边界 | `interface` / `declarations` |
| property signature | 必选属性、可选属性、readonly 属性边界 | `interface` / `types` |
| method signature | 方法签名、参数、返回值边界 | `interface` / `function` |
| interface extends | 单继承、多继承、冲突成员边界 | `interface` |
| class implements | class 实现 interface 的语法和校验边界 | `interface` / `class` |
| object structural typing | object literal 与 interface 结构匹配边界 | `interface` / `types` |
| index signature | string/number index signature 支持边界 | `interface` / `typescript_compatibility` |
| call/construct signature | callable / newable interface 边界 | `interface` / `function` / `class` |
| interface merging | 同名 interface 合并或重复声明边界 | `interface` / `declarations` |
| runtime erasure | interface 是否存在运行时对象、typeof/instanceof 边界 | `interface` / `types` |

## 与其他章节的关系

- interface 声明语法、成员签名、extends、implements 兼容边界归本目录。
- 声明绑定、重复声明、作用域基础规则归 `declarations`。
- 基础运行时类型识别归 `types`；interface runtime erasure 边界由本目录做索引。
- 函数调用/参数/return/closure 归 `01_function`；interface method/call signature 只验证接口签名兼容边界。
- class constructor/成员/继承归 `02_class`；class implements interface 的接口校验边界归本目录与 class 交叉。
- 泛型参数/约束归 `04_generic`；generic interface 只在本目录做边界索引。

详见 `interface_to_feature_mapping.md`。

## 资产类型

| 文件 | 作用 |
|---|---|
| `README.md` | 当前目录定位与看护范围 |
| `spec_summary.md` | interface 体系规范摘要 |
| `test_design.md` | 正向、负向、运行时边界、结构兼容测试设计 |
| `coverage_matrix.md` | 覆盖点和建议路径 |
| `interface_first_batch_candidate_index.md` | 首批候选用例索引 |
| `interface_to_feature_mapping.md` | interface 体系到其他语言特性的映射 |
| `interface_stage0_generation_report.md` | Stage 0 生成报告 |
| `xts/` | 后续 XTS / ohosTest 候选目录 |
| `issues/` | 已知问题与已修复回归 |

Stage 0 只完成设计骨架、覆盖矩阵和首批候选索引，不批量生成 `.ets` 用例。
