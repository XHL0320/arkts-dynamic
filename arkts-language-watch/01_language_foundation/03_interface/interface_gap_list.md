# Interface Gap List

## Summary

| 缺口类型 | 数量 |
|---|---:|
| P0 未覆盖 | 6 |
| P1 未覆盖 | 14 |
| P2 未覆盖 | 0 |
| boundary 待确认 | 16 |
| 需要后续 TypeScript / ArkTS 兼容比对 | 27 |
| 需要编译验证 | 27 |
| 需要运行验证 | 27 |

## P0 Gaps

| ID | Interface 方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| IF-IDX-002 | index_signature | number index signature | planned boundary | 确认后生成 boundary 或 pass |
| IF-TSCOMP-001 | typescript_compatibility_boundary | TS interface 语法兼容 | planned boundary | 确认后生成 boundary |
| IF-ARKTS-001 | arkts_dynamic_boundary | 动态 ArkTS interface 支持 | planned boundary | 确认后生成 boundary |
| IF-ARKTS-002 | arkts_dynamic_boundary | 动态与静态 ArkTS interface 差异 | planned boundary | 确认后生成 boundary |
| IF-RT-003 | runtime_erasure | instanceof interface | planned fail_compile | 确认后生成 fail_compile 或 boundary |
| IF-MOD-002 | module_export_import_boundary | interface 导入 | planned boundary | 确认后生成 boundary |

## P1 Gaps

| ID | Interface 方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| IF-DECL-005 | interface_declaration | interface 声明位置限制 | planned boundary | 确认后生成 |
| IF-PROP-004 | property_signature | 属性签名编译期检查 | planned boundary | 确认后生成 |
| IF-PROP-005 | property_signature | 属性签名运行时擦除 | planned boundary | 确认后生成 |
| IF-OPT-003 | optional_property | 可选属性访问安全 | planned boundary | 确认后生成 |
| IF-RO-003 | readonly_property | readonly 与 const 区别 | planned boundary | 确认后生成 |
| IF-METHOD-004 | method_signature | 方法签名运行时擦除 | planned boundary | 确认后生成 |
| IF-OPTMETHOD-003 | optional_method | 可选方法运行时检查 | planned boundary | 确认后生成 |
| IF-EXT-003 | interface_extends | interface 多层继承 | planned | 生成 pass 用例 |
| IF-EXT-004 | interface_extends | interface extends 自身 | planned fail_compile | 确认后生成 fail_compile |
| IF-STRUCT-004 | structural_typing | object literal 可选属性省略 | planned | 生成 pass 用例 |
| IF-STRUCT-005 | structural_typing | 结构兼容运行时检查 | planned boundary | 确认后生成 |
| IF-MERGE-003 | interface_merging | 合并冲突 | planned boundary | 确认后生成 |
| IF-DUP-002 | duplicate_member | 同名不同类型属性 | planned fail_compile | 确认后生成 fail_compile |
| IF-TSCOMP-002 | typescript_compatibility_boundary | interface 与 type alias 区别 | planned boundary | 确认后生成 |

## Boundary Pending Confirmation

| 文件路径/测试点 | 原因 | 后续确认方式 |
|---|---|---|
| `xts/boundary/interface_readonly_property_boundary.ets` | readonly 编译期 enforcement 待确认 | compiler |
| `xts/boundary/interface_duplicate_property_boundary.ets` | 同名属性合并/冲突行为待确认 | compiler |
| `xts/boundary/interface_method_parameter_type_boundary.ets` | 参数类型兼容检查待确认 | compiler |
| `xts/boundary/interface_extends_conflict_property_boundary.ets` | 冲突检测行为待确认 | compiler |
| `xts/boundary/interface_class_missing_required_member_boundary.ets` | implements enforcement 待确认 | compiler |
| `xts/boundary/interface_class_implements_method_signature_boundary.ets` | 签名兼容检查待确认 | compiler |
| `xts/boundary/interface_object_missing_required_property_boundary.ets` | 结构兼容检查待确认 | compiler |
| `xts/boundary/interface_object_extra_property_boundary.ets` | excess property 检查待确认 | compiler |
| `xts/boundary/interface_index_signature_string_boundary.ets` | index signature 支持待确认 | compiler |
| `xts/boundary/interface_call_signature_boundary.ets` | call signature 支持待确认 | compiler |
| `xts/boundary/interface_construct_signature_boundary.ets` | construct signature 支持待确认 | compiler |
| `xts/boundary/interface_merging_boundary.ets` | merging 支持待确认 | compiler |
| `xts/boundary/interface_runtime_value_boundary.ets` | 运行时擦除行为待确认 | runtime smoke |
| `xts/boundary/interface_typeof_boundary.ets` | typeof 行为待确认 | runtime smoke / compiler |
| `xts/boundary/interface_generic_boundary.ets` | generic interface 支持待确认 | compiler |
| `xts/boundary/interface_export_boundary.ets` | 导出支持待确认 | compiler |

## Validation Pending

| 文件路径/测试点 | 需要验证内容 | 建议验证方式 |
|---|---|---|
| 全部 27 个 .ets 文件 | 编译是否通过、interface 语法是否支持 | DevEco / hvigor 编译 |
| 10 个 pass 文件 | interface 语法和基本行为是否正确 | ohosTest 运行验证 |
| 16 个 boundary 文件 | 支持状态确认 | compiler 检查 + runtime smoke |
| 1 个 regression 文件 | 回归行为是否正确 | ohosTest 运行验证 |

## Mapping Pending

| 测试点 | 需要映射内容 | 后续动作 |
|---|---|---|
| 全部 27 个 .ets 文件 | TypeScript interface 规范映射 | 等主要语言域完成后统一进行 |
| coverage_matrix 88 个测试点 | TypeScript/ArkTS 兼容差异映射 | 等主要语言域完成后统一进行 |
| interface 运行时擦除 | TypeScript interface erasure 规范 | 规范比对阶段确认 |
| interface merging | TypeScript declaration merging 规范 | 规范比对阶段确认 |
| structural typing | TypeScript structural typing 规范 | 规范比对阶段确认 |
| class implements | TypeScript implements 规范 | 规范比对阶段确认 |
