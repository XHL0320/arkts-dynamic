# Module Ownership Review

## Purpose

本文件用于确认 `06_module` 章节只负责 import/export 语法、模块作用域、re-export、live binding、循环依赖、模块路径解析和跨文件绑定行为，避免把 declarations / function / class / interface / generic / null_safety / TypeScript compatibility 的完整语义误归入 module。

## Ownership Rule

| 规则类型 | 主归属目录 | Module 中处理方式 |
|---|---|---|
| named import/export | `06_module` | 主负责 |
| default import/export | `06_module` | 主负责 |
| namespace import | `06_module` | 主负责 |
| side-effect import | `06_module` | 主负责模块执行边界 |
| re-export / export star | `06_module` | 主负责 |
| live binding | `06_module` | 主负责 |
| circular dependency | `06_module` | 主负责边界 |
| module scope | `06_module` + declarations | module 负责模块作用域隔离，declarations 负责基础绑定 |
| export function | `06_module` + `01_function` | module 只看导入导出边界 |
| export class | `06_module` + `02_class` | module 只看导入导出边界 |
| export interface | `06_module` + `03_interface` + TS compatibility | module 只做边界 |
| export generic | `06_module` + `04_generic` + TS compatibility | module 只做边界 |
| dynamic import / TLA | `06_module` | 支持状态不确定时做 boundary |
| type-only import/export | `06_module` + TS compatibility | module 做边界索引 |
| function full semantics | `01_function` | module 不展开 |
| class full semantics | `02_class` | module 不展开 |
| interface full semantics | `03_interface` | module 不展开 |
| generic full semantics | `04_generic` | module 不展开 |
| nullish runtime semantics | `05_null_safety` | module 不展开 |
| TS module compatibility full mapping | `02_typescript_compatibility` | module 做核心语言看护，完整差异后续归 TS compatibility |

## Potential Misplaced Cases

| 文件路径 | 测试点 | 是否疑似误放 module | 建议处理 |
|---|---|---|---|
| `xts/pass/module_named_export_import_pass.ets` | named export+import | 否 | keep_as_module — 测试跨文件导入导出绑定 |
| `xts/pass/module_default_export_function_pass.ets` | default export function | 否 | keep_as_module — 测试 default 导入导出边界，不测试函数调用语义 |
| `xts/pass/module_live_binding_update_pass.ets` | live binding | 否 | keep_as_module — 测试模块核心 live binding 语义 |
| `xts/pass/module_scope_isolation_pass.ets` | scope isolation | 否 | keep_as_module — 测试模块作用域隔离 |
| `xts/boundary/module_circular_dependency_basic_boundary.ets` | circular dependency | 否 | keep_as_module_boundary — 测试循环依赖模块加载边界 |
| `xts/boundary/module_type_only_import_boundary.ets` | type-only import | 否 | keep_as_module_boundary — 测试类型层模块导入边界 |
| `xts/helpers/type_only/module_type_only_helper.ets` | export interface+generic | 否 | keep_as_module_helper — helper 提供类型层导出供 boundary 测试 |
| `xts/helpers/named_export/module_named_export_helper.ets` | export function+class | 否 | keep_as_module_helper — helper 提供导出供主用例测试 |

**结论：未发现疑似误放文件。** 所有 33 个 .ets 文件均正确归属于 module 章节管辖范围。

## Cross Feature Ownership

| 交叉点 | Module 负责 | 关联章节负责 | 说明 |
|---|---|---|---|
| export function | 跨文件导出导入边界 | function 负责函数调用、参数、return | 避免重复 |
| export class | 跨文件导出导入边界 | class 负责 constructor、继承、成员 | 避免重复 |
| export interface | type 层模块边界 | interface 负责成员签名、extends、implements | 避免重复 |
| export generic | type 层模块边界 | generic 负责约束、推断、默认类型参数 | 避免重复 |
| module scope | 模块隔离 | declarations 负责基础作用域/重复声明 | 避免重复 |
| circular dependency | 模块加载和初始化边界 | declarations/null_safety 只处理局部行为 | 避免重复 |
| type-only import/export | 模块边界索引 | TS compatibility 负责完整兼容差异 | 避免重复 |
| live binding | 模块绑定更新传播 | declarations 负责基础绑定规则 | 避免重复 |

## Conclusion

经过逐文件审查，当前 module 章节的 33 个 .ets 文件（23 主用例 + 10 helper）均正确归属于模块体系管辖范围。没有发现需要迁移到 declarations / function / class / interface / generic / null_safety / TypeScript compatibility 的误放文件。

交叉场景的处理符合 ownership 规则：
- export function/class 只测试跨文件导入导出绑定，不展开函数调用/class 成员语义
- export interface/generic 只做类型层模块边界，不展开 interface 成员签名/generic 泛型规则
- module scope 只测试模块级隔离，不展开基础作用域/重复声明规则
- circular dependency 只测试模块加载和初始化边界，不展开局部 TDZ/hoisting
- type-only import/export 只做边界索引，不展开 TS compatibility 完整差异
- live binding 只测试模块绑定更新传播，不展开基础绑定规则
