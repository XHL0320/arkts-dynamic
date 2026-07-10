# Null Safety Next Stage Plan

## Current Status

Null Safety 章节已完成 Stage 0（设计）、Stage 1（P0/P1 用例生成）和 Stage 2（质量收敛）。

- Stage 0: 92 个覆盖测试点、45 个首批候选、完整设计文档
- Stage 1: 30 个 .ets 候选用例（16 pass + 4 fail_runtime + 8 boundary + 2 regression）
- Stage 2: 资产清单、ownership 审查、缺口清单、后续计划、质量报告

## Completed Stages

| 阶段 | 内容 | 状态 |
|---|---|---|
| Stage 0 | Null Safety 章节设计（README/spec_summary/test_design/coverage_matrix/candidate_index/mapping） | completed |
| Stage 1 | Null Safety P0/P1 用例生成（30 个 .ets 文件） | completed |
| Stage 2 | 总质量收敛（inventory/ownership/gap/plan/report） | completed |

## Recommended Next Steps

### Option A: Null Safety Stage 3 - Candidate Compile Smoke Preparation

为 Stage 1 生成的 30 个 .ets 文件准备编译验证环境：
- 整理 ohosTest Hypium suite 结构
- 注册 null_safety 测试套件
- 确认 8 个 boundary 文件的支持状态
- 不立即执行编译，只做准备工作

### Option B: Enter `06_module` Stage 0

进入模块章节设计：
- `06_module` 目录可能已有部分结构
- 需要覆盖：import/export、模块解析、循环依赖、re-export、动态 import
- 与 null_safety 间接交叉（null/undefined 跨模块传递）

### Option C: Enter Annotation / Decorator Stage

进入 annotation / decorator 章节：
- `08_annotation` 和 `08_decorator_annotation` 已有部分内容
- 需要补充设计

### Option D: TypeScript / ArkTS Compatibility Mapping Later

等所有主要语言域完成后统一进行。

## Recommended Order

建议顺序：

1. **进入 `06_module` Stage 0**：模块章节设计
2. **完成 Module Stage 0/1/2**：模块设计、用例生成、质量收敛
3. **后续进入 annotation / decorator**：补充设计
4. **等主要语言域完成后**，再统一做 **TypeScript / ArkTS compatibility mapping、ECMA/test262 映射和编译验证**

这个顺序的理由：
- module 是 01_language_foundation 中最后一个主要语言域
- null_safety 的 8 个 boundary 文件需要在编译验证阶段确认支持状态
- 规范映射和编译验证应在所有用例就绪后统一进行
- 05_null_safety 已有 3 个子目录（optional_chaining/null_coalescing_operator/non_null_assertion_operator），当前为 placeholder，后续可在 Stage 3 填充
