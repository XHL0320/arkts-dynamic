# TS Style Decorator Watch Review

## Review Scope

本报告审查：

`arkts-language-watch/01_language_foundation/08_decorator_annotation/02_ts_style_decorator/`

## Reviewed Directories

| 子目录 | 是否存在 | README | spec_points.md | test_design.md | coverage_matrix.md | test262_mapping.md | issues | 备注 |
|---|---|---|---|---|---|---|---|---|
| 00_decorator_syntax | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 01_class_decorator | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 02_property_decorator | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 03_method_decorator | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 04_decorator_factory | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 05_decorator_transform | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 06_decorator_execution_order | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 07_decorator_with_sendable | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 08_decorator_with_class_features | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 09_decorator_module_scope | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |
| 99_mapping_and_regression | 是 | 是 | 是 | 是 | 是 | 是 | 是 |  |

## Scope Boundary

| 范围 | 是否本轮覆盖 | 说明 |
|---|---|---|
| TS style class/property/method decorator | 是 | 当前重点 |
| decorator factory | 是 | 当前重点 |
| transform/lowering | 是 | 当前重点 |
| decorator with sendable | 是 | PR 10632 |
| ArkTS `@interface` annotation | 否 | 后续在 `01_arkts_annotation` 展开 |
| ArkUI UI decorators | 否 | 本轮不覆盖 |

## Structure Consistency Check

| 子目录 | 结构完整性 | 缺失项 | 处理建议 |
|---|---|---|---|
| 00_decorator_syntax | 完整 |  | 无需处理 |
| 01_class_decorator | 完整 |  | 无需处理 |
| 02_property_decorator | 完整 |  | 无需处理 |
| 03_method_decorator | 完整 |  | 无需处理 |
| 04_decorator_factory | 完整 |  | 无需处理 |
| 05_decorator_transform | 完整 |  | 无需处理 |
| 06_decorator_execution_order | 完整 |  | 无需处理 |
| 07_decorator_with_sendable | 完整 |  | 无需处理 |
| 08_decorator_with_class_features | 完整 |  | 无需处理 |
| 09_decorator_module_scope | 完整 |  | 无需处理 |
| 99_mapping_and_regression | 完整 |  | 无需处理 |

## Key Findings

1. 当前 coverage 已覆盖 decorator syntax，包括 class/property/method decorator 和 factory 语法入口；
2. property decorator 是当前主线之一，且已与 transform/sendable/module import 建立交叉覆盖；
3. transform/lowering 已作为 ArkTS-specific 编译链风险独立归类；
4. sendable regression 已覆盖 PR 10632 的 transformer、binder、bytecode 路径；
5. PR 10632 已在 regression 文档、fixed issue 和总控文件中登记；
6. decorator target 支持范围、execution order、module/circular import、sendable 交叉仍是 Pending；
7. TS style decorator、sendable、bytecode generation 不应归入 test262 直接覆盖。
