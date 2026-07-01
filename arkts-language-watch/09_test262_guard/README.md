# 09 test262 guard

## 目录用途
当前目录用于沉淀 ArkTS 语言特性看护资料，聚焦语言规则、类型系统、编译行为和运行时语义。

## 后续沉淀内容
后续应补充官方规范摘要、测试设计、XTS 用例、编译负向用例、覆盖矩阵、已知问题和回归记录。

## 看护关系
本目录服务于 ArkTS 语言看护闭环，用于关联 XTS 正向用例、编译负向验证、覆盖矩阵统计和回归问题跟踪。

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
