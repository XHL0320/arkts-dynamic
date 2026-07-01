# ArkTS Language Watch

## 目录用途
本目录用于沉淀鸿蒙 ArkTS 语言本身的特性看护资料，聚焦基础语法、类型规则、静态检查、模块、互操作、编译管线、test262 映射和 XTS 用例。

## 后续沉淀内容
后续应持续补充官方章节映射、语言特性规格摘要、测试设计、编译负向用例、运行时用例、覆盖矩阵、风险矩阵和回归问题记录。

## 看护关系
该目录作为 ArkTS 语言看护总入口，用于组织 XTS 用例、编译负向验证、覆盖矩阵统计和回归问题跟踪。不包含 ArkUI、UI 组件、状态管理、Ability 或应用框架相关内容。

<!-- ECMA_BASELINE_2022_WITH_ES2023_WHITELIST -->

## ECMAScript Baseline

ArkTS watch uses ECMAScript 2022 as the default baseline.

Confirmed ECMAScript 2023 increments are included only when the corresponding module is tested:

- Array.prototype.findLast
- Array.prototype.findLastIndex
- Array.prototype.toReversed
- Array.prototype.toSorted
- Array.prototype.toSpliced
- Array.prototype.with
- Symbols as WeakMap keys

ECMAScript 2024+ features are out of scope by default unless ArkTS support is explicitly confirmed.
