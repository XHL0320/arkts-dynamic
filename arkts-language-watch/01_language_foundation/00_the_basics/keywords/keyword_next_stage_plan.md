# Keyword Next Stage Plan

## Current Status

Keywords 章节已完成 Stage 0（设计）、Stage 1（P0/P1 用例生成）和 Stage 2（质量收敛）。

- Stage 0: 93 个覆盖测试点、50 个首批候选、完整设计文档
- Stage 1: 28 个 .ets 候选用例（13 pass + 5 fail_compile + 10 boundary）
- Stage 2: 资产清单、ownership 审查、缺口清单、后续计划、质量报告

`00_the_basics` 的 5 个基础子章节（declarations/types/operators/statements/keywords）的 Stage 0-2 现已全部完成。

## Completed Stages

| 阶段 | 内容 | 状态 |
|---|---|---|
| Stage 0 | Keywords 章节设计（README/spec_summary/test_design/coverage_matrix/candidate_index/mapping） | completed |
| Stage 1 | 关键字 P0/P1 用例生成（28 个 .ets 文件） | completed |
| Stage 2 | 总质量收敛（inventory/ownership/gap/plan/report） | completed |

## Recommended Next Steps

### Option A: `00_the_basics` First Round Summary

对 00_the_basics 的 5 个子章节进行首轮质量总览：
- declarations: Stage 0-2 完成，96 覆盖点，33 .ets
- types: Stage 0-2 完成，91 覆盖点，0 .ets（Stage 1 未生成）
- operators: Stage 0-2 完成，114 覆盖点，33 .ets
- statements: Stage 0-2 完成，96 覆盖点，33 .ets
- keywords: Stage 0-2 完成，93 覆盖点，28 .ets

**适用场景**：00_the_basics 首轮设计全部完成，可以做总览审查。

### Option B: Keywords Stage 3 - Candidate Compile Smoke Preparation

为 Stage 1 生成的 28 个 .ets 文件准备编译验证环境：
- 整理 ohosTest Hypium suite 结构
- 注册 keyword 测试套件
- 准备 fail_compile 验证 probe
- 不立即执行编译，只做准备工作

**适用场景**：如果准备进入编译验证阶段。

### Option C: Enter `02_class` Stage 0

进入 class 章节设计：
- class 声明、constructor、方法、属性、继承、static、accessor
- 与 declarations 存在交叉（class TDZ/duplicate）
- 与 keywords 存在交叉（class/extends/super/static 关键字）

**适用场景**：继续扩展语言域覆盖。

### Option D: ECMA / test262 Mapping After Main Language Domains Completed

等所有主要语言域（00_the_basics + function + class + interface + module + annotation）都完成首轮后：
- 统一进行 ECMA 规范比对
- 统一进行 test262 映射
- 统一进行 DevEco / hvigor 编译验证
- 统一进行 ohosTest 运行验证

**适用场景**：如果希望所有用例都就绪后一次性验证。

## Recommended Order

建议顺序：

1. **`00_the_basics` First Round Summary**：5 个子章节首轮质量总览，统计总覆盖点和总 .ets 文件数，检查跨章节 ownership 一致性
2. **`00_the_basics` Candidate Compile Smoke Preparation**：为所有 .ets 文件准备编译验证环境
3. 再进入 **`02_class` Stage 0**：class 章节设计
4. 后续继续 **interface / generic / module / annotation** 等语言域
5. 等主要语言域完成后，再统一做 **ECMA / test262 映射和编译验证**

这个顺序的理由：
- 00_the_basics 的 5 个子章节已全部完成 Stage 0-2，是做总览的最佳时机
- 总览可以发现跨章节的 ownership 冲突和覆盖空白
- class 是下一个最重要的语言域，依赖 declarations 和 types 的基础
- 规范映射和编译验证应在所有用例就绪后统一进行，避免反复调整
