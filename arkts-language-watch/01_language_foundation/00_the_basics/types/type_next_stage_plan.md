# Type Next Stage Plan

## Current Status

Types Stage 0 已完成类型体系设计、覆盖矩阵、首批候选索引和跨特性映射。Stage 1 已生成 28 个基础类型 P0/P1 候选用例。Stage 2 完成资产清单、ownership 校验、缺口清单和后续计划。

## Completed Stages

| 阶段 | 内容 | 状态 |
|---|---|---|
| Stage 0 | Types 章节设计 | completed |
| Stage 1 | 基础类型 P0/P1 用例生成 | completed |
| Stage 2 | 总质量收敛 | current |

## Recommended Next Steps

### Option A: Types Stage 3 - Candidate Compile Smoke Preparation

整理 28 个候选用例的编译/运行验证计划，区分 pass、fail_runtime 和 boundary。

### Option B: Enter `00_the_basics/operators` Stage 0

启动运算符体系总控设计，承接 equality、arithmetic、comparison、typeof、instanceof、conversion 等更完整的运算符行为。

### Option C: Enter `00_the_basics/statements` Stage 0

在 declarations/function/types/operators 后，继续推进语句体系设计。

### Option D: ECMA / test262 Mapping After 00_the_basics Completed

等 basics 首轮骨架和候选用例形成后，再统一进行规范与 test262 对齐，避免局部重复映射。

## Recommended Order

建议顺序：

1. Operators Stage 0：运算符体系总控设计；
2. Operators Stage 1：P0/P1 用例生成；
3. Operators Stage 2：质量收敛；
4. Statements Stage 0；
5. Keywords Stage 0；
6. 等 `00_the_basics` 完整后，再统一做基础章节总览、规范映射和编译验证。
