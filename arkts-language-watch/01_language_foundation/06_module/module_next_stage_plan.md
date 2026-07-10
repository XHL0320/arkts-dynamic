# Module Next Stage Plan

## Current Status

Module 章节已完成 Stage 0（设计）、Stage 1（P0/P1 用例生成）和 Stage 2（质量收敛）。

- Stage 0: 100 个覆盖测试点、50 个首批候选、完整设计文档
- Stage 1: 33 个 .ets 文件（10 pass + 12 boundary + 1 regression 主用例 + 10 helper）
- Stage 2: 资产清单、helper 关系清单、ownership 审查、缺口清单、后续计划、质量报告

## Completed Stages

| 阶段 | 内容 | 状态 |
|---|---|---|
| Stage 0 | Module 章节设计（README/spec_summary/test_design/coverage_matrix/candidate_index/mapping） | completed |
| Stage 1 | Module P0/P1 用例生成（33 个 .ets 文件含 helper） | completed |
| Stage 2 | 总质量收敛（inventory/helper/ownership/gap/plan/report） | completed |

## Recommended Next Steps

### Option A: Module Stage 3 - Candidate Compile Smoke Preparation

为 Stage 1 生成的 33 个 .ets 文件准备编译验证环境：
- 整理 ohosTest Hypium suite 结构
- 注册 module 测试套件
- 确认 12 个 boundary 文件的支持状态
- 确认 helper import 路径解析
- 不立即执行编译，只做准备工作

### Option B: Enter Annotation / Decorator Stage

进入 annotation / decorator 章节：
- `08_annotation` 和 `08_decorator_annotation` 已有部分内容
- 需要补充设计

### Option C: Enter TypeScript Compatibility Stage

进入 TypeScript 兼容性章节：
- 汇总所有章节的 TS 兼容差异
- 但需等所有主要语言域完成后

### Option D: First Round Language Foundation Summary

对 `01_language_foundation` 已完成章节做首轮总览：
- 00_the_basics: Stage 0-2 完成
- 01_function: 已有部分内容
- 02_class: 已有部分内容
- 03_interface: Stage 0-2 完成
- 04_generic: Stage 0-2 完成
- 05_null_safety: Stage 0-2 完成
- 06_module: Stage 0-2 完成

## Recommended Order

建议顺序：

1. **进入 annotation / decorator 相关章节**：补充设计和用例
2. **完成 annotation / decorator Stage 0/1/2**
3. **对 `01_language_foundation` 已完成章节做首轮总览**
4. **后续统一做 TypeScript / ArkTS compatibility mapping**
5. **最后再统一做 ECMA/test262 映射和 DevEco / hvigor 编译验证**

这个顺序的理由：
- module 是 `01_language_foundation` 中最后一个主要语言域，现已完成 Stage 0-2
- annotation / decorator 是 `01_language_foundation` 中尚未系统处理的领域
- 规范映射和编译验证应在所有用例就绪后统一进行
- 06_module 已有 3 个子目录（export/import/top_level_statement），当前为 placeholder，后续可在 Stage 3 填充
- module 的 12 个 boundary 文件和 2 个 helper 路径风险需要在编译验证阶段确认
