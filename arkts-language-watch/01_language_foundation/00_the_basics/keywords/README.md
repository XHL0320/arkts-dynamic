# Keywords

## 目录定位

本目录用于看护鸿蒙动态 ArkTS 的关键字体系，关注关键字、保留字、上下文关键字、未来保留字和严格/模块模式下的关键字限制。

本目录**不是** ArkTS 静态 checker 专项，不展开静态类型检查规则；也**不覆盖** ArkUI / Ability / UI framework。

## 看护范围

| 关键字方向 | 看护范围 | 关联章节 |
|---|---|---|
| declaration keywords | `var/let/const/function/class` 作为声明关键字和标识符边界 | `keywords` / `declarations` / `function` / `class` |
| control flow keywords | `if/else/switch/for/while/break/continue/return/throw/try/catch/finally` | `keywords` / `statements` |
| expression/operator keywords | `typeof/void/delete/instanceof/in/new/this/super` | `keywords` / `operators` / `class` |
| module keywords | `import/export/from/as/default` | `keywords` / `module` / `declarations` |
| async keywords | `async/await/yield` 上下文和非法位置边界 | `keywords` / `function` / `statements` |
| literal keywords | `true/false/null` 字面量关键字和标识符边界 | `keywords` / `types` |
| strict reserved words | `implements/interface/package/private/protected/public/static` 等严格模式保留字 | `keywords` / `typescript_compatibility` |
| TS contextual keywords | `type/namespace/abstract/readonly/declare` 等 TS/ArkTS 兼容边界 | `keywords` / `typescript_compatibility` |

## 与其他章节的关系

- 关键字合法性、保留字限制、上下文关键字边界归本目录。
- 声明绑定、提升、TDZ、重复声明归 `declarations`。
- 语句执行语义归 `statements`；本目录只验证语句关键字位置合法性。
- 运算符运行语义归 `operators`；本目录只验证 typeof/delete/void/in/instanceof/new 作为关键字/运算符的语法边界。
- 函数调用/参数/return/closure 归 `01_function`；本目录只验证 function/async/return/await/yield 关键字边界。

详见 `keyword_to_feature_mapping.md`。

## 资产类型

| 文件 | 作用 |
|---|---|
| `README.md` | 当前目录定位与看护范围 |
| `spec_summary.md` | 关键字体系规范摘要 |
| `test_design.md` | 正向、负向、运行时异常、边界和回归测试设计 |
| `coverage_matrix.md` | 覆盖点和建议路径 |
| `keyword_first_batch_candidate_index.md` | 首批候选用例索引 |
| `keyword_to_feature_mapping.md` | 关键字体系到其他语言特性的映射 |
| `keyword_stage0_generation_report.md` | Stage 0 生成报告 |
| `xts/` | 后续 XTS / ohosTest 候选目录 |
| `issues/` | 已知问题与已修复回归 |

Stage 0 只完成设计骨架、覆盖矩阵和首批候选索引，不批量生成 `.ets` 用例。
