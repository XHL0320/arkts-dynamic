# Interface Coverage Matrix

| ID | Interface 方向 | 测试点 | 用例类型 | 优先级 | 是否已有用例 | 建议路径 | 关联章节 | 风险点 | 备注 |
|---|---|---|---|---|---|---|---|---|---|
| IF-DECL-001 | interface_declaration | 空接口声明 | pass | P0 | no | `03_interface/xts/pass/interface_empty_declaration_pass` | interface / declarations | 低 | TS 核心行为 |
| IF-DECL-002 | interface_declaration | interface 带必选属性声明 | pass | P0 | no | `03_interface/xts/pass/interface_required_property_pass` | interface / types | 低 | TS 核心行为 |
| IF-DECL-003 | interface_declaration | interface 带方法签名声明 | pass | P0 | no | `03_interface/xts/pass/interface_method_signature_pass` | interface / function | 低 | TS 核心行为 |
| IF-DECL-004 | interface_declaration | interface 导出 | integration | P1 | no | `../06_module/xts/integration/interface_export_pass` | interface / module | 低 | 模块导出 |
| IF-DECL-005 | interface_declaration | interface 声明位置限制 | boundary | P1 | no | `03_interface/xts/boundary/interface_declaration_location_boundary` | interface / declarations | 中 | 位置规则待确认 |
| IF-PROP-001 | property_signature | 必选属性签名 | pass | P0 | no | `03_interface/xts/pass/interface_required_property_pass` | interface / types | 低 | TS 核心行为 |
| IF-PROP-002 | property_signature | 属性类型标注 | pass | P0 | no | `03_interface/xts/pass/interface_property_type_annotation_pass` | interface / types | 低 | 类型标注 |
| IF-PROP-003 | property_signature | 多个属性签名 | pass | P1 | no | `03_interface/xts/pass/interface_multiple_properties_pass` | interface / types | 低 | 多属性 |
| IF-PROP-004 | property_signature | 属性签名编译期检查 | boundary | P1 | no | `03_interface/xts/boundary/interface_property_compile_check_boundary` | interface / types | 中 | 检查行为待确认 |
| IF-PROP-005 | property_signature | 属性签名运行时擦除 | boundary | P1 | no | `03_interface/xts/boundary/interface_property_runtime_erasure_boundary` | interface / types | 高 | 擦除行为待确认 |
| IF-OPT-001 | optional_property | 可选属性 `prop?: type` | pass | P0 | no | `03_interface/xts/pass/interface_optional_property_pass` | interface / types | 低 | TS 核心行为 |
| IF-OPT-002 | optional_property | 可选属性省略时 undefined | pass | P0 | no | `03_interface/xts/pass/interface_optional_undefined_pass` | interface / types | 低 | undefined 行为 |
| IF-OPT-003 | optional_property | 可选属性访问安全 | boundary | P1 | no | `03_interface/xts/boundary/interface_optional_access_boundary` | interface / types / null_safety | 中 | 安全访问边界 |
| IF-OPT-004 | optional_property | 可选属性与必选属性混合 | pass | P1 | no | `03_interface/xts/pass/interface_optional_mixed_pass` | interface / types | 低 | 混合声明 |
| IF-OPT-005 | optional_property | 可选属性运行时检查 | boundary | P1 | no | `03_interface/xts/boundary/interface_optional_runtime_check_boundary` | interface / types | 中 | 运行时行为待确认 |
| IF-RO-001 | readonly_property | readonly 属性声明 | pass | P0 | no | `03_interface/xts/pass/interface_readonly_property_pass` | interface / types | 低 | TS 核心行为 |
| IF-RO-002 | readonly_property | readonly 属性重新赋值 fail_compile | fail_compile | P0 | no | `03_interface/xts/fail_compile/interface_readonly_reassign_fail_compile` | interface / types | 中 | 编译期错误 |
| IF-RO-003 | readonly_property | readonly 与 const 区别 | boundary | P1 | no | `03_interface/xts/boundary/interface_readonly_vs_const_boundary` | interface / types / declarations | 中 | 语义差异 |
| IF-RO-004 | readonly_property | readonly 属性运行时可变性 | boundary | P1 | no | `03_interface/xts/boundary/interface_readonly_runtime_mutability_boundary` | interface / types | 高 | 运行时不保证不可变 |
| IF-RO-005 | readonly_property | readonly 属性对象内容可修改 | pass | P1 | no | `03_interface/xts/pass/interface_readonly_object_mutable_pass` | interface / types | 低 | 浅层不可变 |
| IF-METHOD-001 | method_signature | 方法签名声明 | pass | P0 | no | `03_interface/xts/pass/interface_method_signature_pass` | interface / function | 低 | TS 核心行为 |
| IF-METHOD-002 | method_signature | 方法参数和返回值类型 | pass | P0 | no | `03_interface/xts/pass/interface_method_params_return_pass` | interface / function | 低 | 签名边界 |
| IF-METHOD-003 | method_signature | 方法签名与函数类型映射 | boundary | P1 | no | `03_interface/xts/boundary/interface_method_function_type_boundary` | interface / function | 中 | 映射关系 |
| IF-METHOD-004 | method_signature | 方法签名运行时擦除 | boundary | P1 | no | `03_interface/xts/boundary/interface_method_runtime_erasure_boundary` | interface / function | 高 | 擦除行为 |
| IF-METHOD-005 | method_signature | 多方法签名 | pass | P1 | no | `03_interface/xts/pass/interface_multiple_methods_pass` | interface / function | 低 | 多方法 |
| IF-OPTMETHOD-001 | optional_method | 可选方法 `method?()` | pass | P0 | no | `03_interface/xts/pass/interface_optional_method_pass` | interface / function | 低 | TS 核心行为 |
| IF-OPTMETHOD-002 | optional_method | 可选方法省略 | pass | P1 | no | `03_interface/xts/pass/interface_optional_method_omitted_pass` | interface / function | 低 | 省略行为 |
| IF-OPTMETHOD-003 | optional_method | 可选方法运行时检查 | boundary | P1 | no | `03_interface/xts/boundary/interface_optional_method_runtime_boundary` | interface / function | 中 | 运行时行为 |
| IF-OPTMETHOD-004 | optional_method | 可选方法调用安全 | boundary | P1 | no | `03_interface/xts/boundary/interface_optional_method_call_boundary` | interface / function / null_safety | 中 | 安全调用 |
| IF-EXT-001 | interface_extends | interface extends 单继承 | pass | P0 | no | `03_interface/xts/pass/interface_extends_single_pass` | interface | 低 | TS 核心行为 |
| IF-EXT-002 | interface_extends | interface 继承成员合并 | pass | P0 | no | `03_interface/xts/pass/interface_extends_merge_members_pass` | interface | 低 | 成员合并 |
| IF-EXT-003 | interface_extends | interface 多层继承 | pass | P1 | no | `03_interface/xts/pass/interface_extends_multi_level_pass` | interface | 低 | 多层继承 |
| IF-EXT-004 | interface_extends | interface extends 自身 | fail_compile | P1 | no | `03_interface/xts/fail_compile/interface_extends_self_fail_compile` | interface | 中 | 循环继承 |
| IF-MULTEXT-001 | multiple_extends | interface extends 多个 interface | pass | P0 | no | `03_interface/xts/pass/interface_extends_multiple_pass` | interface | 低 | TS 核心行为 |
| IF-MULTEXT-002 | multiple_extends | 多继承成员合并 | pass | P0 | no | `03_interface/xts/pass/interface_multiple_extends_merge_pass` | interface | 低 | 合并行为 |
| IF-MULTEXT-003 | multiple_extends | 多继承冲突成员 | fail_compile | P0 | no | `03_interface/xts/fail_compile/interface_multiple_extends_conflict_fail_compile` | interface | 中 | 同名不同类型 |
| IF-MULTEXT-004 | multiple_extends | 多继承支持边界 | boundary | P1 | no | `03_interface/xts/boundary/interface_multiple_extends_boundary` | interface | 中 | 支持待确认 |
| IF-IMPL-001 | class_implements | class implements interface | pass | P0 | no | `03_interface/xts/pass/interface_class_implements_pass` | interface / class | 低 | TS 核心行为 |
| IF-IMPL-002 | class_implements | class 缺少必选成员 fail_compile | fail_compile | P0 | no | `03_interface/xts/fail_compile/interface_class_missing_member_fail_compile` | interface / class | 中 | 编译期错误 |
| IF-IMPL-003 | class_implements | class implements 多个 interface | pass | P0 | no | `03_interface/xts/pass/interface_class_implements_multiple_pass` | interface / class | 低 | 多接口实现 |
| IF-IMPL-004 | class_implements | class 方法签名不匹配 fail_compile | fail_compile | P1 | no | `03_interface/xts/fail_compile/interface_class_method_mismatch_fail_compile` | interface / class | 中 | 签名不匹配 |
| IF-IMPL-005 | class_implements | class implements 运行时无关系 | boundary | P1 | no | `03_interface/xts/boundary/interface_class_implements_runtime_boundary` | interface / class | 高 | 运行时擦除 |
| IF-STRUCT-001 | structural_typing | object literal 赋值给 interface | pass | P0 | no | `03_interface/xts/pass/interface_object_literal_assign_pass` | interface / types | 低 | 结构匹配 |
| IF-STRUCT-002 | structural_typing | object literal 缺少必选属性 fail_compile | fail_compile | P0 | no | `03_interface/xts/fail_compile/interface_object_missing_property_fail_compile` | interface / types | 中 | 结构不匹配 |
| IF-STRUCT-003 | structural_typing | object literal 多余属性 | fail_compile | P0 | no | `03_interface/xts/fail_compile/interface_object_excess_property_fail_compile` | interface / types | 中 | excess property |
| IF-STRUCT-004 | structural_typing | object literal 可选属性省略 | pass | P1 | no | `03_interface/xts/pass/interface_object_optional_omitted_pass` | interface / types | 低 | 省略行为 |
| IF-STRUCT-005 | structural_typing | 结构兼容运行时检查 | boundary | P1 | no | `03_interface/xts/boundary/interface_structural_runtime_check_boundary` | interface / types | 高 | 运行时检查待确认 |
| IF-IDX-001 | index_signature | string index signature | boundary | P0 | no | `03_interface/xts/boundary/interface_index_signature_string_boundary` | interface / typescript | 高 | 支持待确认 |
| IF-IDX-002 | index_signature | number index signature | boundary | P0 | no | `03_interface/xts/boundary/interface_index_signature_number_boundary` | interface / typescript | 高 | 支持待确认 |
| IF-IDX-003 | index_signature | index signature 与属性混合 | boundary | P1 | no | `03_interface/xts/boundary/interface_index_mixed_boundary` | interface / typescript | 中 | 混合边界 |
| IF-IDX-004 | index_signature | index signature 运行时行为 | boundary | P1 | no | `03_interface/xts/boundary/interface_index_runtime_boundary` | interface / typescript | 高 | 运行时行为 |
| IF-CALL-001 | call_signature | call signature 声明 | boundary | P0 | no | `03_interface/xts/boundary/interface_call_signature_boundary` | interface / function | 高 | 支持待确认 |
| IF-CALL-002 | call_signature | callable interface 赋值给函数 | boundary | P1 | no | `03_interface/xts/boundary/interface_callable_assign_boundary` | interface / function | 中 | 赋值边界 |
| IF-CALL-003 | call_signature | call signature 运行时调用 | boundary | P1 | no | `03_interface/xts/boundary/interface_call_runtime_boundary` | interface / function | 高 | 运行时行为 |
| IF-CALL-004 | call_signature | call signature 与 method 共存 | boundary | P1 | no | `03_interface/xts/boundary/interface_call_method_coexist_boundary` | interface / function | 中 | 共存边界 |
| IF-CTOR-001 | construct_signature | construct signature 声明 | boundary | P0 | no | `03_interface/xts/boundary/interface_construct_signature_boundary` | interface / class | 高 | 支持待确认 |
| IF-CTOR-002 | construct_signature | newable interface 赋值给构造器 | boundary | P1 | no | `03_interface/xts/boundary/interface_newable_assign_boundary` | interface / class | 中 | 赋值边界 |
| IF-CTOR-003 | construct_signature | construct signature 运行时 new | boundary | P1 | no | `03_interface/xts/boundary/interface_construct_runtime_boundary` | interface / class | 高 | 运行时行为 |
| IF-CTOR-004 | construct signature 与 call signature 共存 | boundary | P1 | no | `03_interface/xts/boundary/interface_construct_call_coexist_boundary` | interface / function / class | 中 | 共存边界 |
| IF-MERGE-001 | interface_merging | 同名 interface 合并 | boundary | P0 | no | `03_interface/xts/boundary/interface_merging_boundary` | interface / declarations | 高 | 支持待确认 |
| IF-MERGE-002 | interface_merging | 合并后成员完整 | boundary | P1 | no | `03_interface/xts/boundary/interface_merging_members_boundary` | interface / declarations | 中 | 合并行为 |
| IF-MERGE-003 | interface_merging | 同名不同类型属性冲突 | boundary | P1 | no | `03_interface/xts/boundary/interface_merging_conflict_boundary` | interface / declarations | 中 | 冲突行为 |
| IF-MERGE-004 | interface_merging | 合并运行时行为 | boundary | P1 | no | `03_interface/xts/boundary/interface_merging_runtime_boundary` | interface / declarations | 高 | 运行时行为 |
| IF-DUP-001 | duplicate_member | interface 同名同类型属性 | boundary | P1 | no | `03_interface/xts/boundary/interface_duplicate_same_type_boundary` | interface / declarations | 中 | 重复声明 |
| IF-DUP-002 | duplicate_member | interface 同名不同类型属性 fail_compile | fail_compile | P1 | no | `03_interface/xts/fail_compile/interface_duplicate_diff_type_fail_compile` | interface / declarations | 中 | 类型冲突 |
| IF-DUP-003 | duplicate_member | interface 同名方法签名 | boundary | P1 | no | `03_interface/xts/boundary/interface_duplicate_method_boundary` | interface / function | 中 | 方法重复 |
| IF-DUP-004 | duplicate_member | 单个 interface 内重复属性 | fail_compile | P1 | no | `03_interface/xts/fail_compile/interface_internal_duplicate_fail_compile` | interface | 中 | 编译期错误 |
| IF-RT-001 | runtime_erasure | interface 运行时擦除验证 | boundary | P0 | no | `03_interface/xts/boundary/interface_runtime_erasure_boundary` | interface / types | 高 | 擦除行为待确认 |
| IF-RT-002 | runtime_erasure | typeof interface | boundary | P0 | no | `03_interface/xts/boundary/interface_typeof_boundary` | interface / types / operators | 高 | 无运行时对象 |
| IF-RT-003 | runtime_erasure | instanceof interface | fail_compile | P0 | no | `03_interface/xts/fail_compile/interface_instanceof_fail_compile` | interface / types / operators | 中 | 无运行时原型 |
| IF-RT-004 | runtime_erasure | interface 名作为运行时值 | boundary | P1 | no | `03_interface/xts/boundary/interface_name_as_value_boundary` | interface / types | 高 | 运行时值边界 |
| IF-RT-005 | runtime_erasure | interface 不产生运行时代码 | boundary | P1 | no | `03_interface/xts/boundary/interface_no_runtime_code_boundary` | interface / types | 高 | 擦除验证 |
| IF-GEN-001 | generic_interface_boundary | generic interface 声明 | boundary | P0 | no | `03_interface/xts/boundary/interface_generic_declaration_boundary` | interface / generic | 高 | 支持待确认 |
| IF-GEN-002 | generic_interface_boundary | generic interface 类型参数 | boundary | P1 | no | `03_interface/xts/boundary/interface_generic_type_param_boundary` | interface / generic | 中 | 类型参数 |
| IF-GEN-003 | generic_interface_boundary | generic interface 约束 | boundary | P1 | no | `03_interface/xts/boundary/interface_generic_constraint_boundary` | interface / generic | 中 | 约束边界 |
| IF-GEN-004 | generic_interface_boundary | generic interface 默认类型 | boundary | P1 | no | `03_interface/xts/boundary/interface_generic_default_type_boundary` | interface / generic | 中 | 默认类型 |
| IF-MOD-001 | module_export_import_boundary | interface 导出 | boundary | P0 | no | `03_interface/xts/boundary/interface_export_boundary` | interface / module | 高 | 导出边界 |
| IF-MOD-002 | module_export_import_boundary | interface 导入 | boundary | P0 | no | `03_interface/xts/boundary/interface_import_boundary` | interface / module | 高 | 导入边界 |
| IF-MOD-003 | module_export_import_boundary | interface re-export | boundary | P1 | no | `03_interface/xts/boundary/interface_reexport_boundary` | interface / module | 中 | re-export |
| IF-MOD-004 | module_export_import_boundary | interface 跨模块结构兼容 | boundary | P1 | no | `03_interface/xts/boundary/interface_cross_module_structural_boundary` | interface / module / types | 中 | 跨模块 |
| IF-TSCOMP-001 | typescript_compatibility_boundary | TS interface 语法兼容 | boundary | P0 | no | `03_interface/xts/boundary/interface_ts_compatibility_boundary` | interface / typescript | 高 | 兼容状态 |
| IF-TSCOMP-002 | typescript_compatibility_boundary | interface 与 type alias 区别 | boundary | P1 | no | `03_interface/xts/boundary/interface_vs_type_alias_boundary` | interface / typescript | 中 | 语义差异 |
| IF-TSCOMP-003 | typescript_compatibility_boundary | interface 与 class 区别 | boundary | P1 | no | `03_interface/xts/boundary/interface_vs_class_boundary` | interface / class / typescript | 中 | 语义差异 |
| IF-TSCOMP-004 | typescript_compatibility_boundary | interface 声明合并 TS 特性 | boundary | P1 | no | `03_interface/xts/boundary/interface_ts_merging_boundary` | interface / typescript | 中 | TS 特有 |
| IF-ARKTS-001 | arkts_dynamic_boundary | 动态 ArkTS interface 支持 | boundary | P0 | no | `03_interface/xts/boundary/interface_arkts_support_boundary` | interface | 高 | 支持状态 |
| IF-ARKTS-002 | arkts_dynamic_boundary | 动态与静态 ArkTS interface 差异 | boundary | P0 | no | `03_interface/xts/boundary/interface_dynamic_vs_static_boundary` | interface | 高 | 动态/静态差异 |
| IF-ARKTS-003 | arkts_dynamic_boundary | interface 运行时检查行为 | boundary | P1 | no | `03_interface/xts/boundary/interface_runtime_check_boundary` | interface | 高 | 运行时检查 |
| IF-ARKTS-004 | arkts_dynamic_boundary | interface 编译期 vs 运行时 | boundary | P1 | no | `03_interface/xts/boundary/interface_compile_vs_runtime_boundary` | interface | 高 | 编译/运行差异 |

