# Interface XTS Inventory

## Summary

| 项目 | 数量 |
|---|---:|
| .ets 文件总数 | 27 |
| pass 用例数量 | 10 |
| fail_compile 用例数量 | 0 |
| fail_runtime 用例数量 | 0 |
| boundary 用例数量 | 16 |
| regression 用例数量 | 1 |
| helper module 文件数量 | 0 |
| validation_pending | 11 |
| spec_pending | 16 |
| verified_* | 0 |

## Case List

| 序号 | 文件路径 | 用例类型 | Case ID | Coverage ID | Interface 方向 | 所属阶段 | 备注 |
|---|---|---|---|---|---|---|---|
| 1 | `xts/pass/interface_class_implements_optional_member_pass.ets` | pass | INTF-PASS-001 | IF-IMPL-001 | class_implements | Stage 1 | 可选成员 |
| 2 | `xts/pass/interface_class_implements_pass.ets` | pass | INTF-PASS-002 | IF-IMPL-001 | class_implements | Stage 1 | TS 核心行为 |
| 3 | `xts/pass/interface_empty_pass.ets` | pass | INTF-PASS-003 | IF-DECL-001 | interface_declaration | Stage 1 | 空接口 |
| 4 | `xts/pass/interface_extends_multiple_pass.ets` | pass | INTF-PASS-004 | IF-MULTEXT-001, IF-MULTEXT-002 | multiple_extends | Stage 1 | 多继承 |
| 5 | `xts/pass/interface_extends_single_pass.ets` | pass | INTF-PASS-005 | IF-EXT-001, IF-EXT-002 | interface_extends | Stage 1 | 单继承 |
| 6 | `xts/pass/interface_method_signature_pass.ets` | pass | INTF-PASS-006 | IF-DECL-003, IF-METHOD-001, IF-METHOD-005 | method_signature | Stage 1 | 方法签名 |
| 7 | `xts/pass/interface_object_literal_assign_pass.ets` | pass | INTF-PASS-007 | IF-STRUCT-001 | structural_typing | Stage 1 | 结构赋值 |
| 8 | `xts/pass/interface_optional_method_pass.ets` | pass | INTF-PASS-008 | IF-OPTMETHOD-001, IF-OPTMETHOD-002 | optional_method | Stage 1 | 可选方法 |
| 9 | `xts/pass/interface_optional_property_pass.ets` | pass | INTF-PASS-009 | IF-OPT-001, IF-OPT-002, IF-OPT-004 | optional_property | Stage 1 | 可选属性 |
| 10 | `xts/pass/interface_required_property_pass.ets` | pass | INTF-PASS-010 | IF-DECL-002, IF-PROP-001 | property_signature | Stage 1 | 必选属性 |
| 11 | `xts/boundary/interface_call_signature_boundary.ets` | boundary | INTF-BOUND-001 | IF-CALL-001, IF-CALL-002, IF-CALL-003 | call_signature | Stage 1 | call 签名 |
| 12 | `xts/boundary/interface_class_implements_method_signature_boundary.ets` | boundary | INTF-BOUND-002 | IF-IMPL-004, IF-IMPL-005 | class_implements | Stage 1 | 签名不匹配 |
| 13 | `xts/boundary/interface_class_missing_required_member_boundary.ets` | boundary | INTF-BOUND-003 | IF-IMPL-002, IF-IMPL-005 | class_implements | Stage 1 | 缺少成员 |
| 14 | `xts/boundary/interface_construct_signature_boundary.ets` | boundary | INTF-BOUND-004 | IF-CTOR-001, IF-CTOR-002, IF-CTOR-003 | construct_signature | Stage 1 | construct 签名 |
| 15 | `xts/boundary/interface_duplicate_property_boundary.ets` | boundary | INTF-BOUND-005 | IF-DUP-001, IF-DUP-003, IF-MERGE-002 | duplicate_member | Stage 1 | 重复属性 |
| 16 | `xts/boundary/interface_export_boundary.ets` | boundary | INTF-BOUND-006 | IF-MOD-001 | module_export_import_boundary | Stage 1 | 导出 |
| 17 | `xts/boundary/interface_extends_conflict_property_boundary.ets` | boundary | INTF-BOUND-007 | IF-MULTEXT-003, IF-MULTEXT-004 | multiple_extends | Stage 1 | 冲突成员 |
| 18 | `xts/boundary/interface_generic_boundary.ets` | boundary | INTF-BOUND-008 | IF-GEN-001, IF-GEN-002 | generic_interface_boundary | Stage 1 | 泛型接口 |
| 19 | `xts/boundary/interface_index_signature_string_boundary.ets` | boundary | INTF-BOUND-009 | IF-IDX-001, IF-IDX-003 | index_signature | Stage 1 | string index |
| 20 | `xts/boundary/interface_merging_boundary.ets` | boundary | INTF-BOUND-010 | IF-MERGE-001, IF-MERGE-002 | interface_merging | Stage 1 | 接口合并 |
| 21 | `xts/boundary/interface_method_parameter_type_boundary.ets` | boundary | INTF-BOUND-011 | IF-METHOD-002, IF-METHOD-003 | method_signature | Stage 1 | 参数类型 |
| 22 | `xts/boundary/interface_object_extra_property_boundary.ets` | boundary | INTF-BOUND-012 | IF-STRUCT-003 | structural_typing | Stage 1 | 多余属性 |
| 23 | `xts/boundary/interface_object_missing_required_property_boundary.ets` | boundary | INTF-BOUND-013 | IF-STRUCT-002 | structural_typing | Stage 1 | 缺少属性 |
| 24 | `xts/boundary/interface_readonly_property_boundary.ets` | boundary | INTF-BOUND-014 | IF-RO-001, IF-RO-004, IF-RO-005 | readonly_property | Stage 1 | readonly |
| 25 | `xts/boundary/interface_runtime_value_boundary.ets` | boundary | INTF-BOUND-015 | IF-RT-001, IF-RT-004, IF-RT-005 | runtime_erasure | Stage 1 | 运行时擦除 |
| 26 | `xts/boundary/interface_typeof_boundary.ets` | boundary | INTF-BOUND-016 | IF-RT-002 | runtime_erasure | Stage 1 | typeof |
| 27 | `xts/regression/interface_basic_regression.ets` | regression | INTF-REGR-001 | IF-DECL-002, IF-METHOD-001, IF-OPT-001, IF-PROP-001 | regression | Stage 1 | 回归验证 |
