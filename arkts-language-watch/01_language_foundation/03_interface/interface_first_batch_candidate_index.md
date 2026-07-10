# Interface First Batch Candidate Index

## Summary

| 项目 | 数量 |
|---|---:|
| 首批候选数量 | 45 |
| P0 候选数量 | 25 |
| P1 候选数量 | 20 |
| P2 候选数量 | 0 |
| ohosTest 适用候选 | 30 |
| 需要 test262 对照候选 | 10 |

## Candidate List

| Candidate ID | Interface 方向 | Test Point | Case Type | Priority | Suggested File Path | Suitable for ohosTest | Needs test262 | Related Chapter | Status | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| IF-CAND-001 | interface_declaration | 空接口声明 | pass | P0 | `03_interface/xts/pass/interface_empty_declaration_pass.ets` | yes | no | interface / declarations | planned | TS 核心行为 |
| IF-CAND-002 | interface_declaration | interface 带必选属性 | pass | P0 | `03_interface/xts/pass/interface_required_property_pass.ets` | yes | no | interface / types | planned | TS 核心行为 |
| IF-CAND-003 | interface_declaration | interface 带方法签名 | pass | P0 | `03_interface/xts/pass/interface_method_signature_pass.ets` | yes | no | interface / function | planned | TS 核心行为 |
| IF-CAND-004 | property_signature | 必选属性签名 | pass | P0 | `03_interface/xts/pass/interface_required_property_pass.ets` | yes | no | interface / types | planned | TS 核心行为 |
| IF-CAND-005 | optional_property | 可选属性 `prop?: type` | pass | P0 | `03_interface/xts/pass/interface_optional_property_pass.ets` | yes | no | interface / types | planned | TS 核心行为 |
| IF-CAND-006 | optional_property | 可选属性省略时 undefined | pass | P0 | `03_interface/xts/pass/interface_optional_undefined_pass.ets` | yes | no | interface / types | planned | undefined 行为 |
| IF-CAND-007 | readonly_property | readonly 属性声明 | pass | P0 | `03_interface/xts/pass/interface_readonly_property_pass.ets` | yes | no | interface / types | planned | TS 核心行为 |
| IF-CAND-008 | readonly_property | readonly 重新赋值 fail_compile | fail_compile | P0 | `03_interface/xts/fail_compile/interface_readonly_reassign_fail_compile.ets` | no | no | interface / types | planned | 编译期错误 |
| IF-CAND-009 | method_signature | 方法签名声明 | pass | P0 | `03_interface/xts/pass/interface_method_signature_pass.ets` | yes | no | interface / function | planned | TS 核心行为 |
| IF-CAND-010 | method_signature | 方法参数和返回值 | pass | P0 | `03_interface/xts/pass/interface_method_params_return_pass.ets` | yes | no | interface / function | planned | 签名边界 |
| IF-CAND-011 | optional_method | 可选方法 `method?()` | pass | P0 | `03_interface/xts/pass/interface_optional_method_pass.ets` | yes | no | interface / function | planned | TS 核心行为 |
| IF-CAND-012 | interface_extends | interface extends 单继承 | pass | P0 | `03_interface/xts/pass/interface_extends_single_pass.ets` | yes | no | interface | planned | TS 核心行为 |
| IF-CAND-013 | interface_extends | interface 继承成员合并 | pass | P0 | `03_interface/xts/pass/interface_extends_merge_members_pass.ets` | yes | no | interface | planned | 成员合并 |
| IF-CAND-014 | multiple_extends | interface extends 多个 | pass | P0 | `03_interface/xts/pass/interface_extends_multiple_pass.ets` | yes | no | interface | planned | TS 核心行为 |
| IF-CAND-015 | multiple_extends | 多继承冲突成员 fail_compile | fail_compile | P0 | `03_interface/xts/fail_compile/interface_multiple_extends_conflict_fail_compile.ets` | no | no | interface | planned | 同名不同类型 |
| IF-CAND-016 | class_implements | class implements interface | pass | P0 | `03_interface/xts/pass/interface_class_implements_pass.ets` | yes | no | interface / class | planned | TS 核心行为 |
| IF-CAND-017 | class_implements | class 缺少必选成员 fail_compile | fail_compile | P0 | `03_interface/xts/fail_compile/interface_class_missing_member_fail_compile.ets` | no | no | interface / class | planned | 编译期错误 |
| IF-CAND-018 | class_implements | class implements 多个 interface | pass | P0 | `03_interface/xts/pass/interface_class_implements_multiple_pass.ets` | yes | no | interface / class | planned | 多接口实现 |
| IF-CAND-019 | structural_typing | object literal 赋值给 interface | pass | P0 | `03_interface/xts/pass/interface_object_literal_assign_pass.ets` | yes | no | interface / types | planned | 结构匹配 |
| IF-CAND-020 | structural_typing | object literal 缺少必选属性 fail_compile | fail_compile | P0 | `03_interface/xts/fail_compile/interface_object_missing_property_fail_compile.ets` | no | no | interface / types | planned | 结构不匹配 |
| IF-CAND-021 | structural_typing | object literal 多余属性 fail_compile | fail_compile | P0 | `03_interface/xts/fail_compile/interface_object_excess_property_fail_compile.ets` | no | no | interface / types | planned | excess property |
| IF-CAND-022 | index_signature | string index signature | boundary | P0 | `03_interface/xts/boundary/interface_index_signature_string_boundary.ets` | yes | no | interface / typescript | planned | 支持待确认 |
| IF-CAND-023 | index_signature | number index signature | boundary | P0 | `03_interface/xts/boundary/interface_index_signature_number_boundary.ets` | yes | no | interface / typescript | planned | 支持待确认 |
| IF-CAND-024 | call_signature | call signature 声明 | boundary | P0 | `03_interface/xts/boundary/interface_call_signature_boundary.ets` | yes | no | interface / function | planned | 支持待确认 |
| IF-CAND-025 | construct_signature | construct signature 声明 | boundary | P0 | `03_interface/xts/boundary/interface_construct_signature_boundary.ets` | yes | no | interface / class | planned | 支持待确认 |
| IF-CAND-026 | interface_merging | 同名 interface 合并 | boundary | P0 | `03_interface/xts/boundary/interface_merging_boundary.ets` | yes | no | interface / declarations | planned | 支持待确认 |
| IF-CAND-027 | runtime_erasure | interface 运行时擦除验证 | boundary | P0 | `03_interface/xts/boundary/interface_runtime_erasure_boundary.ets` | yes | no | interface / types | planned | 擦除行为待确认 |
| IF-CAND-028 | runtime_erasure | typeof interface | boundary | P0 | `03_interface/xts/boundary/interface_typeof_boundary.ets` | yes | no | interface / types / operators | planned | 无运行时对象 |
| IF-CAND-029 | runtime_erasure | instanceof interface fail_compile | fail_compile | P0 | `03_interface/xts/fail_compile/interface_instanceof_fail_compile.ets` | no | no | interface / types / operators | planned | 无运行时原型 |
| IF-CAND-030 | generic_interface_boundary | generic interface 声明 | boundary | P0 | `03_interface/xts/boundary/interface_generic_declaration_boundary.ets` | yes | no | interface / generic | planned | 支持待确认 |
| IF-CAND-031 | module_export_import_boundary | interface 导出 | boundary | P0 | `03_interface/xts/boundary/interface_export_boundary.ets` | yes | no | interface / module | planned | 导出边界 |
| IF-CAND-032 | module_export_import_boundary | interface 导入 | boundary | P0 | `03_interface/xts/boundary/interface_import_boundary.ets` | yes | no | interface / module | planned | 导入边界 |
| IF-CAND-033 | typescript_compatibility_boundary | TS interface 语法兼容 | boundary | P0 | `03_interface/xts/boundary/interface_ts_compatibility_boundary.ets` | yes | no | interface / typescript | planned | 兼容状态 |
| IF-CAND-034 | arkts_dynamic_boundary | 动态 ArkTS interface 支持 | boundary | P0 | `03_interface/xts/boundary/interface_arkts_support_boundary.ets` | yes | no | interface | planned | 支持状态 |
| IF-CAND-035 | arkts_dynamic_boundary | 动态与静态 ArkTS 差异 | boundary | P0 | `03_interface/xts/boundary/interface_dynamic_vs_static_boundary.ets` | yes | no | interface | planned | 动态/静态差异 |
| IF-CAND-036 | interface_declaration | interface 导出 | integration | P1 | `../06_module/xts/integration/interface_export_pass.ets` | yes | no | interface / module | planned | 模块导出 |
| IF-CAND-037 | property_signature | 属性类型标注 | pass | P1 | `03_interface/xts/pass/interface_property_type_annotation_pass.ets` | yes | no | interface / types | planned | 类型标注 |
| IF-CAND-038 | optional_property | 可选属性与必选属性混合 | pass | P1 | `03_interface/xts/pass/interface_optional_mixed_pass.ets` | yes | no | interface / types | planned | 混合声明 |
| IF-CAND-039 | readonly_property | readonly 与 const 区别 | boundary | P1 | `03_interface/xts/boundary/interface_readonly_vs_const_boundary.ets` | yes | no | interface / types / declarations | planned | 语义差异 |
| IF-CAND-040 | method_signature | 方法签名与函数类型映射 | boundary | P1 | `03_interface/xts/boundary/interface_method_function_type_boundary.ets` | yes | no | interface / function | planned | 映射关系 |
| IF-CAND-041 | interface_extends | interface extends 自身 fail_compile | fail_compile | P1 | `03_interface/xts/fail_compile/interface_extends_self_fail_compile.ets` | no | no | interface | planned | 循环继承 |
| IF-CAND-042 | class_implements | class 方法签名不匹配 fail_compile | fail_compile | P1 | `03_interface/xts/fail_compile/interface_class_method_mismatch_fail_compile.ets` | no | no | interface / class | planned | 签名不匹配 |
| IF-CAND-043 | structural_typing | object literal 可选属性省略 | pass | P1 | `03_interface/xts/pass/interface_object_optional_omitted_pass.ets` | yes | no | interface / types | planned | 省略行为 |
| IF-CAND-044 | interface_merging | 合并后成员完整 | boundary | P1 | `03_interface/xts/boundary/interface_merging_members_boundary.ets` | yes | no | interface / declarations | planned | 合并行为 |
| IF-CAND-045 | duplicate_member | interface 同名不同类型属性 fail_compile | fail_compile | P1 | `03_interface/xts/fail_compile/interface_duplicate_diff_type_fail_compile.ets` | no | no | interface / declarations | planned | 类型冲突 |

