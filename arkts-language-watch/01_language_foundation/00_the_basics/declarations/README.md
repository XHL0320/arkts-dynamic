# Declarations

## 目录定位

本目录用于看护鸿蒙动态 ArkTS 的声明体系，是 Function / Class / Interface / Module / Annotation 等章节的底层声明规则入口。

声明体系关注的核心问题包括：ECMAScript 声明绑定语义、作用域、变量提升（hoisting）、暂时性死区（TDZ）、重复声明、初始化时机，以及 ArkTS 动态对 TypeScript 声明语法的兼容与限制。

本目录**不是** ArkTS 静态 checker 专项，不按静态类型系统规则展开；也**不覆盖** ArkUI / Ability / UI framework。

## 看护范围

| 声明类型 | 看护范围 | 关联章节 |
|---|---|---|
| `var` declaration | 函数作用域、变量提升、重复声明 | `00_the_basics/declarations` |
| `let` declaration | 块级作用域、TDZ、重复声明限制 | `00_the_basics/declarations` |
| `class` declaration | class 绑定、TDZ、重复声明 | `02_class` |
| `import` declaration | 模块绑定、只读 live binding、导入声明位置 | `06_module/import` |
| `export` declaration | 导出声明、重复导出、声明与导出关系 | `06_module/export` |
| `annotation` declaration | ArkTS annotation 声明、custom annotation | `08_annotation` |

## 与其他章节的关系

- 声明绑定、提升、TDZ、重复声明等**共性规则**归本目录主负责。
- 函数调用、参数、return、arguments、this、闭包归 `01_function`。
- class 成员语义归 `02_class`。
- 模块解析和跨文件行为归 `06_module`。
- annotation 字段、retention、target、runtime access 归 `08_annotation`。

交叉场景（如 function declaration hoisting）的 ownership 归 declarations，关联章节可做集成用例。详见 `declaration_to_feature_mapping.md`。

## 资产类型

| 文件 | 作用 |
|---|---|
| `README.md` | 当前目录定位与看护范围 |
| `spec_summary.md` | 声明体系规范摘要 |
| `test_design.md` | 正向、负向、运行时异常、边界和回归测试设计 |
| `coverage_matrix.md` | 覆盖点和建议路径 |
| `declaration_first_batch_candidate_index.md` | 首批候选用例索引 |
| `declaration_to_feature_mapping.md` | 声明体系到其他语言特性的映射 |
| `declaration_stage0_generation_report.md` | Stage 0 生成报告 |
| `xts/` | 后续 XTS / ohosTest 候选目录 |
| `issues/` | 已知问题与已修复回归 |

Stage 0 只完成设计骨架、覆盖矩阵和首批候选索引，不批量生成 `.ets` 用例。
