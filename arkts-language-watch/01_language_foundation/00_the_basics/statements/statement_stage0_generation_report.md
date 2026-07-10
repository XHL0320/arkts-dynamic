# Statement Stage 0 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理目录数量 | 1 |
| 新增/补齐 README 数量 | 1 |
| 新增/补齐 spec_summary 数量 | 1 |
| 新增/补齐 test_design 数量 | 1 |
| 新增/补齐 coverage_matrix 数量 | 1 |
| 新增映射文档数量 | 2 |
| 总覆盖测试点数量 | 96 |
| 首批候选用例数量 | 50 |
| 本次生成 .ets 用例数量 | 0 |

## Generated / Updated Files

| 文件 | 操作 | 说明 |
|---|---|---|
| `README.md` | 替换 | 从通用占位替换为语句体系定位文档，包含看护范围表格和章节关系说明 |
| `spec_summary.md` | 替换 | 从通用占位替换为完整 19 章节规范摘要，覆盖 block/empty/expression/if/switch/while/do-while/for/for-in/for-of/break/continue/return/throw/try-catch-finally/labelled/debugger/顶层边界 |
| `test_design.md` | 替换 | 从通用占位替换为 9 章节测试设计，覆盖正向、编译期、运行时、边界、跨特性、跨模块、回归、test262 映射、XTS 策略 |
| `coverage_matrix.md` | 替换 | 从单行占位替换为 96 个测试点覆盖矩阵，覆盖 18 类语句方向 × 5+ 测试点 |
| `statement_first_batch_candidate_index.md` | 新增 | 50 个首批候选索引，P0 32/P1 18，所有状态为 planned |
| `statement_to_feature_mapping.md` | 新增 | 语句体系到 declarations/operators/function/types/module/exception 的完整映射，包含 ownership 规则和重复避免规则 |
| `issues/known_issues.md` | 替换 | 从通用占位替换为语句体系专用已知问题模板 |
| `issues/fixed_issues.md` | 替换 | 从通用占位替换为语句体系专用已修复问题模板 |
| `xts/pass/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_compile/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_runtime/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/regression/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/boundary/.gitkeep` | 新增 | 保留空目录结构（边界用例目录） |

## Coverage Summary

| 语句方向 | 覆盖点数量 | 首批候选数量 | 主要风险 |
|---|---:|---:|---|
| block_statement | 6 | 3 | 块级作用域与 declarations 交叉 |
| empty_statement | 5 | 1 | 低风险 |
| expression_statement | 5 | 2 | 与 operators 交叉 |
| if_statement | 6 | 3 | ToBoolean 转换 |
| switch_statement | 7 | 4 | fall-through 行为；default 位置 |
| while_statement | 6 | 3 | 低风险 |
| do_while_statement | 5 | 2 | 至少执行一次 |
| for_statement | 7 | 3 | init 声明与 declarations 交叉 |
| for_in_statement | 6 | 2 | 枚举顺序待确认 |
| for_of_statement | 6 | 3 | Symbol.iterator 支持；非 iterable TypeError |
| break_statement | 6 | 3 | 循环外 SyntaxError |
| continue_statement | 5 | 3 | 循环外 SyntaxError；switch 中边界 |
| return_statement_boundary | 5 | 1 | finally 中 return 覆盖；函数外 SyntaxError |
| throw_statement | 5 | 2 | 未捕获程序终止 |
| try_catch_finally | 8 | 6 | finally 控制流覆盖；catch binding 作用域 |
| labelled_statement | 5 | 1 | 完整支持待确认 |
| debugger_statement | 5 | 1 | 非调试环境行为 |
| top_level_statement_boundary | 5 | 2 | 顶层 return/break/continue SyntaxError |

## Cross Feature Mapping Summary

| 关联章节 | 映射关系 | 后续动作 |
|---|---|---|
| 00_the_basics/declarations | for init 声明、catch binding、block 内声明 归 declarations；语句控制归 statements | statements 生成循环/try 用例；declarations 做声明绑定 |
| 00_the_basics/operators | if/switch/while 条件求值归 operators；控制流归 statements | statements 生成控制流用例；operators 做表达式 |
| 00_the_basics/types | for-of iterable 判断归 types；循环控制归 statements | statements 生成迭代用例；types 做类型识别 |
| 01_function | return 函数内归 function；函数外语法边界归 statements | statements 生成 return 边界用例；function 做 return 语义 |
| 06_module | 顶层语句位置归 statements；模块解析归 module | statements 做顶层边界；module 做模块解析 |

## Notes

- 本阶段只做语句体系看护设计，不生成 XTS 用例。
- 本章节面向鸿蒙动态 ArkTS，不按静态 ArkTS checker 体系展开。
- statements 是 declarations / operators / function / module 的语句执行语义入口。
- 后续 Statements Stage 1 可生成 P0/P1 XTS 候选。
- 本阶段未提交 commit，未 push 远程仓库。
- 本阶段未执行 ECMA / test262 比对。
- 本阶段未执行编译运行验证。