## Stage 1 Update Summary

以下 27 个 `.ets` 文件在 Interface Stage 1 中生成，对应 coverage matrix 中多个测试点：

| 生成文件 | 对应 Coverage IDs | 用例类型 |
|---|---|---|
| `xts/pass/interface_empty_pass.ets` | IF-DECL-001 | pass |
| `xts/pass/interface_required_property_pass.ets` | IF-DECL-002, IF-PROP-001 | pass |
| `xts/pass/interface_optional_property_pass.ets` | IF-OPT-001, IF-OPT-002, IF-OPT-004 | pass |
| `xts/pass/interface_method_signature_pass.ets` | IF-DECL-003, IF-METHOD-001, IF-METHOD-005 | pass |
| `xts/pass/interface_optional_method_pass.ets` | IF-OPTMETHOD-001, IF-OPTMETHOD-002 | pass |
| `xts/pass/interface_extends_single_pass.ets` | IF-EXT-001, IF-EXT-002 | pass |
| `xts/pass/interface_extends_multiple_pass.ets` | IF-MULTEXT-001, IF-MULTEXT-002 | pass |
| `xts/pass/interface_class_implements_pass.ets` | IF-IMPL-001, IF-IMPL-003 | pass |
| `xts/pass/interface_class_implements_optional_member_pass.ets` | IF-IMPL-001 | pass |
| `xts/pass/interface_object_literal_assign_pass.ets` | IF-STRUCT-001 | pass |
| `xts/boundary/interface_readonly_property_boundary.ets` | IF-RO-001, IF-RO-004, IF-RO-005 | boundary |
| `xts/boundary/interface_duplicate_property_boundary.ets` | IF-DUP-001, IF-DUP-003, IF-MERGE-002 | boundary |
| `xts/boundary/interface_method_parameter_type_boundary.ets` | IF-METHOD-002, IF-METHOD-003 | boundary |
| `xts/boundary/interface_extends_conflict_property_boundary.ets` | IF-MULTEXT-003, IF-MULTEXT-004 | boundary |
| `xts/boundary/interface_class_missing_required_member_boundary.ets` | IF-IMPL-002, IF-IMPL-005 | boundary |
| `xts/boundary/interface_class_implements_method_signature_boundary.ets` | IF-IMPL-004, IF-IMPL-005 | boundary |
| `xts/boundary/interface_object_missing_required_property_boundary.ets` | IF-STRUCT-002 | boundary |
| `xts/boundary/interface_object_extra_property_boundary.ets` | IF-STRUCT-003 | boundary |
| `xts/boundary/interface_index_signature_string_boundary.ets` | IF-IDX-001, IF-IDX-003 | boundary |
| `xts/boundary/interface_call_signature_boundary.ets` | IF-CALL-001, IF-CALL-002, IF-CALL-003 | boundary |
| `xts/boundary/interface_construct_signature_boundary.ets` | IF-CTOR-001, IF-CTOR-002, IF-CTOR-003 | boundary |
| `xts/boundary/interface_merging_boundary.ets` | IF-MERGE-001, IF-MERGE-002 | boundary |
| `xts/boundary/interface_runtime_value_boundary.ets` | IF-RT-001, IF-RT-004, IF-RT-005 | boundary |
| `xts/boundary/interface_typeof_boundary.ets` | IF-RT-002 | boundary |
| `xts/boundary/interface_generic_boundary.ets` | IF-GEN-001, IF-GEN-002, IF-GEN-003 | boundary |
| `xts/boundary/interface_export_boundary.ets` | IF-MOD-001 | boundary |
| `xts/regression/interface_basic_regression.ets` | IF-DECL-002, IF-PROP-001, IF-METHOD-001, IF-OPT-001 | regression |