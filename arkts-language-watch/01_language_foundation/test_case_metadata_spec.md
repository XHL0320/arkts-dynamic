# ArkTS Language Watch Test Case Metadata Specification

## 1. Purpose

建立 `01_language_foundation` 全局统一、长期稳定且可机器审计的 Coverage、Case、Helper 和 Validation 身份模型。

## 2. Scope

适用于正式主用例、集成用例、编译负向、运行负向、boundary、regression 和 helper。本规范不改变语言测试语义。

## 3. Core Entities

### 3.1 Coverage Point

Coverage Point 是一个独立、可验证的语言测试点，由 Coverage ID 唯一标识。

### 3.2 Test Case

Test Case 是一个实际主用例文件。一个主用例文件只能有一个 Case ID。

### 3.3 Helper Module

Helper Module 为主用例提供依赖，不直接计入规范覆盖率。

### 3.4 Validation Result

Validation Result 记录指定环境中的实际验证结论，与“文件已生成”分离。

## 4. Required Metadata Fields

| 字段 | 是否必填 | 允许值/格式 | 说明 |
| --- | --- | --- | --- |
| Case ID | 主用例必填 | `<CHAPTER>-<TYPE>-<NUMBER>` | 实际文件唯一身份 |
| Coverage ID | 主用例必填 | 一个或多个 Coverage ID | 关联核心测试点 |
| Feature | 必填 | 稳定 feature 名称 | 语言能力 |
| Test Type | 必填 | 见第 8 节 | 用例类别 |
| Expected Phase | 必填 | 见第 9 节 | 预期发生阶段 |
| Expected Outcome | 必填 | 见第 10 节 | 预期结果类别 |
| Validation Status | 必填 | 见第 11 节 | 真实验证状态 |
| Actual Path | 注册表必填 | 仓库相对路径 | 不从 ID 反推 |
| Title | 推荐 | 短标题 | 便于阅读 |
| Description | 推荐 | 单一核心行为 | 不混合无关测试点 |
| Spec Source | 推荐 | 规范引用或 `pending` | 后续规范映射 |
| Expected Diagnostic | fail_compile 推荐 | 诊断或 `pending` | 编译负向预期 |
| Expected Exception | fail_runtime 推荐 | 异常类型或 `pending` | 运行负向预期 |
| Expected Value | pass 推荐 | 值或断言摘要 | 正向预期 |
| Owner Chapter | 推荐 | 统一章节目录 | 主 ownership |
| Related Chapters | 推荐 | 章节列表 | 交叉特性 |
| Boundary Reason | boundary 必填 | 明确原因 | 待确认边界 |
| Regression Issue | regression 必填 | issue/PR 或 `pending` | 历史回归 |
| Environment | 推荐 | 工具链、设备、版本 | 验证上下文 |
| Notes | 可选 | 自由文本 | 补充信息 |

## 5. Coverage ID Rules

格式为 `<CHAPTER>-<DIRECTION>-<NUMBER>`。Coverage ID 全仓库唯一、路径无关、长期稳定；一个 ID 只表示一个核心测试点。成熟旧 ID 优先保留，不兼容格式通过 Legacy Mapping 处理。

## 6. Case ID Rules

格式为 `<CHAPTER>-<TYPE>-<NUMBER>`。一个 Case ID 对应一个实际主用例文件；一个用例可关联多个紧密相关 Coverage ID。

## 7. Helper ID Rules

格式为 `<CHAPTER>-HELP-<NUMBER>`。被多个主用例复用或参与复杂依赖关系的 helper 必须有 Helper ID；只服务一个主用例的简单 helper 建议有 Helper ID。helper 不直接计入规范覆盖率。

## 8. Test Type Enumeration

允许：`pass`、`fail_compile`、`fail_runtime`、`boundary`、`regression`、`integration`；helper 使用 `helper`。

## 9. Expected Phase Enumeration

允许：`parse`、`bind`、`resolve`、`check`、`compile`、`link`、`module_load`、`runtime`、`not_applicable`、`pending`。

## 10. Expected Outcome Enumeration

允许：`success`、`value`、`diagnostic`、`exception`、`unsupported`、`pending`。

## 11. Validation Status Enumeration

允许：`planned`、`generated`、`validation_pending`、`verified_pass`、`verified_compile_fail`、`verified_runtime_fail`、`unsupported`、`compiler_bug`、`runtime_bug`、`spec_pending`、`environment_blocked`、`deprecated`。

禁止继续使用 `created`、`done`、`finished`、`yes`、`no`、`pending confirmation`、`pass?` 作为新元数据状态。

## 12. File Header Templates

### 12.1 Pass

```ts
/*
 * Case ID: THIS-PASS-001
 * Coverage ID: THIS-METHOD-001
 * Feature: this_keyword
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: pending
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 01_function
 * Spec Source: pending
 * Description: Verify that obj.method() binds this to obj.
 */
```

### 12.2 Fail Compile

在基础模板中增加 `Expected Diagnostic: pending`，使用 `Expected Outcome: diagnostic`。

### 12.3 Fail Runtime

在基础模板中增加 `Expected Exception: TypeError`，使用 `Expected Phase: runtime` 和 `Expected Outcome: exception`。

### 12.4 Boundary

必须增加 `Boundary Reason: ArkTS dynamic behavior is not yet verified.`，状态通常为 `spec_pending` 或 `validation_pending`。

### 12.5 Regression

必须增加 `Regression Issue: pending`。没有真实验证证据时不得标记 `verified_*`。

### 12.6 Helper

```ts
/*
 * Helper ID: MODULE-HELP-001
 * Used By:
 *   - MODULE-INTEG-001
 * Feature: module
 * Test Type: helper
 */
```

## 13. Coverage-To-Case Relationship

一个 Coverage ID 可以关联多个 Case ID。一个 Case ID 可以覆盖多个紧密相关 Coverage ID。跨多个无关测试点的文件应拆分，而不是扩大 Coverage ID 含义。

## 14. Ownership Rule

Coverage ID 的 Chapter Prefix 表示主 ownership。交叉章节写入 `Related Chapters`，不得重复创建同义 Coverage ID。

## 15. Legacy Compatibility Rule

旧 ID 不删除、不复用。兼容项标记 `keep`；不兼容项进入 Legacy Mapping，后续使用 `rename_later`、`merge_later`、`split_later`、`conflict_review` 或 `unresolved`。

## 16. Prohibited Patterns

- 禁止从当前路径派生永久 ID。
- 禁止一个主用例文件拥有多个 Case ID。
- 禁止一个 Coverage ID 表示多个不相关行为。
- 禁止 helper 直接计入规范覆盖率。
- 禁止 Stage Report 成为长期状态事实来源。
- 禁止使用未定义的状态值。

## 17. Examples

- `FUNC-PARAM-001` 可由 `FUNC-PASS-004` 和 `FUNC-FAILC-002` 共同覆盖。
- `MODULE-INTEG-001` 可关联 `MODULE-LIVE-001` 与 `MODULE-IMPORT-004`。
- coverage matrix 维护规范测试点、Coverage ID、优先级、覆盖状态、关联 Case 和验证摘要。
- candidate index 维护候选计划、Case ID、建议路径、生成状态和阶段。
- Case ID Registry 只维护 Case ID 到实际路径的全局映射。
- Coverage ID Registry 只维护 Coverage ID 的全局唯一性与跨章节汇总。
- Stage Report 只保存某次任务执行结果快照。
