# Declaration Coverage Matrix

| ID | Declaration Type | Test Point | Case Type | Priority | Has Existing Case | Suggested Path | Related Chapter | Risk Point | Notes |
|---|---|---|---|---|---|---|---|---|---|
| DECL-VAR-001 | var | var 声明提升后赋值前访问返回 undefined | pass | P0 | yes | `declarations/xts/pass/declaration_var_hoisting_pass.ets` | declarations | 低 | Stage 1 generated |
| DECL-VAR-002 | var | var 声明在同一函数作用域内重复声明 | pass | P0 | yes | `declarations/xts/pass/declaration_var_duplicate_pass.ets` | declarations | 中 | Stage 1 generated |
| DECL-VAR-003 | var | var 声明函数作用域遮蔽外层同名 var | pass | P1 | no | `declarations/xts/pass/declaration_var_scope_shadow_pass` | declarations | 低 | 基础遮蔽行为 |
| DECL-VAR-004 | var | var 声明全局作用域行为（脚本模式） | pass | P1 | no | `declarations/xts/pass/declaration_var_global_pass` | declarations | 中 | 需确认 globalThis 污染 |
| DECL-VAR-005 | var | var 声明在模块顶层不污染 globalThis | pass | P1 | no | `declarations/xts/pass/declaration_var_module_top_pass` | declarations / 06_module | 中 | 模块 vs 脚本差异 |
| DECL-VAR-006 | var | var 声明在 for 循环中作用域泄露到函数级 | pass | P1 | no | `declarations/xts/pass/declaration_var_for_scope_leak_pass` | declarations | 低 | ES 经典行为 |
| DECL-VAR-007 | var | var 声明是否允许在动态 ArkTS 中使用 | boundary | P0 | no | `declarations/xts/boundary/declaration_var_allowed_boundary` | declarations | 高 | 动态 ArkTS 可能限制 var |
| DECL-VAR-008 | var | var 声明在 catch 子句中的作用域 | pass | P2 | no | `declarations/xts/pass/declaration_var_catch_scope_pass` | declarations | 低 | catch 参数是 var-like |
| DECL-LET-001 | let | let 声明块级作用域遮蔽外层同名 | pass | P0 | yes | `declarations/xts/pass/declaration_let_block_scope_pass.ets` | declarations | 低 | Stage 1 generated |
| DECL-LET-002 | let | let 声明无初始化器默认 undefined | pass | P0 | no | `declarations/xts/pass/declaration_let_no_initializer_pass` | declarations | 低 | 基础行为 |
| DECL-LET-003 | let | let 声明前访问触发 TDZ ReferenceError | fail_runtime | P0 | yes | `declarations/xts/fail_runtime/declaration_let_tdz_fail_runtime.ets` | declarations | 高 | Stage 1 generated |
| DECL-LET-004 | let | let 同块级作用域重复声明 SyntaxError | fail_compile | P0 | yes | `declarations/xts/fail_compile/declaration_let_duplicate_fail_compile.ets` | declarations | 中 | Stage 1 generated |
| DECL-LET-005 | let | let + var 同作用域重复声明 SyntaxError | boundary | P0 | yes | `declarations/xts/boundary/declaration_var_let_duplicate_boundary.ets` | declarations | 中 | Stage 1 generated as boundary pending confirmation |
| DECL-LET-006 | let | TDZ 中 typeof 访问仍抛出 ReferenceError | fail_runtime | P1 | no | `declarations/xts/fail_runtime/declaration_let_tdz_typeof_fail_runtime` | declarations | 中 | 容易误判为安全 |
| DECL-LET-007 | let | let 声明在 for 循环每次迭代创建新绑定 | pass | P1 | no | `declarations/xts/pass/declaration_let_for_iteration_pass` | declarations | 低 | ES 闭包经典场景 |
| DECL-LET-008 | let | let 声明在 switch-case 中块级作用域 | pass | P2 | no | `declarations/xts/pass/declaration_let_switch_scope_pass` | declarations | 低 | switch 块级边界 |
| DECL-LET-009 | let | let 声明初始化器自引用 TDZ | fail_runtime | P1 | no | `declarations/xts/fail_runtime/declaration_let_init_self_ref_fail_runtime` | declarations | 中 | `let x = x` |
| DECL-CONST-001 | const | const 声明必须初始化 SyntaxError | fail_compile | P0 | yes | `declarations/xts/fail_compile/declaration_const_missing_initializer_fail_compile.ets` | declarations | 低 | Stage 1 generated |
| DECL-CONST-002 | const | const 声明后值不可重新赋值 TypeError | fail_runtime | P0 | yes | `declarations/xts/fail_runtime/declaration_const_reassignment_fail_runtime.ets` | declarations | 高 | Stage 1 generated; runtime vs compile phase pending validation |
| DECL-CONST-003 | const | const 声明前访问 TDZ ReferenceError | fail_runtime | P0 | yes | `declarations/xts/fail_runtime/declaration_const_tdz_fail_runtime.ets` | declarations | 高 | Stage 1 generated |
| DECL-CONST-004 | const | const 声明对象属性可修改 | pass | P0 | no | `declarations/xts/pass/declaration_const_object_mutable_pass` | declarations | 中 | 浅层不可变 |
| DECL-CONST-005 | const | const 声明数组内容可修改 | pass | P1 | no | `declarations/xts/pass/declaration_const_array_mutable_pass` | declarations | 中 | 浅层不可变 |
| DECL-CONST-006 | const | const 同块级作用域重复声明 SyntaxError | fail_compile | P0 | yes | `declarations/xts/fail_compile/declaration_const_duplicate_fail_compile.ets` | declarations | 中 | Stage 1 generated |
| DECL-CONST-007 | const | const + let 同作用域重复声明 SyntaxError | fail_compile | P1 | no | `declarations/xts/fail_compile/declaration_const_let_duplicate_fail_compile` | declarations | 中 | 交叉重复禁止 |
| DECL-CONST-008 | const | const 重新赋值在动态 ArkTS 中是否为编译期错误 | boundary | P0 | no | `declarations/xts/boundary/declaration_const_reassign_compile_boundary` | declarations | 高 | 运行时 TypeError vs 编译期 error |
| DECL-CONST-009 | const | const 声明原始值完全不可变 | pass | P0 | no | `declarations/xts/pass/declaration_const_primitive_immutable_pass` | declarations | 低 | 基础行为 |
| DECL-FUNC-001 | function | 函数声明提升后可在声明前调用 | pass | P0 | yes | `declarations/xts/pass/declaration_function_hoisting_pass.ets` | 01_function | 低 | Stage 1 generated in declarations for binding/hoisting only |
| DECL-FUNC-002 | function | 函数声明与 var 同名重复声明（函数优先） | pass | P0 | no | `declarations/xts/pass/declaration_func_var_same_name_pass` | declarations + 01_function | 中 | 初始化顺序需确认 |
| DECL-FUNC-003 | function | 函数声明在块级作用域（严格模式） | boundary | P0 | yes | `declarations/xts/boundary/declaration_block_level_function_boundary.ets` | 01_function + declarations | 高 | Stage 1 generated as boundary |
| DECL-FUNC-004 | function | 函数声明在块级作用域（非严格模式）提升到函数级 | boundary | P1 | no | `../01_function/function_declaration/xts/boundary/` | 01_function + declarations | 高 | ES 非严格模式特殊行为 |
| DECL-FUNC-005 | function | 函数声明同名重复声明覆盖 | boundary | P1 | yes | `declarations/xts/boundary/declaration_function_duplicate_boundary.ets` | declarations | 低 | Stage 1 generated as boundary pending confirmation |
| DECL-FUNC-006 | function | 函数表达式不提升函数体 | pass | P0 | no | `../01_function/function_declaration/xts/pass/` | 01_function | 低 | var 提升 + 函数体不提升 |
| DECL-FUNC-007 | function | 严格模式块级函数声明 TDZ 访问 | fail_runtime | P1 | no | `../01_function/function_declaration/xts/fail_runtime/` | 01_function + declarations | 高 | TDZ 交互 |
| DECL-CLASS-001 | class | class 声明 TDZ ReferenceError | fail_runtime | P0 | yes | `declarations/xts/fail_runtime/declaration_class_tdz_fail_runtime.ets` | declarations | 高 | Stage 1 generated |
| DECL-CLASS-002 | class | class 声明同作用域重复声明 SyntaxError | fail_compile | P0 | yes | `declarations/xts/fail_compile/declaration_class_duplicate_fail_compile.ets` | declarations | 中 | Stage 1 generated |
| DECL-CLASS-003 | class | class 声明后正常实例化 | pass | P0 | no | `../02_class/xts/pass/` | 02_class | 低 | 基础行为 |
| DECL-CLASS-004 | class | class + let 同作用域重复声明 SyntaxError | fail_compile | P1 | no | `declarations/xts/fail_compile/declaration_class_let_duplicate_fail_compile` | declarations | 中 | 交叉重复禁止 |
| DECL-CLASS-005 | class | class + var 同作用域重复声明 SyntaxError | fail_compile | P1 | no | `declarations/xts/fail_compile/declaration_class_var_duplicate_fail_compile` | declarations | 中 | 交叉重复禁止 |
| DECL-CLASS-006 | class | class 声明在 if 块内的块级作用域 | pass | P1 | no | `declarations/xts/pass/declaration_class_block_scope_pass` | declarations | 低 | 块级绑定 |
| DECL-CLASS-007 | class | class 声明 TDZ typeof 访问 | fail_runtime | P1 | no | `declarations/xts/fail_runtime/declaration_class_tdz_typeof_fail_runtime` | declarations | 中 | typeof 不绕过 TDZ |
| DECL-IMPORT-001 | import | import 绑定正常访问目标模块导出值 | integration | P0 | no | `../06_module/import/xts/integration/` | 06_module | 低 | 基础行为 |
| DECL-IMPORT-002 | import | import live binding 目标模块变量变化可见 | regression | P0 | yes | `declarations/xts/regression/declaration_module_binding_regression.ets` | 06_module | 高 | Stage 1 generated as declaration-level module binding smoke |
| DECL-IMPORT-003 | import | import 绑定只读，重新赋值 TypeError | fail_runtime | P0 | yes | `declarations/xts/fail_runtime/declaration_import_binding_readonly_fail_runtime.ets` | 06_module + declarations | 高 | Stage 1 generated |
| DECL-IMPORT-004 | import | import 重复导入同名绑定 SyntaxError | fail_compile | P0 | no | `../06_module/import/xts/fail_compile/` | 06_module | 中 | ES 编译期规则 |
| DECL-IMPORT-005 | import | import 出现在非模块顶层（函数体内） SyntaxError | fail_compile | P1 | yes | `declarations/xts/fail_compile/declaration_import_not_top_level_fail_compile.ets` | 06_module | 低 | Stage 1 generated |
| DECL-IMPORT-006 | import | import 绑定在模块顶层声明位置与执行顺序 | pass | P1 | no | `../06_module/import/xts/pass/` | 06_module | 中 | 链接阶段行为 |
| DECL-IMPORT-007 | import | 循环依赖中 import 声明 TDZ 边界 | boundary | P1 | no | `../06_module/import/xts/boundary/` | 06_module | 高 | 循环依赖风险 |
| DECL-EXPORT-001 | export | export named 导出本地声明值 | integration | P0 | no | `../06_module/export/xts/integration/` | 06_module | 低 | 基础行为 |
| DECL-EXPORT-002 | export | export 重复导出同名 SyntaxError | fail_compile | P0 | yes | `declarations/xts/fail_compile/declaration_export_duplicate_fail_compile.ets` | 06_module | 中 | Stage 1 generated |
| DECL-EXPORT-003 | export | export 出现在非模块顶层 SyntaxError | fail_compile | P1 | no | `../06_module/export/xts/fail_compile/` | 06_module | 低 | 位置限制 |
| DECL-EXPORT-004 | export | export 声明与本地声明关系（不创建新绑定） | pass | P1 | no | `../06_module/export/xts/pass/` | 06_module | 低 | ES 规范 |
| DECL-EXPORT-005 | export | export default 与 named export 声明边界 | integration | P1 | no | `../06_module/export/xts/integration/` | 06_module | 中 | default 行为差异 |
| DECL-EXPORT-006 | export | re-export 声明与本地声明冲突 | fail_compile | P2 | no | `../06_module/export/xts/fail_compile/` | 06_module | 低 | 交叉冲突 |
| DECL-ANN-001 | annotation | annotation 声明形态映射 | boundary | P1 | no | `../08_annotation/xts/boundary/` | 08_annotation | 高 | ArkTS 扩展声明 |
| DECL-ANN-002 | annotation | custom annotation 声明运行时行为 | boundary | P2 | no | `../08_annotation/xts/boundary/` | 08_annotation | 高 | 不在 ES 规范内 |
| DECL-ANN-003 | annotation | annotation 修饰的声明绑定行为是否受影响 | boundary | P1 | no | `../08_decorator_annotation/xts/boundary/` | 08_annotation + declarations | 中 | 装饰器与声明交互 |
| DECL-CROSS-001 | cross | 嵌套作用域 let/const/var 混合遮蔽 | integration | P1 | no | `declarations/xts/integration/declaration_nested_scope_integration` | declarations | 中 | 作用域组合 |
| DECL-CROSS-002 | cross | var + function 重复声明初始化顺序 | regression | P1 | no | `declarations/xts/regression/declaration_var_func_init_order_regression` | declarations + 01_function | 中 | 初始化细节 |
| DECL-CROSS-003 | cross | 声明在 try/catch 中的 TDZ 交互 | integration | P2 | no | `declarations/xts/integration/declaration_try_catch_tdz_integration` | declarations | 低 | 语句交互 |
| DECL-CROSS-004 | cross | class 声明与函数声明同名边界 | boundary | P2 | no | `declarations/xts/boundary/declaration_class_func_same_name_boundary` | declarations + 01_function + 02_class | 中 | 同名声明组合 |
| DECL-ENUM-001 | enum | enum 声明绑定语义 | boundary | P1 | no | `declarations/xts/boundary/declaration_enum_binding_boundary` | declarations | 高 | TypeScript 扩展声明 |
| DECL-ENUM-002 | enum | const enum 声明行为 | boundary | P2 | no | `declarations/xts/boundary/declaration_const_enum_boundary` | declarations | 高 | 编译期替换 vs 运行时对象 |
| DECL-MOD-001 | module | 模块顶层 let 声明正常访问 | pass | P0 | yes | `declarations/xts/pass/declaration_module_top_level_lexical_pass.ets` | declarations / 06_module | 低 | Stage 1 generated |
| DECL-CONST-010 | const | const 声明块级作用域遮蔽外层同名 | pass | P1 | yes | `declarations/xts/pass/declaration_const_block_scope_pass.ets` | declarations | 低 | Stage 1 generated |
| DECL-REG-001 | regression | TDZ 引用不得被优化掉 | regression | P1 | yes | `declarations/xts/regression/declaration_tdz_reference_regression.ets` | declarations | 中 | Stage 1 generated |
| DECL-MOD-002 | module | 模块顶层 var 不污染 globalThis | boundary | P1 | no | `declarations/xts/boundary/declaration_module_var_global_boundary` | declarations / 06_module | 中 | 模块 vs 脚本差异 |
| DECL-SCOPE-001 | scope | var 函数作用域 vs let 块级作用域对比 | smoke | P0 | no | `declarations/xts/pass/declaration_var_let_scope_compare_smoke` | declarations | 低 | 核心对比 |
| DECL-SCOPE-002 | scope | 全局作用域 var 赋值创建 globalThis 属性 | pass | P1 | no | `declarations/xts/pass/declaration_var_global_this_pass` | declarations | 中 | 脚本模式行为 |
