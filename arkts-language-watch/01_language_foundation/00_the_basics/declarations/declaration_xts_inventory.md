# Declaration XTS Inventory

## Summary

| 项目 | 数量 |
|---|---:|
| .ets 文件总数 | 24 |
| pass 用例数量 | 6 |
| fail_compile 用例数量 | 6 |
| fail_runtime 用例数量 | 5 |
| boundary 用例数量 | 3 |
| regression 用例数量 | 2 |
| helper module 文件数量 | 2 |

## Inventory By Type

| 用例类型 | 数量 | 目录 |
|---|---:|---|
| pass | 6 | `xts/pass/` |
| fail_compile | 6 | `xts/fail_compile/` |
| fail_runtime | 5 | `xts/fail_runtime/` |
| boundary | 3 | `xts/boundary/` |
| regression | 2 | `xts/regression/` |
| helper module | 2 | `xts/fail_runtime/modules/`, `xts/regression/modules/` |

## Declaration Type Summary

| 声明类型 | pass | fail_compile | fail_runtime | boundary | regression | 合计 |
|---|---:|---:|---:|---:|---:|---:|
| var | 2 | 0 | 0 | 1 | 0 | 3 |
| let | 1 | 1 | 1 | 1 | 0 | 4 |
| const | 1 | 2 | 2 | 0 | 0 | 5 |
| function | 1 | 0 | 0 | 2 | 0 | 3 |
| class | 0 | 1 | 1 | 0 | 0 | 2 |
| import | 0 | 1 | 1 | 0 | 1 | 3 |
| export | 0 | 1 | 0 | 0 | 0 | 1 |
| module top-level | 1 | 0 | 0 | 0 | 1 | 2 |
| annotation | 0 | 0 | 0 | 0 | 0 | 0 |
| unknown | 0 | 0 | 0 | 0 | 0 | 0 |

## Case List

| 序号 | 文件路径 | 用例类型 | 声明类型 | 推测测试点 | 所属阶段 | 备注 |
|---:|---|---|---|---|---|---|
| 1 | `xts/pass/declaration_var_hoisting_pass.ets` | pass | var | var 声明提升 | Stage 1 | primary case |
| 2 | `xts/pass/declaration_var_duplicate_pass.ets` | pass | var | var 重复声明 | Stage 1 | primary case |
| 3 | `xts/pass/declaration_let_block_scope_pass.ets` | pass | let | let 块级作用域 | Stage 1 | primary case |
| 4 | `xts/pass/declaration_const_block_scope_pass.ets` | pass | const | const 块级作用域 | Stage 1 | primary case |
| 5 | `xts/pass/declaration_function_hoisting_pass.ets` | pass | function | function declaration hoisting | Stage 1 | declaration ownership |
| 6 | `xts/pass/declaration_module_top_level_lexical_pass.ets` | pass | module top-level | 模块顶层词法声明 | Stage 1 | declaration-level module binding |
| 7 | `xts/fail_compile/declaration_let_duplicate_fail_compile.ets` | fail_compile | let | let 重复声明 | Stage 1 | compile negative |
| 8 | `xts/fail_compile/declaration_const_duplicate_fail_compile.ets` | fail_compile | const | const 重复声明 | Stage 1 | compile negative |
| 9 | `xts/fail_compile/declaration_const_missing_initializer_fail_compile.ets` | fail_compile | const | const 缺少初始化 | Stage 1 | compile negative |
| 10 | `xts/fail_compile/declaration_class_duplicate_fail_compile.ets` | fail_compile | class | class 重复声明 | Stage 1 | compile negative |
| 11 | `xts/fail_compile/declaration_export_duplicate_fail_compile.ets` | fail_compile | export | export 重名 | Stage 1 | compile negative |
| 12 | `xts/fail_compile/declaration_import_not_top_level_fail_compile.ets` | fail_compile | import | import 非顶层位置 | Stage 1 | compile negative |
| 13 | `xts/fail_runtime/declaration_let_tdz_fail_runtime.ets` | fail_runtime | let | let TDZ | Stage 1 | runtime negative |
| 14 | `xts/fail_runtime/declaration_const_tdz_fail_runtime.ets` | fail_runtime | const | const TDZ | Stage 1 | runtime negative |
| 15 | `xts/fail_runtime/declaration_class_tdz_fail_runtime.ets` | fail_runtime | class | class TDZ | Stage 1 | runtime negative |
| 16 | `xts/fail_runtime/declaration_const_reassignment_fail_runtime.ets` | fail_runtime | const | const 重新赋值 | Stage 1 | runtime negative |
| 17 | `xts/fail_runtime/declaration_import_binding_readonly_fail_runtime.ets` | fail_runtime | import | import binding read-only | Stage 1 | runtime negative, uses helper module |
| 18 | `xts/fail_runtime/modules/declaration_import_binding_readonly_helper.ets` | helper module | import | import binding helper | Stage 1 | helper only |
| 19 | `xts/boundary/declaration_function_duplicate_boundary.ets` | boundary | function | function duplicate declaration | Stage 1 | pending confirmation |
| 20 | `xts/boundary/declaration_block_level_function_boundary.ets` | boundary | function | block-level function declaration | Stage 1 | pending confirmation |
| 21 | `xts/boundary/declaration_var_let_duplicate_boundary.ets` | boundary | var/let | var 与 let 同名边界 | Stage 1 | pending confirmation |
| 22 | `xts/regression/declaration_tdz_reference_regression.ets` | regression | let/const/class | TDZ reference regression | Stage 1 | runtime regression candidate |
| 23 | `xts/regression/declaration_module_binding_regression.ets` | regression | import/module top-level | module binding regression | Stage 1 | uses helper module |
| 24 | `xts/regression/modules/declaration_module_binding_helper.ets` | helper module | module top-level | module binding helper | Stage 1 | helper only |
