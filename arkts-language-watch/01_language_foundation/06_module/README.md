# 06 Module

## 目录定位

本目录用于看护鸿蒙动态 ArkTS 的模块体系，关注 ES module、named/default import/export、re-export、namespace import、side-effect import、dynamic import、type-only import/export、模块作用域、循环依赖和 live binding。

ES module 是 ECMAScript 原生语言能力；TypeScript/ArkTS 在 type-only import/export、interface/type/generic export 等方面存在额外兼容边界。本目录同时覆盖 ECMAScript module 原生语义和 TypeScript/ArkTS 类型层模块语法。

本目录**不是** ArkTS 静态 checker 专项；也**不覆盖** ArkUI / Ability / UI framework。

## 子目录结构

| 子目录 | 看护范围 | 当前状态 |
|---|---|---|
| `export/` | named export、default export、export list、export rename、re-export、export star | Stage 0 placeholder |
| `import/` | named import、default import、namespace import、import rename、side-effect import | Stage 0 placeholder |
| `top_level_statement/` | 模块作用域、顶层声明、top-level await、循环依赖 | Stage 0 placeholder |

## 看护范围

| Module 方向 | 看护范围 | 关联章节 |
|---|---|---|
| named export | `export { a }`、声明导出、重命名导出 | `module` / `declarations` |
| default export | default function/class/value export | `module` / `function` / `class` |
| named import | `import { a } from`、重命名 import | `module` / `declarations` |
| namespace import | `import * as ns from` | `module` / `types` |
| side-effect import | `import './x'` 执行副作用 | `module` / `statements` |
| re-export | `export { a } from`、`export * from` | `module` |
| live binding | export binding 更新后 import 侧可见 | `module` / `declarations` |
| module scope | 模块作用域、顶层声明隔离 | `module` / `declarations` |
| circular dependency | 循环依赖初始化边界 | `module` / `runtime` |
| type-only import/export | interface/type/generic 类型层导入导出边界 | `module` / `interface` / `generic` / `typescript_compatibility` |

## 与其他章节的关系

- import/export 语法、模块作用域、re-export、live binding、循环依赖、模块路径解析边界归本目录。
- 声明绑定、作用域基础规则归 `declarations`；本目录只覆盖模块级隔离和导入导出绑定。
- 函数调用/参数/return/closure 归 `01_function`；export function/import function 只做模块边界。
- class constructor/成员/继承归 `02_class`；export class/import class 只做模块边界。

详见 `module_to_feature_mapping.md`。

## 资产类型

| 文件 | 作用 |
|---|---|
| `README.md` | 当前目录定位与看护范围 |
| `spec_summary.md` | 模块体系规范摘要 |
| `test_design.md` | 正向、负向、运行时异常、边界测试设计 |
| `coverage_matrix.md` | 覆盖点和建议路径 |
| `module_first_batch_candidate_index.md` | 首批候选用例索引 |
| `module_to_feature_mapping.md` | 模块体系到其他语言特性的映射 |
| `module_stage0_generation_report.md` | Stage 0 生成报告 |
| `xts/` | 后续 XTS / ohosTest 候选目录 |
| `issues/` | 已知问题与已修复回归 |

Stage 0 只完成设计骨架、覆盖矩阵和首批候选索引，不批量生成 `.ets` 用例。
