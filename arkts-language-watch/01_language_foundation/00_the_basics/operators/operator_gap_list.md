# Operator Gap List

## Summary

| 缺口类型 | 数量 |
|---|---:|
| P0 未覆盖 | 5 |
| P1 未覆盖 | 14 |
| P2 未覆盖 | 0 |
| boundary 待确认 | 1 |
| 需要后续规范比对 | 33 |
| 需要运行验证 | 33 |

## P0 Gaps

| ID | 运算符方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| OP-CAND-004 | arithmetic | null numeric conversion | planned | Stage 3 或 Operators Stage 1 follow-up 生成 |
| OP-CAND-022 | optional_chaining | optional chaining method call | planned | 与 function 章节联动生成 |
| OP-CAND-023 | optional_chaining | optional chaining short-circuit | planned | 优先补充参数/索引不求值断言 |
| OP-CAND-043 | update | update invalid target | planned | 生成 fail_compile |
| OP-CAND-047 | assignment | assignment invalid target | planned | 生成 fail_compile |

## P1 Gaps

| ID | 运算符方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| OP-CAND-007 | arithmetic | Infinity arithmetic | planned | 后续 pass smoke |
| OP-CAND-012 | equality | object equality identity | planned | 后续 pass smoke |
| OP-CAND-015 | relational | string relational comparison | planned | 后续 pass smoke |
| OP-CAND-034 | bitwise | bitwise and/or/xor | planned | 后续 pass smoke |
| OP-CAND-035 | bitwise | bitwise not | planned | 后续 pass smoke |
| OP-CAND-036 | bitwise | left shift | planned | 后续 pass smoke |
| OP-CAND-037 | bitwise | signed right shift | planned | 后续 pass smoke |
| OP-CAND-038 | bitwise | unsigned right shift | planned | 后续 pass smoke |
| OP-CAND-046 | comma | comma expression evaluation order | planned | 后续 pass smoke |
| OP-CAND-048 | assignment | assignment evaluation order | planned | 后续 pass smoke |
| OP-CAND-049 | new_operator | new non-constructor TypeError | planned | 后续 fail_runtime |
| OP-CAND-050 | new_operator | new class instance | planned | 与 class 章节联动 |
| OP-CAND-051 | await_yield_boundary | await expression boundary | planned | 后续 boundary |
| OP-CAND-052 | await_yield_boundary | yield expression boundary | planned | 后续 boundary |

## Boundary Pending Confirmation

| 文件路径/测试点 | 原因 | 后续确认方式 |
|---|---|---|
| `xts/boundary/operator_delete_non_configurable_boundary.ets` | `Object.defineProperty` 支持状态与严格模式 delete 行为需要确认 | 官方工具链编译运行 + ECMA/test262 对照 |

## Validation Pending

| 文件路径/测试点 | 需要验证内容 | 建议验证方式 |
|---|---|---|
| `xts/pass/` 下 26 个 pass 用例 | 是否可在目标动态 ArkTS 环境编译运行 | DevEco / hvigor / ohosTest smoke |
| `xts/fail_compile/operator_optional_assignment_fail_compile.ets` | 是否以非法 assignment target 编译失败 | 官方工具链逐文件编译验证 |
| `xts/fail_runtime/` 下 4 个 fail_runtime 用例 | 是否按预期抛出并捕获 TypeError / ReferenceError | ohosTest 或最小运行器 |
| `xts/regression/operator_compound_left_once_regression.ets` | 复合赋值左侧是否只求值一次 | 后续回归验证 |
| `xts/boundary/operator_delete_non_configurable_boundary.ets` | delete non-configurable 行为是否稳定 | 后续 boundary 验证 |

## Mapping Pending

| 测试点 | 需要映射内容 | 后续动作 |
|---|---|---|
| arithmetic / equality / relational | ECMAScript abstract operations 与 test262 覆盖 | 00_the_basics 首轮后统一映射 |
| optional chaining / nullish coalescing | ECMA 2022 表达式短路语义 | 后续规范映射 |
| typeof / instanceof / in / delete | operators 与 types/class/declarations ownership 对齐 | 后续 mapping review |
| bitwise / shift | ToInt32 / ToUint32 / shift count | Stage follow-up 补用例后映射 |
| await / yield boundary | async/generator 支持边界 | 后续 async/generator 章节确认 |
