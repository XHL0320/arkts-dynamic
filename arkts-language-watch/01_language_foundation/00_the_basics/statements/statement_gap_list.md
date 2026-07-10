# Statement Gap List

## Summary

| 缺口类型 | 数量 |
|---|---:|
| P0 未覆盖 | 6 |
| P1 未覆盖 | 6 |
| P2 未覆盖 | 0 |
| boundary 待确认 | 3 |
| 需要后续规范比对 | 33 |
| 需要运行验证 | 33 |

## P0 Gaps

| ID | 语句方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| STMT-WHILE-002 | while_statement | while 条件 false 零次执行 | planned | 生成 pass 用例 |
| STMT-FORIN-003 | for_in_statement | for-in 枚举顺序 | planned boundary | 确认 ArkTS 枚举顺序后生成 boundary 或 pass |
| STMT-FOROF-004 | for_of_statement | for-of Symbol.iterator 支持 | planned boundary | 确认迭代协议支持后生成 boundary 或 pass |
| STMT-TRY-005 | try_catch_finally | finally 中 throw 覆盖 try | planned | 生成 fail_runtime 用例 |
| STMT-TOP-001 | top_level_statement_boundary | 顶层 return SyntaxError | planned | 生成 fail_compile 用例 |
| STMT-TOP-002 | top_level_statement_boundary | 顶层 break SyntaxError | planned | 生成 fail_compile 用例 |

## P1 Gaps

| ID | 语句方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| STMT-BLOCK-004 | block_statement | 嵌套 block 作用域遮蔽 | planned | 生成 pass 用例 |
| STMT-IF-004 | if_statement | if 条件 ToBoolean 转换 | planned | 生成 pass 用例 |
| STMT-SWITCH-005 | switch_statement | switch 无匹配无 default | planned | 生成 pass 用例 |
| STMT-WHILE-004 | while_statement | while continue 跳过 | planned | 生成 pass 用例 |
| STMT-FOR-005 | for_statement | for init 中 let 块级绑定 | planned | 生成 pass 用例 |
| STMT-FORIN-004 | for_in_statement | for-in 数组索引枚举 | planned | 生成 pass 用例 |

## Boundary Pending Confirmation

| 文件路径/测试点 | 原因 | 后续确认方式 |
|---|---|---|
| `xts/boundary/statement_invalid_label_boundary.ets` | 动态 ArkTS label 支持和错误检测待确认 | compiler / runtime smoke |
| `xts/boundary/statement_finally_override_control_flow_boundary.ets` | finally 中 return/throw 覆盖 try 结果行为待确认 | runtime smoke |
| `xts/boundary/statement_debugger_boundary.ets` | debugger 语句非调试环境行为待确认 | runtime smoke |

## Validation Pending

| 文件路径/测试点 | 需要验证内容 | 建议验证方式 |
|---|---|---|
| 全部 33 个 .ets 文件 | 编译是否通过、运行时行为是否正确 | DevEco / hvigor 编译 + ohosTest 运行 |
| 3 个 boundary 文件 | 支持状态确认 | compiler 检查 + runtime smoke |
| 3 个 fail_compile 文件 | 是否确实产生编译错误 | hvigor 编译验证 |
| 1 个 fail_runtime 文件 | 是否确实抛出 TypeError | ohosTest 运行验证 |

## Mapping Pending

| 测试点 | 需要映射内容 | 后续动作 |
|---|---|---|
| 全部 33 个 .ets 文件 | test262 对应用例映射 | 等 00_the_basics 首轮完成后统一进行 |
| coverage_matrix 96 个测试点 | test262 目录映射 | 等 00_the_basics 首轮完成后统一进行 |
| for-in 枚举顺序 | ECMA 规范枚举顺序规则 | 规范比对阶段确认 |
| for-of 迭代协议 | ECMA Symbol.iterator 规范 | 规范比对阶段确认 |
| finally 控制流覆盖 | ECMA Completion Record 规范 | 规范比对阶段确认 |
