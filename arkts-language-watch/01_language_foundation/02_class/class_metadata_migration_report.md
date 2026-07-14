# Class Metadata Migration Report

## Summary

| 项目 | 数量 |
|---|---:|
| 扫描 .ets 总数 | 1132 |
| 主用例数量 | 1132 |
| helper 数量 | 0 |
| 修改文件头数量 | 1132 |
| 分配 Case ID 数量 | 1132 |
| 未分配 Case ID 数量 | 0 |
| 关联 Coverage ID 数量 | 1132 |
| 未关联 Coverage ID 数量 | 0 |
| 新增 Coverage ID 数量 | 0 |
| unresolved 数量 | 0 |
| 错误 Coverage 关联数量 | 0 |
| 更新 Matrix 行数量 | 1132 (via class_total_coverage_matrix.md) |
| 更新 Candidate 行数量 | N/A (no candidate index exists) |
| 更新 Registry 记录数量 | 1132 |
| 代码语义修改数量 | 0 |

## Assigned Case IDs

| Case ID Range | Test Type | Count |
|---|---|---:|
| CLASS-PASS-001 ~ CLASS-PASS-516 | pass | 516 |
| CLASS-FAILC-001 ~ CLASS-FAILC-446 | fail_compile | 446 |
| CLASS-BOUND-001 ~ CLASS-BOUND-109 | boundary | 109 |
| CLASS-FAILR-001 ~ CLASS-FAILR-034 | fail_runtime | 34 |
| CLASS-INTEG-001 ~ CLASS-INTEG-017 | integration | 17 |
| CLASS-REGR-001 ~ CLASS-REGR-010 | regression | 10 |
| **Total** | | **1132** |

## Coverage ID Distribution

| Coverage ID Pattern | Count | Source |
|---|---:|---|
| CLASS-SUPP-9001 ~ CLASS-SUPP-9022 | 22 | Supplementary coverage (00_class_declaration, 17_class_scope) |
| CLASS-TOTAL-0001 ~ CLASS-TOTAL-1130 | 1110 | Total coverage matrix (all subdirectories) |
| **Total** | **1132** | |

## Class Direction Statistics

| Class 方向 (子目录) | 用例数量 |
|---|---:|
| 00_class_declaration | 5 |
| 01_class_type | ~14 |
| 02_class_instantiation | ~6 |
| 03_field | ~42 |
| 04_method | ~47 |
| 05_constructor | ~100 |
| 06_visibility_modifiers | ~97 |
| 07_inheritance | ~96 |
| 08_super | ~52 |
| 09_override | ~56 |
| 10_static_members | ~52 |
| 11_readonly_members | ~22 |
| 12_object_literal | ~6 |
| 13_abstract_class | ~23 |
| 14_class_and_interface | ~52 |
| 15_generic_class | ~57 |
| 16_this_in_class | ~66 |
| 17_class_scope | 6 |
| 18_class_initialization_order | ~52 |
| 19_class_runtime_behavior | ~127 |

## Cross-Chapter Ownership

| Subdirectory | Owner Chapter | Related Chapters | 原因 |
|---|---|---|---|
| 08_super | 02_class | this_keyword | super() 归 class init，this 绑定归 07_this_keyword |
| 14_class_and_interface | 02_class | interface | implements 归 class，interface contract 归 03_interface |
| 15_generic_class | 02_class | generic | 泛型类成员归 class，泛型参数归 04_generic |
| 16_this_in_class | 02_class | this_keyword | class 中 this 归 class，this 绑定语义归 07_this_keyword |
| 19_class_runtime_behavior | 02_class | types | instanceof/prototype 归 types |

## Coverage Matrix Changes

- coverage_matrix.md updated with Coverage Status Summary section
- class_total_coverage_matrix.md unchanged (1130 detailed Coverage IDs already present)
- All 1132 Coverage IDs now generated (have registered Case IDs)

## Candidate Index Changes

- No candidate index file exists for 02_class
- Not created in this task (task scope does not include creating new candidate index)
- Case Registry serves as the primary case-to-file mapping

## Registry Cleanup Review

| Check | Result |
|---|---|
| All planned Coverage have empty Case ID | N/A (all 1132 are generated) |
| All planned Coverage have empty Actual Path | N/A |
| All planned Coverage have planned Validation Status | N/A |
| Coverage Registry status values standardized | ✅ (1149 values normalized) |

## Statistics Verification

| 统计项 | 文件系统实际值 | 文件头统计值 | 报告值 | 是否一致 |
|---|---:|---:|---:|---|
| .ets 总数 | 1132 | 1132 | 1132 | ✅ |
| pass | 516 | 516 | 516 | ✅ |
| fail_compile | 446 | 446 | 446 | ✅ |
| fail_runtime | 34 | 34 | 34 | ✅ |
| boundary | 109 | 109 | 109 | ✅ |
| integration | 17 | 17 | 17 | ✅ |
| regression | 10 | 10 | 10 | ✅ |
| validation_pending | 1023 | 1023 | 1023 | ✅ |
| spec_pending | 109 | 109 | 109 | ✅ |
| verified_* | 0 | 0 | 0 | ✅ |

## Constraints

- 未修改 Class 代码
- 未修改 extends/implements
- 未修改构造器、字段、方法和访问修饰符
- 未新增、删除或重命名 .ets
- 未修改其他章节
- 未执行编译运行
- 未执行 commit
- 未执行 push

## Recommended Next Step

任务 3F-Review：轻量审查 02_class 元数据迁移结果。
