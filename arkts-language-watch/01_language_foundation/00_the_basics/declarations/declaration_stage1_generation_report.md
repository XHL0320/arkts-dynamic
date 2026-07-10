# Declaration Stage 1 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理目录数量 | 1 |
| 新增 pass 用例数量 | 6 |
| 新增 fail_compile 用例数量 | 6 |
| 新增 fail_runtime 用例数量 | 6 |
| 新增 boundary 用例数量 | 3 |
| 新增 regression 用例数量 | 3 |
| 新增 .ets 文件总数 | 24 |
| 更新 coverage_matrix 文件数量 | 1 |
| 更新 candidate index 文件数量 | 1 |

## Generated Cases

| 文件 | 声明类型 | 用例类型 | 测试点 | 是否适合 ohosTest | 是否需要 test262 对照 |
|---|---|---|---|---|---|
| `xts/pass/declaration_var_hoisting_pass.ets` | var | pass | var 声明提升 | 是 | 是 |
| `xts/pass/declaration_var_duplicate_pass.ets` | var | pass | var 重复声明 | 是 | 是 |
| `xts/pass/declaration_let_block_scope_pass.ets` | let | pass | let 块级作用域 | 是 | 是 |
| `xts/pass/declaration_const_block_scope_pass.ets` | const | pass | const 块级作用域 | 是 | 是 |
| `xts/pass/declaration_function_hoisting_pass.ets` | function | pass | function declaration hoisting | 是 | 是 |
| `xts/pass/declaration_module_top_level_lexical_pass.ets` | module lexical | pass | module top-level lexical declaration | 是 | 是 |
| `xts/fail_runtime/declaration_let_tdz_fail_runtime.ets` | let | fail_runtime | let TDZ | 否 | 是 |
| `xts/fail_runtime/declaration_const_tdz_fail_runtime.ets` | const | fail_runtime | const TDZ | 否 | 是 |
| `xts/fail_runtime/declaration_class_tdz_fail_runtime.ets` | class | fail_runtime | class TDZ | 否 | 是 |
| `xts/fail_runtime/declaration_const_reassignment_fail_runtime.ets` | const | fail_runtime | const 不可重新赋值 | 否 | 是 |
| `xts/fail_runtime/declaration_import_binding_readonly_fail_runtime.ets` | import | fail_runtime | import binding read-only | 否 | 是 |
| `xts/fail_runtime/modules/declaration_import_binding_readonly_helper.ets` | import | helper | imported binding helper | 否 | 否 |
| `xts/fail_compile/declaration_let_duplicate_fail_compile.ets` | let | fail_compile | let 重复声明 | 否 | 是 |
| `xts/fail_compile/declaration_const_duplicate_fail_compile.ets` | const | fail_compile | const 重复声明 | 否 | 是 |
| `xts/fail_compile/declaration_const_missing_initializer_fail_compile.ets` | const | fail_compile | const 必须初始化 | 否 | 是 |
| `xts/fail_compile/declaration_class_duplicate_fail_compile.ets` | class | fail_compile | class 重复声明 | 否 | 是 |
| `xts/fail_compile/declaration_export_duplicate_fail_compile.ets` | export | fail_compile | export duplicate name | 否 | 是 |
| `xts/fail_compile/declaration_import_not_top_level_fail_compile.ets` | import | fail_compile | import top-level only | 否 | 是 |
| `xts/boundary/declaration_function_duplicate_boundary.ets` | function | boundary | duplicate function declaration | 否 | 是 |
| `xts/boundary/declaration_block_level_function_boundary.ets` | function | boundary | block-level function declaration | 否 | 是 |
| `xts/boundary/declaration_var_let_duplicate_boundary.ets` | var/let | boundary | var 与 let 同名边界 | 否 | 是 |
| `xts/regression/declaration_tdz_reference_regression.ets` | TDZ | regression | TDZ 引用不得被优化掉 | 是 | 是 |
| `xts/regression/declaration_module_binding_regression.ets` | import | regression | module live binding smoke | 是 | 是 |
| `xts/regression/modules/declaration_module_binding_helper.ets` | import | helper | module binding helper | 否 | 否 |

## Boundary Cases

| 文件 | 测试点 | 放入 boundary 原因 | 后续确认方式 |
|---|---|---|---|
| `xts/boundary/declaration_function_duplicate_boundary.ets` | 函数声明重复声明 | ECMAScript 多数场景允许，但动态 ArkTS 支持和诊断阶段待确认 | 使用官方工具链编译并对照 test262 |
| `xts/boundary/declaration_block_level_function_boundary.ets` | 块级函数声明 | strict / module / sloppy 行为可能不同 | 拆分严格模式与模块模式验证 |
| `xts/boundary/declaration_var_let_duplicate_boundary.ets` | var + let 同名声明 | 应为 early error，但动态 ArkTS 诊断阶段待确认 | 使用 fail_compile 验证后决定是否移动目录 |

## Updated Documents

| 文件 | 更新内容 |
|---|---|
| `coverage_matrix.md` | 将 Stage 1 已生成测试点标记为 `yes`，同步实际路径与备注 |
| `declaration_first_batch_candidate_index.md` | 将已生成候选标记为 `created`，同步 Stage 1 实际路径 |
| `declaration_stage1_generation_report.md` | 新增 Stage 1 生成报告 |

## Cross Feature Notes

| 关联章节 | 本阶段涉及点 | 后续动作 |
|---|---|---|
| `01_function` | 仅覆盖 function declaration 的声明绑定和提升 | 参数、return、arguments、this、closure 仍归 Function Stage 1 |
| `02_class` | 仅覆盖 class declaration 的 TDZ 和重复声明 | class field / method / constructor 仍归 Class 章节 |
| `06_module` | 仅做 import/export declaration binding smoke | 模块解析、循环依赖、re-export 仍归 Module 章节 |

## Notes

- 本阶段生成 Declarations P0/P1 XTS 候选。
- 本阶段未进行 DevEco / hvigor 实际编译验证。
- 本阶段未提交 commit，未 push 远程仓库。
- `fail_compile` 文件不得进入正向运行套件。
- declarations 只负责声明绑定、提升、TDZ、重复声明等共性规则。
- function 参数、return、arguments、this、closure 后续仍归 `01_function`。
