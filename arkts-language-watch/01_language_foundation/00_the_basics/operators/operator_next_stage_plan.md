# Operator Next Stage Plan

## Current Status

Operators Stage 0 已完成总控设计、覆盖矩阵、首批候选索引和跨特性映射。Stage 1 已生成 33 个 P0/P1 XTS 候选用例。Stage 2 完成资产清单、ownership 校验、缺口清单和后续计划。

## Completed Stages

| 阶段 | 内容 | 状态 |
|---|---|---|
| Stage 0 | Operators 章节设计 | completed |
| Stage 1 | 运算符 P0/P1 用例生成 | completed |
| Stage 2 | 总质量收敛 | current |

## Recommended Next Steps

### Option A: Operators Stage 3 - Candidate Compile Smoke Preparation

整理 33 个候选用例的编译/运行验证计划，区分 pass、fail_compile、fail_runtime、boundary 和 regression。

### Option B: Enter `00_the_basics/statements` Stage 0

启动语句体系总控设计，覆盖 if/for/while/switch/try 等控制流语句。

### Option C: Enter `00_the_basics/keywords` Stage 0

对关键字/保留字/上下文关键字进行看护设计。

### Option D: ECMA / test262 Mapping After 00_the_basics Completed

等 basics 首轮结构完整后，再统一进行规范和 test262 映射。

## Recommended Order

建议顺序：

1. Statements Stage 0：语句体系总控设计；
2. Statements Stage 1：P0/P1 用例生成；
3. Statements Stage 2：质量收敛；
4. Keywords Stage 0；
5. Keywords Stage 1；
6. Keywords Stage 2；
7. 等 `00_the_basics` 完整后，再统一做基础章节总览、规范映射和编译验证。