## Stage 1 Update Summary

Stage 1 生成了 27 个 `.ets` 文件，对应 27 个 candidate 标记为 created，18 个保持 planned。

### Created Candidates (27)

| Candidate ID | 实际路径 |
|---|---|
| IF-CAND-001 | `xts/pass/interface_empty_pass.ets` |
| IF-CAND-002 | `xts/pass/interface_required_property_pass.ets` |
| IF-CAND-003 | `xts/pass/interface_method_signature_pass.ets` |
| IF-CAND-004 | `xts/pass/interface_required_property_pass.ets` |
| IF-CAND-005 | `xts/pass/interface_optional_property_pass.ets` |
| IF-CAND-006 | `xts/pass/interface_optional_property_pass.ets` |
| IF-CAND-007 | `xts/boundary/interface_readonly_property_boundary.ets` |
| IF-CAND-008 | `xts/boundary/interface_readonly_property_boundary.ets` |
| IF-CAND-009 | `xts/pass/interface_method_signature_pass.ets` |
| IF-CAND-010 | `xts/boundary/interface_method_parameter_type_boundary.ets` |
| IF-CAND-011 | `xts/pass/interface_optional_method_pass.ets` |
| IF-CAND-012 | `xts/pass/interface_extends_single_pass.ets` |
| IF-CAND-013 | `xts/pass/interface_extends_single_pass.ets` |
| IF-CAND-014 | `xts/pass/interface_extends_multiple_pass.ets` |
| IF-CAND-015 | `xts/boundary/interface_extends_conflict_property_boundary.ets` |
| IF-CAND-016 | `xts/pass/interface_class_implements_pass.ets` |
| IF-CAND-017 | `xts/boundary/interface_class_missing_required_member_boundary.ets` |
| IF-CAND-018 | `xts/pass/interface_class_implements_pass.ets` |
| IF-CAND-019 | `xts/pass/interface_object_literal_assign_pass.ets` |
| IF-CAND-020 | `xts/boundary/interface_object_missing_required_property_boundary.ets` |
| IF-CAND-021 | `xts/boundary/interface_object_extra_property_boundary.ets` |
| IF-CAND-022 | `xts/boundary/interface_index_signature_string_boundary.ets` |
| IF-CAND-024 | `xts/boundary/interface_call_signature_boundary.ets` |
| IF-CAND-025 | `xts/boundary/interface_construct_signature_boundary.ets` |
| IF-CAND-026 | `xts/boundary/interface_merging_boundary.ets` |
| IF-CAND-027 | `xts/boundary/interface_runtime_value_boundary.ets` |
| IF-CAND-028 | `xts/boundary/interface_typeof_boundary.ets` |
| IF-CAND-030 | `xts/boundary/interface_generic_boundary.ets` |
| IF-CAND-031 | `xts/boundary/interface_export_boundary.ets` |

### Additional Files Without Direct Candidate

| 文件 | Coverage IDs | 用例类型 |
|---|---|---|
| `xts/pass/interface_class_implements_optional_member_pass.ets` | IF-IMPL-001 | pass |
| `xts/boundary/interface_class_implements_method_signature_boundary.ets` | IF-IMPL-004 | boundary |
| `xts/boundary/interface_duplicate_property_boundary.ets` | IF-DUP-001, IF-DUP-003 | boundary |
| `xts/regression/interface_basic_regression.ets` | IF-DECL-002, IF-PROP-001 | regression |
