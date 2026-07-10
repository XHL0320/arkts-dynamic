# Module Gap List

## Summary

| 缺口类型 | 数量 |
|---|---:|
| P0 未覆盖 | 5 |
| P1 未覆盖 | 12 |
| P2 未覆盖 | 0 |
| helper 关系待确认 | 2 |
| boundary 待确认 | 12 |
| 需要后续 TypeScript / ArkTS 兼容比对 | 33 |
| 需要 ECMA / test262 比对 | 15 |
| 需要编译验证 | 33 |
| 需要运行验证 | 33 |

## P0 Gaps

| ID | Module 方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| MOD-NE-004 | named_export | export interface 边界 | planned boundary | 确认后生成 boundary |
| MOD-DE-004 | default_export | 重复 default export fail_compile | planned fail_compile | 确认后生成 fail_compile 或 boundary |
| MOD-NI-004 | named_import | missing export import fail_compile | planned fail_compile | 确认后生成 fail_compile 或 boundary |
| MOD-NSI-005 | namespace_import | namespace 支持边界 | created boundary | 编译验证确认支持 |
| MOD-LB-004 | live_binding | live binding 支持边界 | created boundary | 编译验证确认支持 |

## P1 Gaps

| ID | Module 方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| MOD-NE-005 | named_export | export generic function 边界 | planned boundary | 确认后生成 |
| MOD-DE-005 | default_export | default + named 混合导出 | planned | 生成 pass 用例 |
| MOD-EL-004 | export_list | export list 重复 fail_compile | planned fail_compile | 确认后生成 |
| MOD-EL-005 | export_list | export list 不存在名称 fail_compile | planned fail_compile | 确认后生成 |
| MOD-ER-003 | export_rename | export rename 不存在 fail_compile | planned fail_compile | 确认后生成 |
| MOD-IR-003 | import_rename | import rename 不存在 fail_compile | planned fail_compile | 确认后生成 |
| MOD-NI-005 | named_import | 同名 import fail_compile | planned fail_compile | 确认后生成 |
| MOD-SSI-003 | side_effect_import | side-effect import 多次 | planned boundary | 确认后生成 |
| MOD-RE-004 | re_export_named | re-export missing fail_compile | planned fail_compile | 确认后生成 |
| MOD-ES-003 | export_star | export * 冲突 ambiguous | planned boundary | 确认后生成 |
| MOD-CD-005 | circular_dependency | 循环依赖 class TDZ | planned boundary | 确认后生成 |
| MOD-TSCOMP-001 | typescript_compatibility_boundary | TS module 兼容 | planned boundary | 确认后生成 |

## Helper Pending Confirmation

| 主用例/helper | 原因 | 后续确认方式 |
|---|---|---|
| 所有主用例 import 路径 | 是否需要 `.ets` 扩展名 | hvigor 编译验证 |
| `re_export_named_helper.ets` 内部路径 | re-export helper 内部 import 深度 | hvigor 编译验证 |

## Boundary Pending Confirmation

| 文件路径/测试点 | 原因 | 后续确认方式 |
|---|---|---|
| `module_namespace_import_mutation_boundary.ets` | namespace 只读 enforcement 待确认 | compiler / runtime |
| `module_export_star_boundary.ets` | export star 支持待确认 | compiler / runtime |
| `module_export_star_as_namespace_boundary.ets` | ES2020 支持待确认 | compiler |
| `module_imported_binding_assignment_boundary.ets` | 绑定只读 enforcement 待确认 | compiler / runtime |
| `module_top_level_this_boundary.ets` | 模块顶层 this 行为待确认 | runtime smoke |
| `module_circular_dependency_basic_boundary.ets` | 循环依赖初始化顺序待确认 | runtime |
| `module_circular_initialization_boundary.ets` | 未初始化导出行为待确认 | runtime |
| `module_missing_export_boundary.ets` | 缺失导出检测方式待确认 | compiler |
| `module_duplicate_export_boundary.ets` | 重复导出检测方式待确认 | compiler |
| `module_dynamic_import_boundary.ets` | ES2020 支持待确认 | compiler / runtime |
| `module_top_level_await_boundary.ets` | ES2022 支持待确认 | compiler / runtime |
| `module_type_only_import_boundary.ets` | TS 特性支持待确认 | compiler |

## Validation Pending

| 文件路径/测试点 | 需要验证内容 | 建议验证方式 |
|---|---|---|
| 全部 33 个 .ets 文件 | 编译是否通过、模块行为是否正确 | DevEco / hvigor 编译 |
| 10 个 pass 主用例 | 模块导入导出运行时行为 | ohosTest 运行验证 |
| 12 个 boundary 主用例 | 支持状态确认 | compiler 检查 + runtime smoke |
| 1 个 regression 主用例 | 回归行为是否正确 | ohosTest 运行验证 |
| 10 个 helper 文件 | 被导入模块编译是否通过 | hvigor 编译验证 |

## Mapping Pending

| 测试点 | 需要映射内容 | 后续动作 |
|---|---|---|
| 全部 33 个 .ets 文件 | ECMA module 规范映射 | 等主要语言域完成后统一进行 |
| coverage_matrix 100 个测试点 | TypeScript/ArkTS module 兼容差异映射 | 等主要语言域完成后统一进行 |
| live binding | ECMA module live binding 规范 | 规范比对阶段确认 |
| circular dependency | ECMA module 循环依赖规范 | 规范比对阶段确认 |
| type-only import/export | TypeScript type-only 规范 | 规范比对阶段确认 |
| dynamic import / TLA | ECMA2020/2022 规范 | 规范比对阶段确认 |
