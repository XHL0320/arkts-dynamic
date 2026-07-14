# Basics Metadata Migration Report

## Summary

| 项目 | 精确数量 |
|---|---:|
| 扫描 .ets 总数 | 146 |
| 主用例数量 | 144 |
| helper 数量 | 2 |
| 修改文件头数量 | 146 |
| 分配 Case ID 数量 | 144 |
| 分配 Helper ID 数量 | 2 |
| 未分配 ID 数量 | 0 |
| 关联 Coverage ID 数量 | 144 |
| 未关联 Coverage ID 数量 | 0 |
| 新增 Coverage ID 数量 | 0 |
| 子目录 Coverage 同步到全局 Registry 数量 | 416 (状态值规范化) |
| unresolved 数量 | 0 |
| 错误 Coverage 关联数量 | 0 |
| 更新 Matrix 行数量 | 5 子目录 coverage_matrix.md（格式待收敛） |
| 更新 Candidate 行数量 | 5 子目录 candidate_index.md（格式待收敛） |
| 更新 Registry 记录数量 | 144 (case) + 416 (coverage) |
| 代码语义修改数量 | 0 |

## Exact Asset Statistics

| 统计项 | 精确数量 |
|---|---:|
| .ets 总数 | 146 |
| pass | 88 |
| fail_compile | 15 |
| fail_runtime | 13 |
| boundary | 24 |
| regression | 4 |
| integration | 0 |
| helper | 2 |
| validation_pending | 120 |
| spec_pending | 24 |
| verified_* | 0 |

## Assigned Case IDs

| Case ID Prefix | 子目录 | Test Type | Count |
|---|---|---|---:|
| DECL- | declarations | pass/boundary/fail_compile/fail_runtime/regression | 22 |
| KEYW- | keywords | pass/boundary/fail_compile | 28 |
| OPER- | operators | pass/boundary/fail_runtime/regression | 33 |
| STMT- | statements | pass/boundary/fail_compile/fail_runtime/regression | 33 |
| TYPE- | types | pass/boundary/fail_compile/fail_runtime/regression | 28 |
| **Total** | | | **144** |

## Assigned Helper IDs

| Helper ID | 文件路径 | Purpose |
|---|---|---|
| DECL-HELP-001 | declarations/xts/fail_runtime/modules/declaration_import_binding_readonly_helper.ets | Module import binding readonly helper |
| DECL-HELP-002 | declarations/xts/regression/modules/declaration_module_binding_helper.ets | Module binding helper |

## Basics Direction Statistics

| 子目录 | 用例数量 |
|---|---:|
| declarations | 22 |
| keywords | 28 |
| operators | 33 |
| statements | 33 |
| types | 28 |
| **Total** | **144** |

## Coverage Mapping Review

Coverage ID 关联基于 Case Registry 中的 Proposed Coverage ID。每个主用例的 Coverage ID 来自对应子目录的 coverage_matrix.md，已在 Task 2 Registry 创建时提取。

## Coverage Matrix Changes

- 5 个子目录 coverage_matrix.md 使用旧格式，格式待收敛
- Coverage 事实来源分布在子目录级别
- 全局 Coverage Registry 已规范化 416 个状态值

## Candidate Index Status

- 5 个子目录 candidate_index.md 存在，使用旧格式
- 无 top-level candidate_index.md
- Candidate Index Status = distributed（子目录级别存在，格式待收敛）

## Subdirectory Coverage Registry Changes

| 子目录 | Coverage Registry 状态值规范化 |
|---|---:|
| declarations (DECL-*) | included in 416 |
| keywords (KEYW-*, KW-*) | included in 416 |
| operators (OPER-*, OP-*) | included in 416 |
| statements (STMT-*) | included in 416 |
| types (TYPE-*, TYPE-STAGE1-*) | included in 416 |

## Global Registry Changes

| Registry | Change | Count |
|---|---|---:|
| Case Registry | proposed_id → registered | 144 |
| Case Registry Summary | 已有明确 Case ID | 1317 → 1461 |
| Case Registry Summary | 建议分配 Case ID | 298 → 154 |
| Coverage Registry | Status normalized | 416 values |
| Unlinked Case List | Entries removed | 146 |
| Unlinked Case List Summary | 无 Case ID | 154 → 10 |

## Cross-Chapter Ownership

| 子目录 | Owner Chapter | Related Chapters | 原因 |
|---|---|---|---|
| declarations | 00_the_basics | types | 声明归 basics，类型归 types 交叉 |
| keywords | 00_the_basics | declarations | 关键字归 basics，声明规则交叉 |
| operators | 00_the_basics | types | 运算符归 basics，类型规则交叉 |
| statements | 00_the_basics | function | 语句归 basics，控制流归 function 交叉 |
| types | 00_the_basics | types | 基础类型归 basics，类型系统交叉 |

## Full Code Integrity Check

| 项目 | 精确数量 |
|---|---:|
| 应检查文件 | 146 |
| 已完成全量检查 | 146 |
| 仅顶部注释变化 | 146 |
| 非头部变化 | 0 |
| 无法取得基线 | 0 |
| 代码语义修改 | 0 |

**方法**: 对全部 146 个 .ets 文件执行 `git diff --unified=0`，逐行检查变更内容。所有 `+`/`-` 行均属于 `/* ... */` 或 `//` 注释块。0 代码语义变更。

## Semantic Sampling

| 子目录 | 抽查数 | PASS | Warning | FAIL |
|---|---:|---:|---:|---:|
| declarations | 5 | 5 | 0 | 0 |
| keywords | 5 | 5 | 0 | 0 |
| operators | 5 | 5 | 0 | 0 |
| statements | 5 | 5 | 0 | 0 |
| types | 5 | 5 | 0 | 0 |
| **Total** | **25** | **25** | **0** | **0** |

高风险方向（fail_runtime 全部 13、regression 全部 4、boundary 全部 24）通过自动化状态检查覆盖。

## Statistics Verification

| 统计项 | 文件系统 | 文件头 | Inventory | Traceability | Migration | Registry | 是否一致 |
|---|---:|---:|---:|---:|---:|---:|---|
| .ets 总数 | 146 | 146 | 146 | 146 | 146 | 146 | ✅ |
| pass | 88 | 88 | 88 | 88 | 88 | 88 | ✅ |
| fail_compile | 15 | 15 | 15 | 15 | 15 | 15 | ✅ |
| fail_runtime | 13 | 13 | 13 | 13 | 13 | 13 | ✅ |
| boundary | 24 | 24 | 24 | 24 | 24 | 24 | ✅ |
| regression | 4 | 4 | 4 | 4 | 4 | 4 | ✅ |
| validation_pending | 120 | 120 | 120 | 120 | 120 | 120 | ✅ |
| spec_pending | 24 | 24 | 24 | 24 | 24 | 24 | ✅ |
| verified_* | 0 | 0 | 0 | 0 | 0 | 0 | ✅ |

## Constraints

- 未修改代码主体
- 未修改变量声明、常量声明、类型标注、初始化表达式
- 未修改赋值、控制流、运算符、字面量、类型别名、枚举
- 未新增、删除或重命名 .ets
- 未修改其他章节
- 未执行编译运行
- 未执行 commit
- 未执行 push

## Recommended Next Step

任务 3H-Review：审查 00_the_basics 元数据迁移结果。这是 01_language_foundation 最后一个章节迁移任务。通过 3H-Review 后，建议执行 01_language_foundation 全局元数据收口审查。
