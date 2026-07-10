# Declaration Test Design

## 1. Positive Runtime Cases

正向运行时用例验证声明绑定的正常行为。

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| `var` 声明提升后赋值前访问返回 `undefined` | `undefined` | pass | `declarations/xts/pass/` |
| `var` 声明在同一函数作用域内重复声明，后声明覆盖赋值 | 覆盖后的值 | pass | `declarations/xts/pass/` |
| `var` 声明函数作用域遮蔽外层同名 `var` | 内层值 | pass | `declarations/xts/pass/` |
| `let` 声明块级作用域遮蔽外层同名 `let` / `var` | 内层值 | pass | `declarations/xts/pass/` |
| `let` 声明无初始化器默认为 `undefined` | `undefined` | pass | `declarations/xts/pass/` |
| `const` 声明初始化后值不变 | 初始值 | pass | `declarations/xts/pass/` |
| `const` 声明对象属性可修改（浅层不可变） | 属性修改成功 | pass | `declarations/xts/pass/` |
| `function` 声明提升后可在声明前调用 | 正常返回 | pass | `../01_function/function_declaration/xts/pass/` |
| `function` 声明与 `var` 同名重复声明（函数优先） | 函数对象 | pass | `declarations/xts/pass/` |
| `class` 声明后可正常实例化 | 实例创建成功 | pass | `../02_class/xts/pass/` |
| `import` 绑定正常访问目标模块导出值 | 导出值 | integration | `../06_module/import/xts/integration/` |
| `import` live binding 目标模块变量变化可见 | 变化后的值 | integration | `../06_module/import/xts/integration/` |
| `export` named 导出本地声明值 | 导出值 | integration | `../06_module/export/xts/integration/` |
| 模块顶层 `let` 声明正常访问 | 声明值 | pass | `declarations/xts/pass/` |
| 模块顶层 `var` 不污染 `globalThis`（默认行为） | `globalThis.x` 为 `undefined` | pass | `declarations/xts/pass/` |

## 2. Syntax Error / Compile Negative Cases

编译期/语法期错误用例验证声明规则的静态禁止条件。

| 测试点 | 预期错误 | 用例类型 | 建议路径 |
|---|---|---|---|
| `let` 同块级作用域重复声明 | SyntaxError | fail_compile | `declarations/xts/fail_compile/` |
| `const` 同块级作用域重复声明 | SyntaxError | fail_compile | `declarations/xts/fail_compile/` |
| `let` + `var` 同作用域重复声明 | SyntaxError | fail_compile | `declarations/xts/fail_compile/` |
| `class` 同作用域重复声明 | SyntaxError | fail_compile | `declarations/xts/fail_compile/` |
| `class` + `let` 同作用域重复声明 | SyntaxError | fail_compile | `declarations/xts/fail_compile/` |
| `const` 声明无初始化器 | SyntaxError | fail_compile | `declarations/xts/fail_compile/` |
| `import` 重复导入同名绑定 | SyntaxError | fail_compile | `../06_module/import/xts/fail_compile/` |
| `export` 重复导出同名 | SyntaxError | fail_compile | `../06_module/export/xts/fail_compile/` |
| `import` 出现在函数体内 | SyntaxError | fail_compile | `../06_module/import/xts/fail_compile/` |
| `export` 出现在函数体内 | SyntaxError | fail_compile | `../06_module/export/xts/fail_compile/` |
| `const` 重新赋值（动态 ArkTS 编译期禁止） | compile error | fail_compile | `declarations/xts/fail_compile/` |

## 3. Runtime Exception Cases

运行时异常用例验证 TDZ、const 重新赋值等运行期报错行为。

| 测试点 | 预期异常 | 用例类型 | 建议路径 |
|---|---|---|---|
| `let` 声明前访问触发 TDZ ReferenceError | ReferenceError | fail_runtime | `declarations/xts/fail_runtime/` |
| `const` 声明前访问触发 TDZ ReferenceError | ReferenceError | fail_runtime | `declarations/xts/fail_runtime/` |
| `class` 声明前访问触发 TDZ ReferenceError | ReferenceError | fail_runtime | `declarations/xts/fail_runtime/` |
| TDZ 中 `typeof` 访问仍抛出 ReferenceError | ReferenceError | fail_runtime | `declarations/xts/fail_runtime/` |
| `const` 重新赋值触发 TypeError | TypeError | fail_runtime | `declarations/xts/fail_runtime/` |
| `import` 绑定重新赋值触发 TypeError | TypeError | fail_runtime | `../06_module/import/xts/fail_runtime/` |
| 严格模式下未声明变量访问 ReferenceError | ReferenceError | fail_runtime | `declarations/xts/fail_runtime/` |
| 块级 `function` 声明 TDZ 访问（严格模式） | ReferenceError | fail_runtime | `../01_function/function_declaration/xts/fail_runtime/` |
| `let` 声明在 `for` 循环初始化中 TDZ 自引用 | ReferenceError | fail_runtime | `declarations/xts/fail_runtime/` |

## 4. Boundary Cases

边界用例验证规范差异或 ArkTS 支持状态待确认的场景。

