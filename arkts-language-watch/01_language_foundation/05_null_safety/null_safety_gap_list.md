# Null Safety Gap List

## Summary

| 缺口类型 | 数量 |
|---|---:|
| P0 未覆盖 | 4 |
| P1 未覆盖 | 10 |
| P2 未覆盖 | 0 |
| boundary 待确认 | 8 |
| 需要后续 TypeScript / ArkTS 兼容比对 | 30 |
| 需要 ECMA / test262 比对 | 16 |
| 需要编译验证 | 30 |
| 需要运行验证 | 30 |

## P0 Gaps

| ID | Null Safety 方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| NS-OC-CALL-005 | optional_chaining_call | 可选链调用支持边界 | planned boundary | 确认后生成 boundary 或 pass |
| NS-NA-001 | nullish_assignment | a ??= b 当 a 为 null | created boundary | 编译验证确认支持 |
| NS-NNA-001 | non_null_assertion_boundary | value! 非空断言 | created boundary | 编译验证确认支持 |
| NS-TSCOMP-001 | typescript_compatibility_boundary | strict null checks 兼容 | planned boundary | 确认后生成 boundary |

## P1 Gaps

| ID | Null Safety 方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| NS-NULL-004 | null_basic | Number(null) === 0 | planned | 生成 pass 用例 |
| NS-UNDEF-005 | undefined_basic | 未初始化变量默认 undefined | planned | 生成 pass 用例 |
| NS-EQ-005 | null_undefined_equality | null < 1 为 true | planned | 生成 pass 用例 |
| NS-OC-PROP-004 | optional_chaining_property | 可选链短路不执行后续 | planned | 生成 pass 用例 |
| NS-OPTPARAM-003 | optional_parameter | 可选参数传 null | planned | 生成 pass 用例 |
| NS-DEFPARAM-004 | default_parameter | 默认参数表达式求值 | planned | 生成 pass 用例 |
| NS-RET-004 | function_return_nullish | 箭头函数无返回 undefined | planned | 生成 pass 用例 |
| NS-CF-003 | class_field_nullish | class field 初始化顺序 | planned boundary | 确认后生成 |
| NS-UNION-003 | union_nullish_boundary | strict null checks 边界 | planned boundary | 确认后生成 |
| NS-ARKTS-001 | arkts_dynamic_boundary | 动态 ArkTS null safety 支持 | planned boundary | 确认后生成 |

## Boundary Pending Confirmation

| 文件路径/测试点 | 原因 | 后续确认方式 |
|---|---|---|
| `xts/boundary/null_safety_nullish_assignment_boundary.ets` | ??= 支持待确认 | compiler / runtime |
| `xts/boundary/null_safety_non_null_assertion_boundary.ets` | ! 支持待确认 | compiler |
| `xts/boundary/null_safety_nonnullable_boundary.ets` | NonNullable 支持待确认 | compiler |
| `xts/boundary/null_safety_union_null_boundary.ets` | T | null union 支持待确认 | compiler |
| `xts/boundary/null_safety_return_type_nullish_boundary.ets` | strict null return 检查待确认 | compiler |
| `xts/boundary/null_safety_class_field_null_boundary.ets` | field null 初始化检查待确认 | compiler |
| `xts/boundary/null_safety_interface_optional_member_boundary.ets` | optional member 编译期检查待确认 | compiler |
| `xts/boundary/null_safety_generic_nullable_boundary.ets` | generic nullable 支持待确认 | compiler |

## Validation Pending

| 文件路径/测试点 | 需要验证内容 | 建议验证方式 |
|---|---|---|
| 全部 30 个 .ets 文件 | 编译是否通过、null safety 行为是否正确 | DevEco / hvigor 编译 |
| 16 个 pass 文件 | null/undefined 运行时行为是否正确 | ohosTest 运行验证 |
| 4 个 fail_runtime 文件 | TypeError 是否确实抛出 | ohosTest 运行验证 |
| 8 个 boundary 文件 | 支持状态确认 | compiler 检查 + runtime smoke |
| 2 个 regression 文件 | 回归行为是否正确 | ohosTest 运行验证 |

## Mapping Pending

| 测试点 | 需要映射内容 | 后续动作 |
|---|---|---|
| 全部 30 个 .ets 文件 | ECMA null/undefined 规范映射 | 等主要语言域完成后统一进行 |
| coverage_matrix 92 个测试点 | TypeScript/ArkTS null safety 兼容差异映射 | 等主要语言域完成后统一进行 |
| 可选链/空值合并 | ECMA2020 optional chaining/coalescing 规范 | 规范比对阶段确认 |
| strict null checks | TypeScript strict null checks 规范 | 规范比对阶段确认 |
| NonNullable<T> | TypeScript NonNullable 规范 | 规范比对阶段确认 |
