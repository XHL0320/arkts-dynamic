# Declaration Next Stage Plan

## Current Status

Declarations Stage 0 已建立声明体系设计、覆盖矩阵、首批候选索引和跨特性映射。Stage 1 已生成首批 P0/P1 XTS 候选用例。Stage 2 完成资产清单、ownership 校验、缺口清单和后续计划整理。

## Completed Stages

| 阶段 | 内容 | 状态 |
|---|---|---|
| Stage 0 | Declarations 章节设计 | completed |
| Stage 1 | 声明体系 P0 用例生成 | completed |
| Stage 2 | 总质量收敛 | current |

## Recommended Next Steps

### Option A: Declarations Stage 3 - Candidate Compile Smoke Preparation

整理 pass、fail_compile、fail_runtime、boundary 的验证命令和最小工程组织方式，为后续真实工具链验证做准备。

### Option B: Declarations + Function Round 1 Summary

将 declarations 与 function 首轮资产合并成总览，明确声明绑定与函数运行语义的 ownership 边界。

### Option C: ECMA / test262 Mapping

对 var / let / const、function declaration、class declaration、import/export declaration 的 ECMAScript 2022 规范点和 test262 目录做映射。

### Option D: Enter `00_the_basics/types` Stage 0

在声明与函数首轮资产完成后，启动动态 ArkTS 基础类型章节的设计骨架。

## Recommended Order

建议顺序：

1. Declarations + Function Round 1 Summary：两条线首轮资产总览；
2. Candidate Compile Smoke Plan：编译烟测计划；
3. ECMA / test262 Mapping：规范与 test262 对齐；
4. DevEco / hvigor / ohosTest 验证；
5. 再进入 `00_the_basics/types` Stage 0。