| 测试点 | 边界原因 | 用例类型 | 建议路径 |
|---|---|---|---|
| `var` 是否允许在动态 ArkTS 中使用 | 动态 ArkTS 可能限制 `var` | boundary | `declarations/xts/boundary/` |
| 严格模式块级函数声明绑定行为 | 严格模式行为差异待确认 | boundary | `../01_function/function_declaration/xts/boundary/` |
| 非严格模式块级函数声明提升到函数作用域 | ES 规范非严格模式特殊行为 | boundary | `../01_function/function_declaration/xts/boundary/` |
| `enum` 声明绑定语义 | TypeScript 扩展声明，不在 ES 规范内 | boundary | `declarations/xts/boundary/` |
| `namespace` 声明是否支持 | TypeScript 扩展声明 | boundary | `declarations/xts/boundary/` |
| `interface` 声明运行时行为 | 纯类型层声明，运行时无绑定 | boundary | `declarations/xts/boundary/` |
| 装饰器修饰的声明绑定行为 | 装饰器是否影响声明绑定 | boundary | `../08_decorator_annotation/xts/boundary/` |
| 解构声明中的默认值与 TDZ 交互 | 默认值引用 TDZ 变量时行为 | boundary | `declarations/xts/boundary/` |
| `for-in` / `for-of` 中 `const` 绑定行为 | 每次 iteration 是否创建新绑定 | boundary | `declarations/xts/boundary/` |
| `var` 在模块顶层是否创建全局属性 | 模块模式下 `var` 全局行为 | boundary | `declarations/xts/boundary/` |

## 5. Cross Feature Cases

跨特性组合用例验证声明体系与其他语言特性的交互。

| 测试点 | 关联特性 | 用例类型 | 建议路径 |
|---|---|---|---|
| 函数声明提升 + var 声明同名边界 | function + var | integration | `declarations/xts/integration/` |
| class 声明 TDZ + 方法调用边界 | class + declarations | integration | `declarations/xts/integration/` |
| import binding + 函数参数传递 | import + function | integration | `../06_module/import/xts/integration/` |
| export 声明 + class 声明导出 | export + class | integration | `../06_module/export/xts/integration/` |
| 嵌套作用域 let/const/var 混合遮蔽 | declarations + scope | integration | `declarations/xts/integration/` |
| 声明在 try/catch 中的 TDZ 交互 | declarations + statements | integration | `declarations/xts/integration/` |
| 函数声明在 if 块内（严格模式） | declarations + function | integration | `declarations/xts/integration/` |
| class 声明与函数声明同名边界 | class + function | boundary | `declarations/xts/boundary/` |

## 6. Cross Module Cases

跨模块用例验证模块声明绑定在多文件场景中的行为。

| 测试点 | 用例类型 | 建议路径 |
|---|---|---|
| 导入 const 声明的只读性跨模块验证 | integration | `../06_module/import/xts/integration/` |
| 导入 let 声明的 live binding 变化传播 | integration | `../06_module/import/xts/integration/` |
| 循环依赖中 import 声明 TDZ 边界 | boundary | `../06_module/import/xts/boundary/` |
| export default 与 named export 声明边界 | integration | `../06_module/export/xts/integration/` |
| re-export 声明与本地声明冲突 | fail_compile | `../06_module/export/xts/fail_compile/` |
| 模块顶层 var 与脚本模式 var 全局行为差异 | boundary | `declarations/xts/boundary/` |

## 7. Regression Cases

回归用例用于记录和验证历史缺陷或后续发现的兼容差异。

| 测试点 | 回归来源 | 用例类型 | 建议路径 |
|---|---|---|---|
| TDZ ReferenceError 错误信息准确性 | 历史缺陷验证 | regression | `declarations/xts/regression/` |
| const 重新赋值 TypeError vs compile error 差异 | 兼容性回归 | regression | `declarations/xts/regression/` |
| function + var 重复声明初始化顺序 | ES 规范细节验证 | regression | `declarations/xts/regression/` |
| import live binding 状态更新时机 | 运行时实现验证 | regression | `../06_module/import/xts/regression/` |
| 严格模式 vs 非严格模式块级函数声明 | 规范模式边界 | regression | `../01_function/function_declaration/xts/regression/` |

## 8. Test262 Mapping Direction

ECMAScript test262 中声明相关的测试目录映射：

| test262 目录 | 映射方向 | 对应本目录测试点 |
|---|---|---|
| `test/language/statements/variable-declarations/` | var 声明 | DECL-VAR-系列 |
| `test/language/statements/let-declarations/` | let 声明 | DECL-LET-系列 |
| `test/language/statements/const-declarations/` | const 声明 | DECL-CONST-系列 |
| `test/language/statements/function-declarations/` | function 声明 | DECL-FUNC-系列 |
| `test/language/statements/class-declarations/` | class 声明 | DECL-CLASS-系列 |
| `test/language/module-code/` | import / export | DECL-IMPORT / DECL-EXPORT-系列 |
| `test/language/expressions/` | 声明相关表达式边界 | 交叉映射 |

策略：test262 声明基础语义映射归 declarations；函数特有 test262 映射归 `01_function`。

## 9. XTS Migration Strategy

| 步骤 | 内容 |
|---|---|
| 1 | 确认 test262 声明语义基线覆盖范围 |
| 2 | 使用 XTS / ohosTest 验证动态 ArkTS 运行时声明行为 |
| 3 | 使用 fail_compile 验证声明规则的编译期禁止条件 |
| 4 | 使用 fail_runtime 验证 TDZ ReferenceError 和 const TypeError |
| 5 | 使用 regression 记录鸿蒙动态 ArkTS 实现差异和历史缺陷 |
| 6 | 使用 boundary 确认 ArkTS 动态对 TypeScript 声明语法的兼容边界 |
