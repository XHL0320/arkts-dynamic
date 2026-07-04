# Annotation Directory Merge Report

## Background

当前 `01_language_foundation` 下存在两个 08 编号目录：

- `08_annotation/`
- `08_decorator_annotation/`

为避免编号冲突和内容分散，本次统一保留 `08_decorator_annotation/`，并将旧 `08_annotation/` 内容迁移到 `08_decorator_annotation/01_arkts_annotation/`。

## Pre-Merge Directory Scan

| 目录 | 是否存在 | 文件数量 | 子目录数量 | 备注 |
|---|---|---|---|---|
| arkts-language-watch/01_language_foundation/08_annotation/ | 是 | 13 | 14 | 旧 annotation 目录 |
| arkts-language-watch/01_language_foundation/08_decorator_annotation/ | 是 | 162 | 102 | 保留的 decorator / annotation 总目录 |

## Old Directory Files

| ??? | ???? | ?????? | ???? | ?? |
|---|---|---|---|---|
| arkts-language-watch/01_language_foundation/08_annotation/README.md | .md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/README.md | Merged | ?????????? |
| arkts-language-watch/01_language_foundation/08_annotation/annotation/coverage_matrix.md | .md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/annotation/coverage_matrix.md | Migrated | ?????????? |
| arkts-language-watch/01_language_foundation/08_annotation/annotation/README.md | .md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/annotation/README.md | Migrated | ?????????? |
| arkts-language-watch/01_language_foundation/08_annotation/annotation/spec_summary.md | .md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/annotation/spec_summary.md | Migrated | ?????????? |
| arkts-language-watch/01_language_foundation/08_annotation/annotation/test_design.md | .md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/annotation/test_design.md | Migrated | ?????????? |
| arkts-language-watch/01_language_foundation/08_annotation/annotation/issues/fixed_issues.md | .md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/annotation/issues/fixed_issues.md | Migrated | ?????????? |
| arkts-language-watch/01_language_foundation/08_annotation/annotation/issues/known_issues.md | .md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/annotation/issues/known_issues.md | Migrated | ?????????? |
| arkts-language-watch/01_language_foundation/08_annotation/custom_annotation/coverage_matrix.md | .md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/custom_annotation/coverage_matrix.md | Migrated | ?????????? |
| arkts-language-watch/01_language_foundation/08_annotation/custom_annotation/README.md | .md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/custom_annotation/README.md | Migrated | ?????????? |
| arkts-language-watch/01_language_foundation/08_annotation/custom_annotation/spec_summary.md | .md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/custom_annotation/spec_summary.md | Migrated | ?????????? |
| arkts-language-watch/01_language_foundation/08_annotation/custom_annotation/test_design.md | .md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/custom_annotation/test_design.md | Migrated | ?????????? |
| arkts-language-watch/01_language_foundation/08_annotation/custom_annotation/issues/fixed_issues.md | .md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/custom_annotation/issues/fixed_issues.md | Migrated | ?????????? |
| arkts-language-watch/01_language_foundation/08_annotation/custom_annotation/issues/known_issues.md | .md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/custom_annotation/issues/known_issues.md | Migrated | ?????????? |

## Migration Summary

| 指标 | 数量 |
|---|---|
| 旧目录文件数量 | 13 |
| 成功迁移文件数量 | 12 |
| 内容相同跳过数量 | 0 |
| 合并追加文件数量 | 1 |
| 重命名保存文件数量 | 0 |
| 未迁移文件数量 | 0 |
| 修复路径引用数量 | 5 |
| 删除旧目录 | 是 |

## Migrated Files

| 原路径 | 新路径 | 状态 | 备注 |
|---|---|---|---|
| arkts-language-watch/01_language_foundation/08_annotation/README.md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/README.md | Merged | 目标已有内容，追加迁移章节 |
| arkts-language-watch/01_language_foundation/08_annotation/annotation/coverage_matrix.md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/annotation/coverage_matrix.md | Migrated | 无法识别旧子目录，迁入 migrated_unknown |
| arkts-language-watch/01_language_foundation/08_annotation/annotation/README.md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/annotation/README.md | Migrated | 无法识别旧子目录，迁入 migrated_unknown |
| arkts-language-watch/01_language_foundation/08_annotation/annotation/spec_summary.md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/annotation/spec_summary.md | Migrated | 无法识别旧子目录，迁入 migrated_unknown |
| arkts-language-watch/01_language_foundation/08_annotation/annotation/test_design.md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/annotation/test_design.md | Migrated | 无法识别旧子目录，迁入 migrated_unknown |
| arkts-language-watch/01_language_foundation/08_annotation/annotation/issues/fixed_issues.md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/annotation/issues/fixed_issues.md | Migrated | 无法识别旧子目录，迁入 migrated_unknown |
| arkts-language-watch/01_language_foundation/08_annotation/annotation/issues/known_issues.md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/annotation/issues/known_issues.md | Migrated | 无法识别旧子目录，迁入 migrated_unknown |
| arkts-language-watch/01_language_foundation/08_annotation/custom_annotation/coverage_matrix.md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/custom_annotation/coverage_matrix.md | Migrated | 无法识别旧子目录，迁入 migrated_unknown |
| arkts-language-watch/01_language_foundation/08_annotation/custom_annotation/README.md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/custom_annotation/README.md | Migrated | 无法识别旧子目录，迁入 migrated_unknown |
| arkts-language-watch/01_language_foundation/08_annotation/custom_annotation/spec_summary.md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/custom_annotation/spec_summary.md | Migrated | 无法识别旧子目录，迁入 migrated_unknown |
| arkts-language-watch/01_language_foundation/08_annotation/custom_annotation/test_design.md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/custom_annotation/test_design.md | Migrated | 无法识别旧子目录，迁入 migrated_unknown |
| arkts-language-watch/01_language_foundation/08_annotation/custom_annotation/issues/fixed_issues.md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/custom_annotation/issues/fixed_issues.md | Migrated | 无法识别旧子目录，迁入 migrated_unknown |
| arkts-language-watch/01_language_foundation/08_annotation/custom_annotation/issues/known_issues.md | arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/99_mapping_and_regression/migrated_unknown/custom_annotation/issues/known_issues.md | Migrated | 无法识别旧子目录，迁入 migrated_unknown |

## Path Reference Updates

| 文件 | 旧引用数量 | 新引用数量 | 状态 | 备注 |
|---|---|---|---|---|
| arkts-language-watch/00_content_overview/content_overview_tree/04_basic_syntax/mapping.md | 2 | 2 | Updated | 旧路径引用已改为统一目录 |
| arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/README.md | 3 | 3 | Updated | 旧路径引用已改为统一目录 |

## Unmigrated Files

| 原路径 | 原因 | 建议处理 |
|---|---|---|
|  | 无 | 无 |

## Final Directory Decision

最终统一目录：

`arkts-language-watch/01_language_foundation/08_decorator_annotation/`

ArkTS annotation 子目录：

`arkts-language-watch/01_language_foundation/08_decorator_annotation/01_arkts_annotation/`

TS style decorator 子目录：

`arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/`

旧目录：

`arkts-language-watch/01_language_foundation/08_annotation/`

处理结果：

删除
