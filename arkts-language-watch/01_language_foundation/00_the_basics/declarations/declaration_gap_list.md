# Declaration Gap List

## Summary

| 缺口类型 | 数量 |
|---|---:|
| P0 未覆盖 | 11 |
| P1 未覆盖 | 27 |
| P2 未覆盖 | 7 |
| boundary 待确认 | 3 |
| 需要后续规范比对 | 24 |
| 需要运行验证 | 24 |

## P0 Gaps

| ID | 声明类型 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| DECL-VAR-007 | var | var 与 eval / dynamic scope 交互边界 | planned | 后续规范比对后决定 pass/boundary |
| DECL-LET-002 | let | let 未初始化默认值为 undefined | planned | 生成 pass smoke |
| DECL-CONST-004 | const | const 对象内容可变 | planned | 生成 pass/boundary 对照 |
| DECL-CONST-008 | const | const 重新赋值 compile/runtime 归类 | planned | 官方工具链确认后归类 |
| DECL-CONST-009 | const | const primitive binding immutable | planned | 生成 fail_runtime 或 fail_compile 对照 |
| DECL-FUNC-002 | function | function declaration 与 var 同名边界 | planned | 放 boundary，避免重复 Function 章节 |
| DECL-FUNC-006 | function | function expression no hoisting | planned | 归 Function 章节或保留 cross reference |
| DECL-IMPORT-001 | import | imported binding 正常读取 | planned | 生成最小 helper module smoke |
| DECL-IMPORT-004 | import | duplicate import binding | planned | 生成 fail_compile candidate |
| DECL-EXPORT-001 | export | export named local declaration | planned | 生成 module declaration smoke |
| DECL-SCOPE-001 | scope | global lexical declaration 行为 | planned | 生成 pass/boundary，后续 ECMA 对照 |

## P1 Gaps

| ID | 声明类型 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| DECL-VAR-003 | var | var 函数作用域 | planned | 后续 pass smoke |
| DECL-VAR-004 | var | var 在 block 中不形成块作用域 | planned | 后续 pass/boundary |
| DECL-VAR-005 | var | var 与 function 同名 | planned | 后续 boundary |
| DECL-VAR-006 | var | var 与 let/const 同名 | boundary partially created | 后续工具链确认 |
| DECL-LET-006 | let | let shadowing | planned | 后续 pass smoke |
| DECL-LET-007 | let | let for-loop scope | planned | 后续 pass smoke |
| DECL-LET-009 | let | let in switch block | planned | 后续 boundary |
| DECL-CONST-005 | const | const array mutation | planned | 后续 pass/boundary |
| DECL-CONST-007 | const | const in for-of / for-in | planned | 后续 pass/boundary |
| DECL-FUNC-004 | function | function declaration in block | boundary created | 后续规范比对 |
| DECL-FUNC-007 | function | duplicate function declaration | boundary created | 后续规范比对 |
| DECL-CLASS-004 | class | class block scope | planned | 后续 pass/fail_runtime |
| DECL-CLASS-005 | class | class 与 let/const 同名 | planned | 后续 fail_compile/boundary |
| DECL-CLASS-006 | class | class 与 function 同名 | planned | 后续 boundary |
| DECL-CLASS-007 | class | class expression declaration boundary | planned | 归 Class 或 boundary |
| DECL-IMPORT-006 | import | imported binding shadowing | planned | 后续 boundary |
| DECL-IMPORT-007 | import | namespace import binding readonly | planned | 后续 fail_runtime/boundary |
| DECL-EXPORT-003 | export | export declaration with let/const/class/function | planned | 后续 pass smoke |
| DECL-EXPORT-004 | export | export default declaration binding | planned | 后续 boundary |
| DECL-EXPORT-005 | export | export before local declaration | planned | 后续 module mapping |
| DECL-ANN-001 | annotation | annotation declaration mapping | planned | 只做 mapping，不展开语义 |
| DECL-ANN-003 | annotation | annotation 与普通 declaration 边界 | planned | 后续 annotation 章节对齐 |
| DECL-ENUM-001 | enum | enum declaration binding | planned | 后续 types/enums 归属确认 |
| DECL-CROSS-001 | cross-feature | declaration 与 function/class/module 归属边界 | planned | ownership review 持续维护 |
| DECL-CROSS-002 | cross-feature | declaration 与 annotation 归属边界 | planned | ownership review 持续维护 |
| DECL-MOD-002 | module top-level | top-level lexical declaration in module | partially created | 后续 module smoke 扩展 |
| DECL-SCOPE-002 | scope | script vs module top-level scope | planned | 后续 ECMA/test262 对照 |

## Boundary Pending Confirmation

| 文件路径/测试点 | 原因 | 后续确认方式 |
|---|---|---|
| `xts/boundary/declaration_function_duplicate_boundary.ets` | duplicate function declaration 在动态 ArkTS 中需确认与 ECMA sloppy/strict/module 的关系 | 官方工具链编译运行 + ECMA/test262 对照 |
| `xts/boundary/declaration_block_level_function_boundary.ets` | block-level function declaration 语义与运行模式相关 | 官方工具链编译运行 + ECMA/test262 对照 |
| `xts/boundary/declaration_var_let_duplicate_boundary.ets` | var 与 let 同名可能表现为 early error 或实现差异 | 官方工具链编译验证 |

## Validation Pending

| 文件路径/测试点 | 需要验证内容 | 建议验证方式 |
|---|---|---|
| `xts/pass/` 下 6 个 pass 用例 | 是否可在目标动态 ArkTS 环境编译运行 | DevEco / hvigor / ohosTest smoke |
| `xts/fail_compile/` 下 6 个 fail_compile 用例 | 是否以预期原因编译失败 | 官方工具链逐文件编译验证 |
| `xts/fail_runtime/` 下 5 个 fail_runtime 用例 | 是否抛出并捕获预期运行时异常 | ohosTest 或最小运行器 |
| `xts/regression/` 下 2 个 regression 用例 | 是否覆盖回归风险且不混入 module 专项 | 后续回归验证计划 |
| 2 个 helper module | import 路径和模块组织是否稳定 | 与主用例一起做多文件编译验证 |

## Mapping Pending

| 测试点 | 需要映射内容 | 后续动作 |
|---|---|---|
| var / let / const binding | ECMAScript lexical environment、environment record、early error 对照 | Declarations Stage 3/4 规范映射 |
| function declaration hoisting | ECMA function declaration instantiation 与动态 ArkTS 差异 | 与 Function ownership 联合确认 |
| class declaration TDZ | ECMA class declaration lexical binding 对照 | 后续 Class 章节联动 |
| import/export binding | module declaration instantiation 与 readonly binding 对照 | 后续 Module 章节联动 |
| boundary 用例 | 运行模式、strict/module 差异 | 工具链验证 + test262 对照 |
