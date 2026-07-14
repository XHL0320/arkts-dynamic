# Class Overall Coverage Matrix

## Coverage Status Summary

| 项目 | 数量 |
|---|---:|
| Coverage ID 总数 | 1132 (CLASS-SUPP-xxxx + CLASS-TOTAL-xxxx) |
| generated | 1132 |
| planned | 0 |
| 主用例文件 | 1132 |
| validation_pending | 1023 |
| spec_pending | 109 |
| verified_* | 0 |

> **Note**: All 1132 Coverage IDs are generated with registered Case IDs. The detailed per-Coverage-ID matrix is in `class_total_coverage_matrix.md` (2330 lines, 1130 CLASS-TOTAL- entries + 22 CLASS-SUPP- entries). All .ets files have unified metadata headers as of Task 3F.

## High-Level Coverage Overview

| 场景目录 | 语义类别 | ECMA Baseline Status | 优先级 | 是否已有测试设计 | 是否已有 XTS | 是否已有 test262 映射 | 备注 |
|---|---|---|---|---|---|---|---|
| 00_class_declaration | 类声明 | ES2022 / ArkTS-specific | P1 | 否 | 是 | 否 | 5 SUPP cases |
| 01_class_type | 类作为类型和值 | ArkTS-specific | P1 | 否 | 是 | 否 | |
| 02_class_instantiation | new / 构造实例 | ES2022 | P1 | 否 | 是 | 否 | |
| 03_field | 实例字段/字段类型/初始化 | ES2022 / ArkTS-specific | P0 | 否 | 是 | 否 | |
| 04_method | 方法/参数/返回/this | ES2022 / ArkTS-specific | P0 | 否 | 是 | 否 | |
| 05_constructor | 构造函数/参数/初始化 | ES2022 / ArkTS-specific | P0 | 否 | 是 | 否 | |
| 06_visibility_modifiers | public/private/protected | ArkTS-specific / TS-compatible | P1 | 否 | 是 | 否 | |
| 07_inheritance | extends/继承链 | ES2022 | P0 | 否 | 是 | 否 | |
| 08_super | super()/super.method | ES2022 | P0 | 否 | 是 | 否 | |
| 09_override | 重写/覆盖 | ArkTS-specific / TS-compatible | P1 | 否 | 是 | 否 | |
| 10_static_members | static field/method/block | ES2022 / ArkTS-specific | P1 | 否 | 是 | 否 | |
| 11_readonly_members | readonly 字段 | ArkTS-specific / TS-compatible | P1 | 否 | 是 | 否 | |
| 12_object_literal | 对象字面量与 class 类型兼容 | ArkTS-specific / TS-compatible | P2 | 否 | 是 | 否 | |
| 13_abstract_class | 抽象类/抽象方法 | ArkTS-specific / TS-compatible | P0 | 否 | 是 | 否 | |
| 14_class_and_interface | implements/interface 兼容 | ArkTS-specific / TS-compatible | P0 | 否 | 是 | 否 | |
| 15_generic_class | 泛型类 | ArkTS-specific / TS-compatible | P2 | 否 | 是 | 否 | |
| 16_this_in_class | this 类型和绑定 | ES2022 / ArkTS-specific | P1 | 否 | 是 | 否 | |
| 17_class_scope | class 作用域 | ES2022 / ArkTS-specific | P2 | 否 | 是 | 否 | |
| 18_class_initialization_order | 初始化顺序 | ES2022 | P1 | 否 | 是 | 否 | |
| 19_class_runtime_behavior | prototype/instanceof/constructor | ES2022 | P2 | 否 | 是 | 否 | |
| 99_mapping_and_regression | 映射和回归 | Mixed | P0 | 否 | 是 | 否 | |

## Detailed Coverage Matrix

The detailed per-Coverage-ID matrix with all 1132 entries is in `class_total_coverage_matrix.md`. That file uses the column format:

`| Global ID | 来源子目录 | 原测试点 | 归并后测试点 | ECMA Baseline Status | 用例类型 | 建议优先级 | 是否重复归并 | 关联目录 | 是否已有 XTS | 建议 XTS 路径 | 备注 |`

All entries now have `是否已有 XTS = 是` and corresponding Case IDs in the Case Registry.
