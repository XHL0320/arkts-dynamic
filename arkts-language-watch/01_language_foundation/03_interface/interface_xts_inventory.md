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

## Inventory By Type

| 用例类型 | 数量 | 目录 |
|---|---:|---|
| pass | 10 | `xts/pass/` |
| fail_compile | 0 | `xts/fail_compile/` |
| fail_runtime | 0 | `xts/fail_runtime/` |
| boundary | 16 | `xts/boundary/` |
| regression | 1 | `xts/regression/` |

## Interface Direction Summary

| Interface 方向 | pass | fail_compile | fail_runtime | boundary | regression | 合计 |
|---|---:|---:|---:|---:|---:|---:|
| interface_declaration | 1 | 0 | 0 | 0 | 1 | 2 |
| property_signature | 1 | 0 | 0 | 0 | 0 | 1 |
| optional_property | 1 | 0 | 0 | 0 | 0 | 1 |
| readonly_property | 0 | 0 | 0 | 1 | 0 | 1 |
| method_signature | 1 | 0 | 0 | 1 | 0 | 2 |
| optional_method | 1 | 0 | 0 | 0 | 0 | 1 |
| interface_extends | 1 | 0 | 0 | 0 | 0 | 1 |
| multiple_extends | 1 | 0 | 0 | 1 | 0 | 2 |
| class_implements | 2 | 0 | 0 | 2 | 0 | 4 |
| structural_typing | 1 | 0 | 0 | 2 | 0 | 3 |
| index_signature | 0 | 0 | 0 | 1 | 0 | 1 |
| call_signature | 0 | 0 | 0 | 1 | 0 | 1 |
| construct_signature | 0 | 0 | 0 | 1 | 0 | 1 |
| interface_merging | 0 | 0 | 0 | 1 | 0 | 1 |
| duplicate_member | 0 | 0 | 0 | 1 | 0 | 1 |
| runtime_erasure | 0 | 0 | 0 | 2 | 0 | 2 |
| generic_interface_boundary | 0 | 0 | 0 | 1 | 0 | 1 |
| module_export_import_boundary | 0 | 0 | 0 | 1 | 0 | 1 |
| typescript_compatibility_boundary | 0 | 0 | 0 | 0 | 0 | 0 |
| arkts_dynamic_boundary | 0 | 0 | 0 | 0 | 0 | 0 |

## Case List

| 序号 | 文件路径 | 用例类型 | Interface 方向 | 推测测试点 | 所属阶段 | 备注 |
|---|---|---|---|---|---|---|
| 1 | `xts/pass/interface_empty_pass.ets` | pass | interface_declaration | 空接口声明 | Stage 1 | TS 核心行为 |
| 2 | `xts/pass/interface_required_property_pass.ets` | pass | property_signature | 必选属性 | Stage 1 | TS 核心行为 |
| 3 | `xts/pass/interface_optional_property_pass.ets` | pass | optional_property | 可选属性省略和提供 | Stage 1 | TS 核心行为 |
| 4 | `xts/pass/interface_method_signature_pass.ets` | pass | method_signature | 方法签名和 class 实现 | Stage 1 | TS 核心行为 |
| 5 | `xts/pass/interface_optional_method_pass.ets` | pass | optional_method | 可选方法省略 | Stage 1 | TS 核心行为 |
| 6 | `xts/pass/interface_extends_single_pass.ets` | pass | interface_extends | 单继承成员合并 | Stage 1 | TS 核心行为 |
| 7 | `xts/pass/interface_extends_multiple_pass.ets` | pass | multiple_extends | 多继承成员合并 | Stage 1 | TS 核心行为 |
| 8 | `xts/pass/interface_class_implements_pass.ets` | pass | class_implements | class 完整实现 interface | Stage 1 | TS 核心行为 |
| 9 | `xts/pass/interface_class_implements_optional_member_pass.ets` | pass | class_implements | class 实现可选成员省略 | Stage 1 | TS 核心行为 |
| 10 | `xts/pass/interface_object_literal_assign_pass.ets` | pass | structural_typing | object literal 赋值 | Stage 1 | TS 核心行为 |
| 11 | `xts/boundary/interface_readonly_property_boundary.ets` | boundary | readonly_property | readonly 属性支持边界 | Stage 1 | enforcement 待确认 |
| 12 | `xts/boundary/interface_duplicate_property_boundary.ets` | boundary | duplicate_member | 重复同名属性 | Stage 1 | 合并/冲突待确认 |
| 13 | `xts/boundary/interface_method_parameter_type_boundary.ets` | boundary | method_signature | 方法参数类型兼容 | Stage 1 | 类型检查待确认 |
| 14 | `xts/boundary/interface_extends_conflict_property_boundary.ets` | boundary | multiple_extends | 继承属性冲突 | Stage 1 | 冲突检测待确认 |
| 15 | `xts/boundary/interface_class_missing_required_member_boundary.ets` | boundary | class_implements | class 缺少必选成员 | Stage 1 | enforcement 待确认 |
| 16 | `xts/boundary/interface_class_implements_method_signature_boundary.ets` | boundary | class_implements | class 方法签名匹配 | Stage 1 | 签名检查待确认 |
| 17 | `xts/boundary/interface_object_missing_required_property_boundary.ets` | boundary | structural_typing | object 缺少必选属性 | Stage 1 | 结构检查待确认 |
| 18 | `xts/boundary/interface_object_extra_property_boundary.ets` | boundary | structural_typing | object 多余属性 | Stage 1 | excess 检查待确认 |
| 19 | `xts/boundary/interface_index_signature_string_boundary.ets` | boundary | index_signature | string index signature | Stage 1 | 支持待确认 |
| 20 | `xts/boundary/interface_call_signature_boundary.ets` | boundary | call_signature | call signature | Stage 1 | 支持待确认 |
| 21 | `xts/boundary/interface_construct_signature_boundary.ets` | boundary | construct_signature | construct signature | Stage 1 | 支持待确认 |
| 22 | `xts/boundary/interface_merging_boundary.ets` | boundary | interface_merging | 同名 interface 合并 | Stage 1 | 支持待确认 |
| 23 | `xts/boundary/interface_runtime_value_boundary.ets` | boundary | runtime_erasure | interface 运行时值 | Stage 1 | 擦除行为待确认 |
| 24 | `xts/boundary/interface_typeof_boundary.ets` | boundary | runtime_erasure | typeof interface | Stage 1 | 无运行时对象 |
| 25 | `xts/boundary/interface_generic_boundary.ets` | boundary | generic_interface_boundary | generic interface | Stage 1 | 支持待确认 |
| 26 | `xts/boundary/interface_export_boundary.ets` | boundary | module_export_import_boundary | interface 导出 | Stage 1 | 支持待确认 |
| 27 | `xts/regression/interface_basic_regression.ets` | regression | interface_declaration | interface 基础回归 | Stage 1 | 回归验证 |
