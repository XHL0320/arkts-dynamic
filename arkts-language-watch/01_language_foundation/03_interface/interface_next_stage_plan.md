# Interface Next Stage Plan

## Current Status

Interface 章节已完成 Stage 0（设计）、Stage 1（P0/P1 用例生成）和 Stage 2（质量收敛）。

- Stage 0: 88 个覆盖测试点、45 个首批候选、完整设计文档
- Stage 1: 27 个 .ets 候选用例（10 pass + 16 boundary + 1 regression）
- Stage 2: 资产清单、ownership 审查、缺口清单、后续计划、质量报告

## Completed Stages

| 阶段 | 内容 | 状态 |
|---|---|---|
| Stage 0 | Interface 章节设计（README/spec_summary/test_design/coverage_matrix/candidate_index/mapping） | completed |
| Stage 1 | Interface P0/P1 用例生成（27 个 .ets 文件） | completed |
| Stage 2 | 总质量收敛（inventory/ownership/gap/plan/report） | completed |

## Recommended Next Steps

### Option A: Interface Stage 3 - Candidate Compile Smoke Preparation

为 Stage 1 生成的 27 个 .ets 文件准备编译验证环境：
- 整理 ohosTest Hypium suite 结构
- 注册 interface 测试套件
- 确认 16 个 boundary 文件的支持状态
- 不立即执行编译，只做准备工作

**适用场景**：如果准备进入编译验证阶段。

### Option B: Enter `04_generic` Stage 0

进入泛型章节设计：
- `04_generic` 目录可能已有部分结构
- 需要覆盖：泛型参数、约束、默认类型、泛型函数、泛型类、泛型接口
- 与 interface 存在交叉（generic interface boundary 已在 interface 做了边界索引）

**适用场景**：继续扩展语言域覆盖。

### Option C: Enter `05_null_safety` Stage 0

进入空安全章节设计：
- `05_null_safety` 目录可能已有部分结构
- 需要覆盖：nullable/undefined、可选链、空值合并、null 检查
- 与 interface 存在交叉（可选属性访问安全已在 interface 做了边界索引）

**适用场景**：如果 null safety 优先级更高。

### Option D: TypeScript / ArkTS Compatibility Mapping Later

等所有主要语言域（00_the_basics + function + class + interface + generic + null_safety + module）都完成首轮后：
- 统一进行 TypeScript interface 兼容差异映射
- 统一进行 ECMA 规范比对（虽然 interface 不直接来自 ECMA）
- 统一进行 DevEco / hvigor 编译验证
- 统一进行 ohosTest 运行验证

**适用场景**：如果希望所有用例都就绪后一次性验证。

## Recommended Order

建议顺序：

1. **进入 `04_generic` Stage 0**：泛型章节设计，与 interface 有交叉（generic interface）
2. **完成 Generic Stage 0/1/2**：泛型设计、用例生成、质量收敛
3. **再进入 `05_null_safety` Stage 0**：空安全章节设计
4. **后续进入 `06_module`**：模块章节设计
5. **等主要语言域完成后**，再统一做 **TypeScript / ArkTS compatibility mapping、ECMA/test262 映射和编译验证**

这个顺序的理由：
- generic 是下一个重要的语言域，与 interface 有直接交叉
- interface 中的 generic boundary 文件需要在 generic 章节完成后才能确认支持状态
- null_safety 与 interface 的可选属性访问安全有交叉
- module 与 interface 的 export/import 有交叉
- 规范映射和编译验证应在所有用例就绪后统一进行
