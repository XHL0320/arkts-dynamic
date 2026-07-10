# Keyword Stage 0 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理目录数量 | 1 |
| 新增/补齐 README 数量 | 1 |
| 新增/补齐 spec_summary 数量 | 1 |
| 新增/补齐 test_design 数量 | 1 |
| 新增/补齐 coverage_matrix 数量 | 1 |
| 新增映射文档数量 | 2 |
| 总覆盖测试点数量 | 93 |
| 首批候选用例数量 | 50 |
| 本次生成 .ets 用例数量 | 0 |

## Generated / Updated Files

| 文件 | 操作 | 说明 |
|---|---|---|
| `README.md` | 替换 | 从通用占位替换为关键字体系定位文档，包含看护范围表格和章节关系说明 |
| `spec_summary.md` | 替换 | 从通用占位替换为完整 17 章节规范摘要，覆盖 ES 关键字/保留字/未来保留字/严格模式/上下文关键字/字面量/声明/语句/表达式/模块/async/TS兼容/ArkTS动态 |
| `test_design.md` | 替换 | 从通用占位替换为 9 章节测试设计，覆盖正向语法、编译负向、上下文关键字、严格模式、TS兼容边界、跨特性、回归、test262映射、XTS策略 |
| `coverage_matrix.md` | 替换 | 从单行占位替换为 93 个测试点覆盖矩阵，覆盖 14 类关键字方向 × 5+ 测试点 |
| `keyword_first_batch_candidate_index.md` | 新增 | 50 个首批候选索引，P0 30/P1 20，所有状态为 planned |
| `keyword_to_feature_mapping.md` | 新增 | 关键字体系到 declarations/statements/operators/function/class/module/typescript_compatibility 的完整映射，包含 ownership 规则和重复避免规则 |
| `issues/known_issues.md` | 替换 | 从通用占位替换为关键字体系专用已知问题模板 |
| `issues/fixed_issues.md` | 替换 | 从通用占位替换为关键字体系专用已修复问题模板 |
| `xts/pass/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_compile/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_runtime/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/regression/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/boundary/.gitkeep` | 新增 | 保留空目录结构（边界用例目录） |

## Coverage Summary

| 关键字方向 | 覆盖点数量 | 首批候选数量 | 主要风险 |
|---|---:|---:|---|
| declaration_keywords | 7 | 6 | let 严格模式限制 |
| statement_keywords | 7 | 6 | return 函数外 SyntaxError |
| operator_keywords | 7 | 6 | this/super 绑定语义交叉 |
| module_keywords | 6 | 3 | from/as/default 上下文关键字 |
| literal_keywords | 5 | 2 | true/false/null 作标识符 |
| async_generator_keywords | 7 | 4 | async/await/yield 支持待确认 |
| reserved_words | 7 | 2 | 关键字作标识符 |
| future_reserved_words | 6 | 2 | enum 支持边界 |
| strict_mode_reserved_words | 7 | 3 | 严格模式保留字限制 |
| contextual_keywords | 6 | 3 | of/as/from 上下文边界 |
| typescript_keywords | 7 | 4 | type/namespace/declare 支持待确认 |
| arkts_dynamic_keywords_boundary | 6 | 2 | with 禁止；默认严格模式 |
| identifier_boundary | 7 | 4 | 关键字作变量名 SyntaxError |
| property_name_boundary | 6 | 3 | 关键字作属性名边界 |

## Cross Feature Mapping Summary

| 关联章节 | 映射关系 | 后续动作 |
|---|---|---|
| 00_the_basics/declarations | var/let/const 关键字合法性归 keywords；声明绑定归 declarations | keywords 生成关键字合法性用例；declarations 做声明绑定 |
| 00_the_basics/statements | if/switch/for/while 关键字位置归 keywords；语句执行归 statements | keywords 生成位置合法性用例；statements 做执行语义 |
| 00_the_basics/operators | typeof/delete/void/in/new 关键字归 keywords；运算符行为归 operators | keywords 生成语法边界用例；operators 做运算行为 |
| 01_function | function/async/await/yield/return 关键字归 keywords；函数语义归 function | keywords 生成关键字边界用例；function 做函数语义 |
| 02_class | class/extends/super/static 关键字归 keywords；class 语义归 class | keywords 生成关键字边界用例；class 做 class 语义 |
| 06_module | import/export/from/as 关键字归 keywords；模块解析归 module | keywords 生成语法边界用例；module 做模块解析 |
| typescript_compatibility | type/namespace/declare 边界归 keywords；详细差异归 TS compat | keywords 做边界确认；TS compat 做详细映射 |

## Notes

- 本阶段只做关键字体系看护设计，不生成 XTS 用例。
- 本章节面向鸿蒙动态 ArkTS，不按静态 ArkTS checker 体系展开。
- keywords 是 declarations / statements / operators / function / class / module 的关键字合法性入口。
- 后续 Keywords Stage 1 可生成 P0/P1 XTS 候选。
- 本阶段未提交 commit，未 push 远程仓库。
- 本阶段未执行 ECMA / test262 比对。
- 本阶段未执行编译运行验证。
