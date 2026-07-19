# 04 Generic

## 目录定位

本目录用于看护鸿蒙动态 ArkTS 的泛型能力，覆盖泛型函数、类、接口、方法、类型实参推断、约束、默认类型参数、继承与重写、variance、Utility Types、运行时擦除以及 ETS/TS/JS 互操作。

泛型主要属于编译期类型语义。ECMAScript 2022 不定义泛型类型参数；ETS/TS/JS 前端最终生成 ABC 并由 Ark Runtime 执行。本目录同时检查：

- ArkTS 编译器接受或拒绝哪些泛型语法；
- 类型参数、约束、推断和兼容性是否在编译期正确处理；
- 泛型擦除后是否保持 ECMAScript 可观察运行行为；
- ABC 和跨语言模块边界是否出现与类型实参相关的异常差异。

本目录不负责 ArkUI、Ability、静态 checker 全集或普通函数、类、接口、模块的完整行为。

## 当前资产

| 文件 | 职责 |
|---|---|
| `spec_summary.md` | 官方能力、TypeScript 参照及 Ark Runtime 边界摘要 |
| `coverage_matrix.md` | 正式 Coverage ID、优先级、Case 关联和验证状态 |
| `generic_first_batch_candidate_index.md` | 首批候选计划、生成状态和实际路径 |
| `generic_to_feature_mapping.md` | 与 function/class/interface/module 等章节的 ownership |
| `generic_test_point_master.md` | 规范驱动的 Generic 测试点全集 |
| `generic_test_design_audit.md` | 对现有 28 个用例的代码级审查 |
| `generic_gap_analysis.md` | missing、partial、错绑、重复和验证缺口 |
| `generic_test_assignment_plan.md` | 可直接分配给共建人员的补充任务 |
| `xts/` | pass、boundary、regression 及后续负向候选 |
| `issues/` | 已知问题和已修复问题 |

Stage 报告仅是历史执行快照，不作为当前状态事实源。当前事实应由实际代码、Coverage Matrix、Candidate Index 和审计文档共同确认。

## 看护范围

| 方向 | 本目录负责 | 主要关联章节 |
|---|---|---|
| generic function/method | 类型参数、显式实参、推断、约束 | `01_function` |
| generic class | 类型参数、实例化、静态限制、继承与 variance | `02_class` |
| generic interface | 泛型契约、extends、implements、variance | `03_interface` |
| inference/default/constraint | 编译期选择、约束满足和诊断 | types / TS compatibility |
| overload/override | 泛型签名兼容和实现边界 | function / class |
| utility/advanced types | ArkTS 支持集与不支持诊断 | TS compatibility |
| runtime/ABC | 擦除后 identity、constructor、异常和字节码边界 | ArkCompiler / Ark Runtime |
| ETS/TS/JS interop | 泛型声明跨语言边界和运行值行为 | `06_module` |

详细归属规则见 `generic_to_feature_mapping.md`。

## 维护规则

1. 阅读实际 `.ets` 代码确认覆盖，不以元数据或历史报告代替代码事实。
2. 正向用例必须有真实断言；编译负向只保留一个主要诊断点。
3. 未经工具链确认的语义保持 `boundary` 或 `validation_pending`。
4. Generic 的编译期约束不得描述为自动运行时检查。
5. 不把类型参数当作运行时值；ABC 检查与普通运行断言分开记录。
6. 修改 Case/Coverage 关联时同步审查 Matrix、Candidate Index 和全局 Registry。

