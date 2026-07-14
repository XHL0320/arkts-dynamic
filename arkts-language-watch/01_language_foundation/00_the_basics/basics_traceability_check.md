# Basics Traceability Check

## Summary

| 项目 | 数量 |
|---|---:|
| .ets 总数 | 146 |
| 主用例总数 | 144 |
| helper 总数 | 2 |
| 已分配 Case ID | 144 |
| 未分配 Case ID | 0 |
| 已分配 Helper ID | 2 (DECL-HELP-001, DECL-HELP-002) |
| 已关联 Coverage ID | 144 |
| 未关联 Coverage ID | 0 |
| generated Coverage | 144 (from case registry) |
| planned Coverage | varies per subdirectory |
| validation_pending | 120 |
| spec_pending | 24 |
| verified_* | 0 |
| 重复 Case ID | 0 |
| 重复 Coverage ID | 0 |
| 错误 Coverage 关联 | 0 |
| 路径失效 | 0 |
| comment/code mismatch | 0 |
| 代码语义变化 | 0 |

## File Traceability

### Status Distribution

| Test Type | Count | Expected Phase | Expected Outcome | Validation Status |
|---|---:|---|---|---|
| pass | 88 | runtime | value | validation_pending |
| fail_compile | 15 | pending | diagnostic | validation_pending |
| fail_runtime | 13 | runtime | exception | validation_pending |
| boundary | 24 | pending | pending | spec_pending |
| regression | 4 | runtime | value | validation_pending |
| helper | 2 | N/A | N/A | N/A |
| **Total** | **146** | | | |

### Subdirectory Distribution

| 子目录 | 主用例 | helper | Total |
|---|---:|---:|---:|
| declarations | 22 | 2 | 24 |
| keywords | 28 | 0 | 28 |
| operators | 33 | 0 | 33 |
| statements | 33 | 0 | 33 |
| types | 28 | 0 | 28 |
| **Total** | **144** | **2** | **146** |

### Case ID Prefix Distribution

| 子目录 | Prefix | Count |
|---|---|---:|
| declarations | DECL- | 22 |
| keywords | KEYW- | 28 |
| operators | OPER- | 33 |
| statements | STMT- | 33 |
| types | TYPE- | 28 |

## Helper Traceability

| Helper ID | File | Used By | Purpose |
|---|---|---|---|
| DECL-HELP-001 | declarations/xts/fail_runtime/modules/declaration_import_binding_readonly_helper.ets | fail_runtime cases in declarations | Module import binding readonly helper |
| DECL-HELP-002 | declarations/xts/regression/modules/declaration_module_binding_helper.ets | regression cases in declarations | Module binding helper |

## Cross-Chapter Ownership

| 子目录 | Owner Chapter | Related Chapters | 原因 |
|---|---|---|---|
| declarations | 00_the_basics | types | 声明归 basics，类型归 types 交叉 |
| keywords | 00_the_basics | declarations | 关键字归 basics，声明规则交叉 |
| operators | 00_the_basics | types | 运算符归 basics，类型规则交叉 |
| statements | 00_the_basics | function | 语句归 basics，控制流归 function 交叉 |
| types | 00_the_basics | types | 基础类型归 basics，类型系统交叉 |

## Matrix Consistency

00_the_basics 没有 top-level coverage_matrix.md。Coverage 事实来源分布在 5 个子目录的 coverage_matrix.md 中：
- declarations/coverage_matrix.md
- keywords/coverage_matrix.md
- operators/coverage_matrix.md
- statements/coverage_matrix.md
- types/coverage_matrix.md

每个子目录的 coverage_matrix.md 使用旧格式，包含该子目录的 Coverage IDs。Case Registry 包含所有 144 个主用例的完整 Coverage ID 映射。

## Candidate Status

00_the_basics 没有 top-level candidate_index.md。Candidate 索引分布在 5 个子目录中：
- declarations/declaration_first_batch_candidate_index.md
- keywords/keyword_first_batch_candidate_index.md
- operators/operator_first_batch_candidate_index.md
- statements/statement_first_batch_candidate_index.md
- types/type_first_batch_candidate_index.md

Candidate Index Status = distributed (子目录级别存在，格式待收敛)

## Subdirectory Coverage Registry

子目录 Coverage IDs 已通过全局 Coverage Registry 规范化处理（416 个状态值已规范化）。

## Statistics Verification

| 统计项 | 文件系统 | 文件头 | Case Registry | Coverage Registry | 是否一致 |
|---|---:|---:|---:|---:|---|
| .ets 总数 | 146 | 146 | 146 | - | ✅ |
| 主用例 | 144 | 144 | 144 | - | ✅ |
| helper | 2 | 2 | 2 | - | ✅ |
| pass | 88 | 88 | 88 | - | ✅ |
| fail_compile | 15 | 15 | 15 | - | ✅ |
| fail_runtime | 13 | 13 | 13 | - | ✅ |
| boundary | 24 | 24 | 24 | - | ✅ |
| regression | 4 | 4 | 4 | - | ✅ |
| validation_pending | 120 | 120 | 120 | - | ✅ |
| spec_pending | 24 | 24 | 24 | - | ✅ |
| verified_* | 0 | 0 | 0 | 0 | ✅ |
| registered Case | - | 144 | 144 | - | ✅ |
