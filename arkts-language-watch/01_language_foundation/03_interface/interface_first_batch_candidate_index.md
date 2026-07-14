# Interface First Batch Candidate Index

## Summary

| 项目 | 数量 |
|---|---:|
| 首批候选数量 | 45 |
| generated 候选数量 | 28 |
| planned 候选数量 | 17 |
| P0 候选数量 | 25 |
| P1 候选数量 | 20 |
| P2 候选数量 | 0 |
| 主用例文件 | 27 |

## Candidate List

| Candidate ID | Case ID | Interface 方向 | 测试点 | 用例类型 | 优先级 | Generation Status | Validation Status | Actual Path | Coverage ID | 所属阶段 | 备注 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| IF-CAND-001 | INTF-PASS-003 | interface_declaration | 空接口声明 | pass | P0 | generated | validation_pending | `xts/pass/interface_empty_pass.ets` | IF-DECL-001 | Stage 1 | TS 核心行为 |
| IF-CAND-002 | INTF-PASS-010 | interface_declaration | interface 带必选属性 | pass | P0 | generated | validation_pending | `xts/pass/interface_required_property_pass.ets` | IF-DECL-002 | Stage 1 | TS 核心行为 |
| IF-CAND-003 | INTF-PASS-006 | interface_declaration | interface 带方法签名 | pass | P0 | generated | validation_pending | `xts/pass/interface_method_signature_pass.ets` | IF-DECL-003 | Stage 1 | TS 核心行为 |
| IF-CAND-004 | INTF-PASS-010 | property_signature | 必选属性签名 | pass | P0 | generated | validation_pending | `xts/pass/interface_required_property_pass.ets` | IF-PROP-001 | Stage 1 | TS 核心行为 |
| IF-CAND-005 | INTF-PASS-009 | optional_property | 可选属性 `prop?: type` | pass | P0 | generated | validation_pending | `xts/pass/interface_optional_property_pass.ets` | IF-OPT-001 | Stage 1 | TS 核心行为 |
| IF-CAND-006 | INTF-PASS-009 | optional_property | 可选属性省略时 undefined | pass | P0 | generated | validation_pending | `xts/pass/interface_optional_property_pass.ets` | IF-OPT-002 | Stage 1 | undefined 行为 |
| IF-CAND-007 | INTF-BOUND-014 | readonly_property | readonly 属性声明 | boundary | P0 | generated | spec_pending | `xts/boundary/interface_readonly_property_boundary.ets` | IF-RO-001 | Stage 1 | TS 核心行为 |
| IF-CAND-008 | INTF-BOUND-014 | readonly_property | readonly 运行时可变性 | boundary | P0 | generated | spec_pending | `xts/boundary/interface_readonly_property_boundary.ets` | IF-RO-004 | Stage 1 | 运行时不保证不可变 |
| IF-CAND-009 | INTF-PASS-006 | method_signature | 方法签名声明 | pass | P0 | generated | validation_pending | `xts/pass/interface_method_signature_pass.ets` | IF-METHOD-001 | Stage 1 | TS 核心行为 |
| IF-CAND-010 | INTF-BOUND-011 | method_signature | 方法参数和返回值 | boundary | P0 | generated | spec_pending | `xts/boundary/interface_method_parameter_type_boundary.ets` | IF-METHOD-002 | Stage 1 | 签名边界 |
| IF-CAND-011 | INTF-PASS-008 | optional_method | 可选方法 `method?()` | pass | P0 | generated | validation_pending | `xts/pass/interface_optional_method_pass.ets` | IF-OPTMETHOD-001 | Stage 1 | TS 核心行为 |
| IF-CAND-012 | INTF-PASS-005 | interface_extends | interface extends 单继承 | pass | P0 | generated | validation_pending | `xts/pass/interface_extends_single_pass.ets` | IF-EXT-001 | Stage 1 | TS 核心行为 |
| IF-CAND-013 | INTF-PASS-005 | interface_extends | interface 继承成员合并 | pass | P0 | generated | validation_pending | `xts/pass/interface_extends_single_pass.ets` | IF-EXT-002 | Stage 1 | 成员合并 |
| IF-CAND-014 | INTF-PASS-004 | multiple_extends | interface extends 多个 | pass | P0 | generated | validation_pending | `xts/pass/interface_extends_multiple_pass.ets` | IF-MULTEXT-001 | Stage 1 | TS 核心行为 |
| IF-CAND-015 | INTF-BOUND-007 | multiple_extends | 多继承冲突成员 | boundary | P0 | generated | spec_pending | `xts/boundary/interface_extends_conflict_property_boundary.ets` | IF-MULTEXT-003 | Stage 1 | 同名不同类型 |
| IF-CAND-016 | INTF-PASS-002 | class_implements | class implements interface | pass | P0 | generated | validation_pending | `xts/pass/interface_class_implements_pass.ets` | IF-IMPL-001 | Stage 1 | TS 核心行为 |
| IF-CAND-017 | INTF-BOUND-003 | class_implements | class 缺少必选成员 | boundary | P0 | generated | spec_pending | `xts/boundary/interface_class_missing_required_member_boundary.ets` | IF-IMPL-002 | Stage 1 | 编译期错误 |
| IF-CAND-018 | none | class_implements | class implements 多个 interface | pass | P0 | planned | planned | `~xts/pass/interface_class_implements_multiple_pass.ets` | IF-IMPL-003 | Stage 0 | 多接口实现；Task 3E 修正：代码仅实现单接口 |
| IF-CAND-019 | INTF-PASS-007 | structural_typing | object literal 赋值给 interface | pass | P0 | generated | validation_pending | `xts/pass/interface_object_literal_assign_pass.ets` | IF-STRUCT-001 | Stage 1 | 结构匹配 |
| IF-CAND-020 | INTF-BOUND-013 | structural_typing | object literal 缺少必选属性 | boundary | P0 | generated | spec_pending | `xts/boundary/interface_object_missing_required_property_boundary.ets` | IF-STRUCT-002 | Stage 1 | 结构不匹配 |
| IF-CAND-021 | INTF-BOUND-012 | structural_typing | object literal 多余属性 | boundary | P0 | generated | spec_pending | `xts/boundary/interface_object_extra_property_boundary.ets` | IF-STRUCT-003 | Stage 1 | excess property |
| IF-CAND-022 | INTF-BOUND-009 | index_signature | string index signature | boundary | P0 | generated | spec_pending | `xts/boundary/interface_index_signature_string_boundary.ets` | IF-IDX-001 | Stage 1 | 支持待确认 |
| IF-CAND-023 | none | index_signature | number index signature | boundary | P0 | planned | planned | `~xts/boundary/interface_index_signature_number_boundary.ets` | IF-IDX-002 | Stage 0 | 支持待确认 |
| IF-CAND-024 | INTF-BOUND-001 | call_signature | call signature 声明 | boundary | P0 | generated | spec_pending | `xts/boundary/interface_call_signature_boundary.ets` | IF-CALL-001 | Stage 1 | 支持待确认 |
| IF-CAND-025 | INTF-BOUND-004 | construct_signature | construct signature 声明 | boundary | P0 | generated | spec_pending | `xts/boundary/interface_construct_signature_boundary.ets` | IF-CTOR-001 | Stage 1 | 支持待确认 |
| IF-CAND-026 | INTF-BOUND-010 | interface_merging | 同名 interface 合并 | boundary | P0 | generated | spec_pending | `xts/boundary/interface_merging_boundary.ets` | IF-MERGE-001 | Stage 1 | 支持待确认 |
| IF-CAND-027 | INTF-BOUND-015 | runtime_erasure | interface 运行时擦除验证 | boundary | P0 | generated | spec_pending | `xts/boundary/interface_runtime_value_boundary.ets` | IF-RT-001 | Stage 1 | 擦除行为待确认 |
| IF-CAND-028 | INTF-BOUND-016 | runtime_erasure | typeof interface | boundary | P0 | generated | spec_pending | `xts/boundary/interface_typeof_boundary.ets` | IF-RT-002 | Stage 1 | 无运行时对象 |
| IF-CAND-029 | none | runtime_erasure | instanceof interface fail_compile | fail_compile | P0 | planned | planned | `~xts/fail_compile/interface_instanceof_fail_compile.ets` | IF-RT-003 | Stage 0 | 无运行时原型 |
| IF-CAND-030 | INTF-BOUND-008 | generic_interface_boundary | generic interface 声明 | boundary | P0 | generated | spec_pending | `xts/boundary/interface_generic_boundary.ets` | IF-GEN-001 | Stage 1 | 支持待确认 |
| IF-CAND-031 | INTF-BOUND-006 | module_export_import_boundary | interface 导出 | boundary | P0 | generated | spec_pending | `xts/boundary/interface_export_boundary.ets` | IF-MOD-001 | Stage 1 | 导出边界 |
| IF-CAND-032 | none | module_export_import_boundary | interface 导入 | boundary | P0 | planned | planned | `~xts/boundary/interface_import_boundary.ets` | IF-MOD-002 | Stage 0 | 导入边界 |
| IF-CAND-033 | none | typescript_compatibility_boundary | TS interface 语法兼容 | boundary | P0 | planned | planned | `~xts/boundary/interface_ts_compatibility_boundary.ets` | IF-TSCOMP-001 | Stage 0 | 兼容状态 |
| IF-CAND-034 | none | arkts_dynamic_boundary | 动态 ArkTS interface 支持 | boundary | P0 | planned | planned | `~xts/boundary/interface_arkts_support_boundary.ets` | IF-ARKTS-001 | Stage 0 | 支持状态 |
| IF-CAND-035 | none | arkts_dynamic_boundary | 动态与静态差异 | boundary | P0 | planned | planned | `~xts/boundary/interface_dynamic_vs_static_boundary.ets` | IF-ARKTS-002 | Stage 0 | 动态/静态差异 |
| IF-CAND-036 | none | interface_declaration | interface 导出 | integration | P1 | planned | planned | `~06_module/xts/integration/interface_export_pass.ets` | IF-DECL-004 | Stage 0 | 模块导出 |
| IF-CAND-037 | none | property_signature | 属性类型标注 | pass | P1 | planned | planned | `~xts/pass/interface_property_type_annotation_pass.ets` | IF-PROP-002 | Stage 0 | 类型标注 |
| IF-CAND-038 | none | optional_property | 可选属性与必选属性混合 | pass | P1 | planned | planned | `~xts/pass/interface_optional_mixed_pass.ets` | IF-OPT-004 | Stage 0 | 混合声明 |
| IF-CAND-039 | none | readonly_property | readonly 与 const 区别 | boundary | P1 | planned | planned | `~xts/boundary/interface_readonly_vs_const_boundary.ets` | IF-RO-003 | Stage 0 | 语义差异 |
| IF-CAND-040 | none | method_signature | 方法签名与函数类型映射 | boundary | P1 | planned | planned | `~xts/boundary/interface_method_function_type_boundary.ets` | IF-METHOD-003 | Stage 0 | 映射关系 |
| IF-CAND-041 | none | interface_extends | interface extends 自身 | fail_compile | P1 | planned | planned | `~xts/fail_compile/interface_extends_self_fail_compile.ets` | IF-EXT-004 | Stage 0 | 循环继承 |
| IF-CAND-042 | none | class_implements | class 方法签名不匹配 | fail_compile | P1 | planned | planned | `~xts/fail_compile/interface_class_method_mismatch_fail_compile.ets` | IF-IMPL-004 | Stage 0 | 签名不匹配 |
| IF-CAND-043 | none | structural_typing | object literal 可选属性省略 | pass | P1 | planned | planned | `~xts/pass/interface_object_optional_omitted_pass.ets` | IF-STRUCT-004 | Stage 0 | 省略行为 |
| IF-CAND-044 | none | interface_merging | 合并后成员完整 | boundary | P1 | planned | planned | `~xts/boundary/interface_merging_members_boundary.ets` | IF-MERGE-002 | Stage 0 | 合并行为 |
| IF-CAND-045 | none | duplicate_member | interface 同名不同类型属性 | fail_compile | P1 | planned | planned | `~xts/fail_compile/interface_duplicate_diff_type_fail_compile.ets` | IF-DUP-002 | Stage 0 | 类型冲突 |

## Additional Files Without Direct Candidate

| 文件 | Case ID | Coverage IDs | 用例类型 |
|---|---|---|---|
| `xts/pass/interface_class_implements_optional_member_pass.ets` | INTF-PASS-001 | IF-IMPL-001 | pass |
| `xts/boundary/interface_class_implements_method_signature_boundary.ets` | INTF-BOUND-002 | IF-IMPL-004, IF-IMPL-005 | boundary |
| `xts/boundary/interface_duplicate_property_boundary.ets` | INTF-BOUND-005 | IF-DUP-001, IF-DUP-003, IF-MERGE-002 | boundary |
| `xts/regression/interface_basic_regression.ets` | INTF-REGR-001 | IF-DECL-002, IF-METHOD-001, IF-OPT-001, IF-PROP-001 | regression |

## Historical Snapshot: Stage 1 Update

> **Note**: Stage 1 generated 27 `.ets` files. All 27 files have Case IDs registered in Task 3E. IF-CAND-018 was corrected to planned (code only implements one interface, not multiple).
