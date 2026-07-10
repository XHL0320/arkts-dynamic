# Declaration First Batch Candidate Index

## Summary

首批候选聚焦 P0 / P1 声明体系测试点，用于后续生成 XTS / ohosTest 用例。 所有候选状态为 `planned`，本阶段不生成 `.ets` 用例.

| 项目 | 数量 |
|---|---:|
| P0 候选 | 20 |
| P1 候选 | 15 |
| P2 候选 | 5 |
| 总候选数量 | 40 |
| ohosTest 适用候选 | 30 |
| 需要 test262 对照候选 | 25 |

## Candidate List

| Candidate ID | Declaration Type | Test Point | Case Type | Priority | Suggested File Path | Suitable for ohosTest | Needs test262 Comparison | Related Chapter | Current Status | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| DECL-CAND-001 | var | var 声明提升后赋值前访问返回 undefined | pass | P0 | `declarations/xts/pass/declaration_var_hoisting_pass.ets` | yes | yes | declarations | created | Stage 1 generated |
| DECL-CAND-002 | var | var 声明同一函数作用域重复声明 | pass | P0 | `declarations/xts/pass/declaration_var_duplicate_pass.ets` | yes | yes | declarations | created | Stage 1 generated |
| DECL-CAND-003 | var | var 声明是否允许在动态 ArkTS 中使用 | boundary | P0 | `declarations/xts/boundary/declaration_var_allowed_boundary.ets` | yes | no | declarations | planned | 动态 ArkTS 可能限制 var |
| DECL-CAND-004 | let | let 声明块级作用域遮蔽外层同名 | pass | P0 | `declarations/xts/pass/declaration_let_block_scope_pass.ets` | yes | yes | declarations | created | Stage 1 generated |
| DECL-CAND-005 | let | let 声明前访问触发 TDZ ReferenceError | fail_runtime | P0 | `declarations/xts/fail_runtime/declaration_let_tdz_fail_runtime.ets` | yes | yes | declarations | created | Stage 1 generated |
| DECL-CAND-006 | let | let 同块级作用域重复声明 SyntaxError | fail_compile | P0 | `declarations/xts/fail_compile/declaration_let_duplicate_fail_compile.ets` | yes | yes | declarations | created | Stage 1 generated |
| DECL-CAND-007 | let | let + var 同作用域重复声明 SyntaxError | boundary | P0 | `declarations/xts/boundary/declaration_var_let_duplicate_boundary.ets` | no | yes | declarations | created | Stage 1 generated as boundary pending confirmation |
| DECL-CAND-008 | let | TDZ 中 typeof 访问仍抛出 ReferenceError | fail_runtime | P0 | `declarations/xts/fail_runtime/declaration_let_tdz_typeof_fail_runtime.ets` | yes | yes | declarations | planned | 容易误判为安全 |
| DECL-CAND-009 | const | const 声明必须初始化 SyntaxError | fail_compile | P0 | `declarations/xts/fail_compile/declaration_const_missing_initializer_fail_compile.ets` | no | yes | declarations | created | Stage 1 generated |
| DECL-CAND-010 | const | const 重新赋值 TypeError / compile error | fail_runtime / boundary | P0 | `declarations/xts/fail_runtime/declaration_const_reassignment_fail_runtime.ets` | no | yes | declarations | created | Stage 1 generated; phase pending validation |
| DECL-CAND-011 | const | const 声明前访问 TDZ ReferenceError | fail_runtime | P0 | `declarations/xts/fail_runtime/declaration_const_tdz_fail_runtime.ets` | yes | yes | declarations | created | Stage 1 generated |
| DECL-CAND-012 | const | const 对象属性可修改（浅层不可变） | pass | P1 | `declarations/xts/pass/declaration_const_object_mutable_pass.ets` | yes | yes | declarations | planned | 常见误判点 |
| DECL-CAND-013 | function | 函数声明提升后可在声明前调用 | pass | P0 | `declarations/xts/pass/declaration_function_hoisting_pass.ets` | yes | yes | declarations + 01_function | created | Stage 1 generated in declarations for binding/hoisting only |
| DECL-CAND-014 | function | 函数声明与 var 同名重复声明（函数优先） | pass | P0 | `declarations/xts/pass/declaration_func_var_same_name_pass.ets` | yes | yes | declarations | planned | 初始化顺序需确认 |
| DECL-CAND-015 | function | 函数表达式不提升函数体（只有 var 提升） | pass | P0 | `../01_function/function_declaration/xts/pass/` | yes | yes | declarations + 01_function | planned | var 提升对比 |
| DECL-CAND-016 | function | 严格模式块级函数声明 TDZ 访问 | fail_runtime | P1 | `../01_function/function_declaration/xts/fail_runtime/` | yes | yes | declarations + 01_function | planned | TDZ 交互 |
| DECL-CAND-017 | function | 非严格模式块级函数声明提升到函数级 | boundary | P1 | `declarations/xts/boundary/declaration_block_level_function_boundary.ets` | no | yes | declarations + 01_function | created | Stage 1 generated as boundary |
| DECL-CAND-018 | function | 函数声明同名重复声明覆盖 | boundary | P1 | `declarations/xts/boundary/declaration_function_duplicate_boundary.ets` | no | yes | declarations | created | Stage 1 generated as boundary pending confirmation |
| DECL-CAND-019 | class | class 声明 TDZ ReferenceError | fail_runtime | P0 | `declarations/xts/fail_runtime/declaration_class_tdz_fail_runtime.ets` | yes | yes | declarations | created | Stage 1 generated |
| DECL-CAND-020 | class | class 同作用域重复声明 SyntaxError | fail_compile | P0 | `declarations/xts/fail_compile/declaration_class_duplicate_fail_compile.ets` | no | yes | declarations | created | Stage 1 generated |
| DECL-CAND-021 | class | class + let 同作用域重复声明 SyntaxError | fail_compile | P1 | `declarations/xts/fail_compile/declaration_class_let_duplicate_fail_compile.ets` | yes | no | declarations | planned | 交叉重复禁止 |
| DECL-CAND-022 | class | class 声明在 if 块内的块级作用域 | pass | P1 | `declarations/xts/pass/declaration_class_block_scope_pass.ets` | yes | yes | declarations | planned | 块级绑定 |
| DECL-CAND-023 | class | class TDZ typeof 访问 ReferenceError | fail_runtime | P1 | `declarations/xts/fail_runtime/declaration_class_tdz_typeof_fail_runtime.ets` | yes | yes | declarations | planned | typeof 不绕过 TDZ |
| DECL-CAND-024 | import | import 绑定正常访问目标模块导出值 | integration | P0 | `../06_module/import/xts/integration/` | yes | yes | declarations + 06_module | planned | 基础行为 |
| DECL-CAND-025 | import | import live binding 目标模块变量变化可见 | regression | P0 | `declarations/xts/regression/declaration_module_binding_regression.ets` | yes | yes | declarations + 06_module | created | Stage 1 generated as declaration-level module binding smoke |
| DECL-CAND-026 | import | import 绑定只读，重新赋值 TypeError | fail_runtime | P0 | `declarations/xts/fail_runtime/declaration_import_binding_readonly_fail_runtime.ets` | no | yes | declarations + 06_module | created | Stage 1 generated |
| DECL-CAND-027 | import | import 重复导入同名绑定 SyntaxError | fail_compile | P0 | `../06_module/import/xts/fail_compile/` | no | yes | declarations + 06_module | planned | ES 编译期规则 |
| DECL-CAND-028 | import | import 出现在非模块顶层（函数体内） SyntaxError | fail_compile | P1 | `declarations/xts/fail_compile/declaration_import_not_top_level_fail_compile.ets` | no | yes | declarations + 06_module | created | Stage 1 generated |
| DECL-CAND-029 | export | export named 导出本地声明值 | integration | P0 | `../06_module/export/xts/integration/` | yes | yes | declarations + 06_module | planned | 基础行为 |
| DECL-CAND-030 | export | export 重复导出同名 SyntaxError | fail_compile | P0 | `declarations/xts/fail_compile/declaration_export_duplicate_fail_compile.ets` | no | yes | declarations + 06_module | created | Stage 1 generated |
| DECL-CAND-031 | export | export 出现在非模块顶层 SyntaxError | fail_compile | P1 | `../06_module/export/xts/fail_compile/` | no | no | declarations + 06_module | planned | 位置限制 |
| DECL-CAND-032 | export | export 声明与本地声明关系（不创建新绑定） | pass | P1 | `../06_module/export/xts/pass/` | yes | no | declarations + 06_module | planned | ES 规范 |
| DECL-CAND-033 | annotation | annotation 声明形态映射 | boundary | P1 | `../08_annotation/xts/boundary/` | yes | no | declarations + 08_annotation | planned | ArkTS 扩展声明 |
| DECL-CAND-034 | enum | enum 声明绑定语义 | boundary | P1 | `declarations/xts/boundary/declaration_enum_binding_boundary.ets` | yes | no | declarations | planned | TypeScript 扩展声明 |
| DECL-CAND-035 | var | var 声明在模块顶层不污染 globalThis | pass | P1 | `declarations/xts/pass/declaration_var_module_top_pass.ets` | yes | no | declarations / 06_module | planned | 模块 vs 脚本差异 |
| DECL-CAND-036 | var | var 声明在 for 循环中作用域泄露 | pass | P1 | `declarations/xts/pass/declaration_var_for_scope_leak_pass.ets` | yes | yes | declarations | planned | ES 经典行为 |
| DECL-CAND-037 | let | let 声明在 for 循环每次迭代创建新绑定 | pass | P1 | `declarations/xts/pass/declaration_let_for_iteration_pass.ets` | yes | yes | declarations | planned | ES 闭包经典场景 |
| DECL-CAND-038 | cross | var + function 重复声明初始化顺序 | regression | P1 | `declarations/xts/regression/declaration_var_func_init_order_regression.ets` | yes | yes | declarations + 01_function | planned | 初始化细节 |
| DECL-CAND-039 | cross | 嵌套作用域 let/const/var 混合遮蔽 | integration | P1 | `declarations/xts/integration/declaration_nested_scope_integration.ets` | yes | no | declarations | planned | 作用域组合 |
| DECL-CAND-040 | cross | class 声明与函数声明同名边界 | boundary | P2 | `declarations/xts/boundary/declaration_class_func_same_name_boundary.ets` | yes | no | declarations + 01_function + 02_class | planned | 同名声明组合 |
