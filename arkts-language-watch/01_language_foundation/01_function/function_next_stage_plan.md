# Function Next Stage Plan

## Current Status

Function 章节已完成 Stage 0 设计骨架，以及 Stage 1-3 的第一轮 XTS 候选生成。当前实际存在 65 个 `.ets` 候选，覆盖参数、返回、调用、作用域、闭包、箭头函数、函数一等值和 overload signature 兼容边界。

## Completed Stages

| 阶段 | 内容 | 状态 |
|---|---|---|
| Stage 0 | Function 章节设计 | completed |
| Stage 1 | 参数、return、function_call | completed |
| Stage 2 | scope、closure、arrow function | completed |
| Stage 3 | function_type、overload signature | completed |
| Stage 4 | 总质量收敛 | current |

## Recommended Next Steps

### Option A: Function Stage 5 - Candidate Compile Smoke

准备最小编译验证脚本或工程映射，优先验证 pass / fail_runtime / fail_compile 的基础可用性，并把 boundary 保持为 pending。

### Option B: ECMA / test262 Mapping

对 Function 与 Declarations 的首轮候选统一做 ECMAScript 2022 / 2023 规范点映射和 test262 对照，标记哪些应直接引用 test262，哪些需要 ArkTS 动态补充。

### Option C: Enter `00_the_basics/types` Stage 0

如果暂不进入验证阶段，可继续横向推进 Basics 的类型章节设计骨架。

## Recommended Order

建议顺序：

1. Function Stage 5：候选用例编译烟测准备；
2. Declarations + Function 首轮规范映射；
3. test262 对照表；
4. DevEco / hvigor / ohosTest 验证；
5. 再进入 `00_the_basics/types` Stage 0。
