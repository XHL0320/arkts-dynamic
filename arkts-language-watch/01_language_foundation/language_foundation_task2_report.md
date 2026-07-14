# Language Foundation Task 2 Report

## Summary

| 项目 | 数量 |
| --- | --- |
| 扫描主用例数量 | 1615 |
| 扫描 helper 数量 | 22 |
| Coverage ID 数量 | 4890 |
| 已有明确 Case ID 数量 | 0 |
| Proposed Case ID 数量 | 1615 |
| 无法解析用例数量 | 0 |
| 重复 Coverage ID 数量 | 144 |
| 重复 Case ID 数量 | 0 |
| Legacy ID 数量 | 3360 |
| 无 Coverage ID 主用例数量 | 17 |
| 无 Candidate ID 主用例数量 | 1230 |
| 新增规范/注册表文档数量 | 9 |

## Generated Files

| 文件 | 说明 |
| --- | --- |
| test_case_metadata_spec.md | 元数据字段、枚举、模板和职责边界 |
| language_foundation_id_naming_rules.md | 章节前缀、方向和编号规则 |
| language_foundation_case_id_registry.md | Case ID 到实际路径的注册表 |
| language_foundation_coverage_id_registry.md | Coverage ID 全局注册表 |
| language_foundation_legacy_id_mapping.md | Legacy ID 非执行映射 |
| language_foundation_unlinked_case_list.md | 缺失关联清单 |
| language_foundation_duplicate_id_report.md | ID 冲突审计 |
| language_foundation_metadata_migration_plan.md | 分章节迁移规划 |
| language_foundation_task2_report.md | Task 2 快照 |

## Key Decisions

1. Case ID 使用 `<CHAPTER>-<TYPE>-<NUMBER>`。
2. Coverage ID 使用 `<CHAPTER>-<DIRECTION>-<NUMBER>`，成熟旧 ID 优先保留。
3. helper 使用 Helper ID，不计入正式 Coverage。
4. Test Type 固定为 `pass/fail_compile/fail_runtime/boundary/regression/integration/helper`。
5. Expected Phase 使用统一枚举。
6. Validation Status 使用统一枚举，生成和验证分离。
7. Stage Report 只保存任务快照。
8. coverage matrix、candidate index、Case Registry、Coverage Registry 各自承担唯一职责。

## Major Conflicts

| 问题 | 数量 | 说明 |
| --- | --- | --- |
| Coverage ID semantic conflicts | 144 | 同一 ID 对应多个归一化测试点 |
| Legacy mapping collisions | 0 | 多个旧 ID 映射到同一建议 ID |
| Cases without Coverage ID | 17 | 写回前必须确认 ownership |
| Helpers without Used By | 2 | 需要复核 import 关系 |

## Migration Readiness

| 检查项 | 结果 | 说明 |
| --- | --- | --- |
| 是否具备批量补 Case ID 条件 | partial | Proposed ID 已生成，需分章节写回 |
| 是否存在阻断性重复 ID | yes | 先人工处理硬冲突 |
| 是否存在无法确定 ownership 的用例 | yes | unresolved=0, no_coverage=17 |
| 是否建议分章节迁移 | yes | 降低同步风险 |

## Constraints

- 本阶段未修改现有 `.ets`；
- 本阶段未修改 coverage matrix；
- 本阶段未修改 candidate index；
- 本阶段未修改 Stage 报告；
- 本阶段未新增测试用例；
- 本阶段未执行编译运行；
- 本阶段未执行 commit；
- 本阶段未执行 push。

## Recommended Next Step

任务 3：逐章节落地 Case ID 元数据并收敛 Coverage Matrix / Candidate Index。
