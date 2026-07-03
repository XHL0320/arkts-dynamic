# 02 class

## 目录用途
当前目录用于沉淀 ArkTS 语言特性看护资料，聚焦语言规则、类型系统、编译行为和运行时语义。

## 后续沉淀内容
后续应补充官方规范摘要、测试设计、XTS 用例、编译负向用例、覆盖矩阵、已知问题和回归记录。

## 看护关系
本目录服务于 ArkTS 语言看护闭环，用于关联 XTS 正向用例、编译负向验证、覆盖矩阵统计和回归问题跟踪。

<!-- ARKTS_CLASS_WATCH_V1 -->

# ArkTS Class Watch

本目录用于看护 ArkTS Class 类语言特性，包括类声明、类类型、实例化、字段、方法、构造函数、可见性、继承、super、override、static、readonly、对象字面量、抽象类、class 与 interface、泛型类、this、作用域、初始化顺序和运行时行为。

## Scope

本目录只关注 ArkTS 语言层 Class 特性，不关注 ArkUI/UI/Ability/状态管理。

## Standard Baseline

- ECMAScript Baseline: ES2022
- ArkTS Language Guide
- ArkTS Static Language Rules
- TypeScript compatibility/difference as reference only
- Final behavior should follow ArkTS official specification and ArkCompiler/ArkRuntime behavior

## Watch Principle

目录保持适度聚合，避免过碎；测试设计在每个子目录中细化。

每个特性至少从以下维度设计：

- pass 正向用例
- fail_compile 编译负向用例
- fail_runtime 运行时异常用例
- boundary 边界用例
- regression 回归用例
- integration 与类型、接口、泛型、模块等组合用例
- test262 mapping，如该特性涉及 ECMAScript class runtime semantics

## Priority

| 优先级 | 场景目录 | 原因 |
|---|---|---|
| P0 | 03_field | 字段类型、初始化、赋值、继承最容易暴露 checker 问题 |
| P0 | 04_method | 参数、返回值、this、重载、覆盖是核心语义 |
| P0 | 05_constructor | 初始化、参数、super、this-before-super 关键 |
| P0 | 07_inheritance | extends、基类/派生类、继承链核心 |
| P0 | 08_super | 派生类初始化和方法调用核心 |
| P0 | 13_abstract_class | 编译负向和类型语义重点 |
| P0 | 14_class_and_interface | implements、结构兼容、成员完整性重点 |
| P1 | 01_class_type | class 值空间/类型空间交叉 |
| P1 | 06_visibility_modifiers | private/protected/public 影响类型兼容 |
| P1 | 10_static_members | 静态侧与实例侧分离 |
| P1 | 18_class_initialization_order | 运行时顺序和字段初始化风险 |
| P2 | 12_object_literal | class 与结构类型/对象字面量兼容差异 |
| P2 | 15_generic_class | 泛型类与类型擦除、约束、兼容 |

<!-- CLASS_WATCH_CONSOLIDATION_V1 -->

## Class Watch Consolidation

Class 子目录已经完成分模块测试设计后，需要通过以下总控文件进行统一维护：

| 文件 | 作用 |
|---|---|
| class_watch_review.md | Class 总体一致性审查 |
| class_total_coverage_matrix.md | Class 总覆盖矩阵 |
| class_duplicate_and_overlap_report.md | 重复与交叉覆盖报告 |
| class_priority_index.md | 优先级索引 |
| class_xts_generation_plan.md | 后续 XTS 生成计划 |
| class_test262_total_mapping.md | test262 总映射 |
| class_open_questions.md | 总待确认问题 |

后续生成 XTS 用例时，应优先参考：

1. `class_total_coverage_matrix.md`
2. `class_priority_index.md`
3. `class_xts_generation_plan.md`

## XTS Case Location

Class XTS cases are stored in each feature directory:

`01_language_foundation/02_class/<feature>/xts/<case_type>/`

The old centralized path:

`10_xts_cases/class/`

is deprecated for Class watch cases and kept only for migration traceability.
