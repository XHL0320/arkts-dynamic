# 07 This Keyword

## 目录定位

本目录用于看护鸿蒙动态 ArkTS 的 `this` 关键字体系，关注 ECMAScript `this` 绑定、函数调用、方法调用、箭头函数 lexical this、class this、constructor this、static this、call/apply/bind、strict/module mode、TypeScript this parameter 边界。

`this` 是 ECMAScript 原生语言能力，有真实运行时语义。TypeScript/ArkTS 还引入 this parameter、this type、polymorphic this 等类型层边界。本目录同时覆盖运行时 this 绑定和类型层 this 语法。

本目录**不是** ArkTS 静态 checker 专项；也**不覆盖** ArkUI / Ability / UI framework。

## 看护范围

| This Keyword 方向 | 看护范围 | 关联章节 |
|---|---|---|
| global/module this | 全局 this、模块顶层 this、strict/module mode 边界 | `this_keyword` / `module` |
| function this | 普通函数调用中的 this 绑定 | `this_keyword` / `function` |
| method this | 对象方法调用中的 receiver this | `this_keyword` / `function` |
| arrow lexical this | 箭头函数捕获外层 this | `this_keyword` / `function` |
| call/apply/bind | 显式绑定 this | `this_keyword` / `function` / `builtin` |
| class instance this | class 实例方法、字段、constructor 中 this | `this_keyword` / `class` |
| derived constructor this | derived class 中 super() 前后 this 边界 | `this_keyword` / `class` |
| static this | static method / static field 中 this | `this_keyword` / `class` |
| getter/setter this | accessor 中 this 绑定 | `this_keyword` / `class` / `object` |
| extracted method | 方法脱离 receiver 后 this 变化 | `this_keyword` / `function` |
| callback this | callback 中 this 丢失/绑定边界 | `this_keyword` / `function` |
| TS this parameter | `function f(this: T)` 支持边界 | `this_keyword` / `typescript_compatibility` |
| this type | polymorphic this / this return type 边界 | `this_keyword` / `typescript_compatibility` |

## 与其他章节的关系

- this 绑定、receiver、call/apply/bind、箭头函数 lexical this、class/static/derived this 边界归本目录。
- 函数调用/参数/return/closure 归 `01_function`；本目录只看 this 绑定。
- class constructor/成员/继承/super 归 `02_class`；本目录只看 class 场景下 this 使用边界。
- module import/export 归 `06_module`；本目录只看 module top-level this。

详见 `this_keyword_to_feature_mapping.md`。

## 资产类型

| 文件 | 作用 |
|---|---|
| `README.md` | 当前目录定位与看护范围 |
| `spec_summary.md` | this 关键字体系规范摘要 |
| `test_design.md` | 正向、负向、运行时异常、边界测试设计 |
| `coverage_matrix.md` | 覆盖点和建议路径 |
| `this_keyword_first_batch_candidate_index.md` | 首批候选用例索引 |
| `this_keyword_to_feature_mapping.md` | this 关键字到其他语言特性的映射 |
| `this_keyword_stage0_generation_report.md` | Stage 0 生成报告 |
| `xts/` | 后续 XTS / ohosTest 候选目录 |
| `issues/` | 已知问题与已修复回归 |

Stage 0 只完成设计骨架、覆盖矩阵和首批候选索引，不批量生成 `.ets` 用例。
