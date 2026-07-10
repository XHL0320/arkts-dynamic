# Statement Next Stage Plan

## Current Status

Statements 章节已完成 Stage 0（设计）和 Stage 1（P0/P1 用例生成），当前处于 Stage 2（质量收敛）。

- Stage 0: 96 个覆盖测试点、50 个首批候选、完整设计文档
- Stage 1: 33 个 .ets 候选用例（25 pass + 3 fail_compile + 1 fail_runtime + 3 boundary + 1 regression）
- Stage 2: 资产清单、ownership 审查、缺口清单、后续计划、质量报告

## Completed Stages

| 阶段 | 内容 | 状态 |
|---|---|---|
| Stage 0 | Statements 章节设计（README/spec_summary/test_design/coverage_matrix/candidate_index/mapping） | completed |
| Stage 1 | 语句体系 P0/P1 用例生成（33 个 .ets 文件） | completed |
| Stage 2 | 总质量收敛（inventory/ownership/gap/plan/report） | current |

## Recommended Next Steps

### Option A: Statements Stage 3 - Candidate Compile Smoke Preparation

为 Stage 1 生成的 33 个 .ets 文件准备编译验证环境：
- 整理 ohosTest Hypium suite 结构
- 注册 statement 测试套件
- 准备 fail_compile 验证 probe
- 不立即执行编译，只做准备工作

**适用场景**：如果 00_the_basics 其他章节也准备就绪，可以统一进入编译验证阶段。

### Option B: Enter `00_the_basics/keywords` Stage 0

进入关键字体系总控设计：
- keywords 目录已有 placeholder 结构
- 需要 README/spec_summary/test_design/coverage_matrix/mapping
- 覆盖：break/continue/return/typeof/instanceof/delete/void/in/of 等关键字的语法归属
- 与 statements/operators 存在交叉，需要明确 ownership

**适用场景**：继续完成 00_the_basics 首轮设计，为总览做准备。

### Option C: Enter `02_class` Stage 0

进入 class 章节设计：
- class 目录可能已有部分结构
- 需要 spec_summary/test_design/coverage_matrix
- 覆盖：class 声明、constructor、方法、属性、继承、static、accessor
- 与 declarations 存在交叉（class TDZ/duplicate），需要明确 ownership

**适用场景**：如果 00_the_basics 基础章节已经足够，可以进入更高级的语言域。

### Option D: ECMA / test262 Mapping After 00_the_basics Completed

等 00_the_basics 所有子章节（declarations/types/operators/statements/keywords）都完成 Stage 0-2 后：
- 统一进行 ECMA 规范比对
- 统一进行 test262 映射
- 统一进行 DevEco / hvigor 编译验证
- 统一进行 ohosTest 运行验证

**适用场景**：如果希望所有基础章节用例都就绪后一次性验证。

## Recommended Order

建议顺序：

1. **Keywords Stage 0**：关键字体系总控设计（与 statements/operators 交叉，需要明确 ownership）
2. **Keywords Stage 1**：P0/P1 用例生成
3. **Keywords Stage 2**：质量收敛
4. **`00_the_basics` 首轮质量总览**：declarations + types + operators + statements + keywords 统一审查
5. 再进入 **`02_class` Stage 0**
6. 等主要语言域完成后，再统一做**规范映射和编译验证**

这个顺序的理由：
- keywords 是 00_the_basics 的最后一个基础子章节
- 完成 keywords 后可以做 00_the_basics 首轮总览
- class 依赖于 declarations 和 types 的基础，应在基础章节完成后进入
- 规范映射和编译验证应在所有用例就绪后统一进行，避免反复调整
