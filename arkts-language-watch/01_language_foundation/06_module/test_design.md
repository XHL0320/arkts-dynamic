# Module Test Design

## 1. Positive Syntax Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| export const | 编译通过 | pass | `06_module/xts/pass/` |
| export function | 编译通过 | pass | `06_module/xts/pass/` |
| export class | 编译通过 | pass | `06_module/xts/pass/` |
| export list | 编译通过 | pass | `06_module/xts/pass/` |
| export rename | 编译通过 | pass | `06_module/xts/pass/` |
| default export value | 编译通过 | pass | `06_module/xts/pass/` |
| default export function | 编译通过 | pass | `06_module/xts/pass/` |
| default export class | 编译通过 | pass | `06_module/xts/pass/` |
| import named | 编译通过 | pass | `06_module/xts/pass/` |
| import default | 编译通过 | pass | `06_module/xts/pass/` |
| import namespace | 编译通过 | pass | `06_module/xts/pass/` |
| import rename | 编译通过 | pass | `06_module/xts/pass/` |
| side-effect import | 编译通过 | pass | `06_module/xts/pass/` |
| re-export named | 编译通过 | pass | `06_module/xts/pass/` |
| export star | 编译通过 | pass | `06_module/xts/pass/` |

## 2. Positive Runtime Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| 导入值正确 | 值匹配 | integration | `06_module/xts/pass/` |
| 导入函数可调用 | 函数正常执行 | integration | `06_module/xts/pass/` |
| 导入 class 可实例化 | 实例创建 | integration | `06_module/xts/pass/` |
| 模块作用域隔离 | var 不泄露 | integration | `06_module/xts/pass/` |
| 顶层 this 为 undefined | undefined | integration | `06_module/xts/pass/` |

## 3. Compile Negative Cases

| 测试点 | 预期错误 | 用例类型 | 建议路径 |
|---|---|---|---|
| 重复 default export | SyntaxError | fail_compile | `06_module/xts/fail_compile/` |
| 重复 named export | SyntaxError | fail_compile | `06_module/xts/fail_compile/` |
| 同名 import | SyntaxError | fail_compile | `06_module/xts/fail_compile/` |
| import/export 非顶层 | SyntaxError | fail_compile | `06_module/xts/fail_compile/` |
| missing export | SyntaxError | fail_compile | `06_module/xts/fail_compile/` |
| ambiguous export | SyntaxError | fail_compile | `06_module/xts/fail_compile/` |

## 4. Runtime Exception Cases

| 测试点 | 预期异常 | 用例类型 | 建议路径 |
|---|---|---|---|
| 访问循环依赖未初始化导出 | undefined（非异常） | boundary | `06_module/xts/boundary/` |
| namespace 对象属性修改 | TypeError | fail_runtime | `06_module/xts/fail_runtime/` |

## 5. Named Export / Import Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| export const + import | 值匹配 | integration | `06_module/xts/pass/` |
| export function + import | 函数可调用 | integration | `06_module/xts/pass/` |
| export class + import | 可实例化 | integration | `06_module/xts/pass/` |
| export list | 多导出 | integration | `06_module/xts/pass/` |
| export rename | 重命名导出 | integration | `06_module/xts/pass/` |
| import rename | 重命名导入 | integration | `06_module/xts/pass/` |

## 6. Default Export / Import Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| default export value | 值匹配 | integration | `06_module/xts/pass/` |
| default export function | 函数可调用 | integration | `06_module/xts/pass/` |
| default export class | 可实例化 | integration | `06_module/xts/pass/` |
| default + named 混合导入 | 都可访问 | integration | `06_module/xts/pass/` |
| 重复 default export | SyntaxError | fail_compile | `06_module/xts/fail_compile/` |

## 7. Namespace Import Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| namespace import 访问 | 属性可访问 | integration | `06_module/xts/pass/` |
| namespace 包含 default | ns.default | integration | `06_module/xts/pass/` |
| namespace 对象只读 | 修改 TypeError | fail_runtime | `06_module/xts/fail_runtime/` |
| namespace 支持边界 | 支持待确认 | boundary | `06_module/xts/boundary/` |

## 8. Re-export Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| re-export named | 导出转发 | integration | `06_module/xts/pass/` |
| re-export rename | 重命名转发 | integration | `06_module/xts/pass/` |
| export star | 全部转发 | integration | `06_module/xts/pass/` |
| export star as namespace | 命名空间转发 | boundary | `06_module/xts/boundary/` |
| export star 冲突 | ambiguous | boundary | `06_module/xts/boundary/` |

## 9. Live Binding Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| export let 修改后 import 可见 | 新值可见 | integration | `06_module/xts/pass/` |
| export const 引用不变 | 引用稳定 | integration | `06_module/xts/pass/` |
| export function 绑定不变 | 绑定稳定 | integration | `06_module/xts/pass/` |
| live binding 支持边界 | 支持待确认 | boundary | `06_module/xts/boundary/` |

## 10. Circular Dependency Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| 循环依赖基础 | 不崩溃 | boundary | `06_module/xts/boundary/` |
| 循环依赖初始化顺序 | 先执行可见后执行 | boundary | `06_module/xts/boundary/` |
| 循环依赖未初始化返回 undefined | undefined | boundary | `06_module/xts/boundary/` |

## 11. Type-only Import / Export Boundary Cases

| 测试点 | 边界原因 | 用例类型 | 建议路径 |
|---|---|---|---|
| import type 支持 | TS 特性支持待确认 | boundary | `06_module/xts/boundary/` |
| export type 支持 | TS 特性支持待确认 | boundary | `06_module/xts/boundary/` |
| export interface 支持 | 类型层导出 | boundary | `06_module/xts/boundary/` |
| export generic 支持 | 类型层导出 | boundary | `06_module/xts/boundary/` |
| type-only 运行时擦除 | 不产生 import 代码 | boundary | `06_module/xts/boundary/` |

## 12. Dynamic Import / TLA Boundary Cases

| 测试点 | 边界原因 | 用例类型 | 建议路径 |
|---|---|---|---|
| dynamic import 支持 | ES2020 支持待确认 | boundary | `06_module/xts/boundary/` |
| dynamic import 返回 Promise | Promise 行为 | boundary | `06_module/xts/boundary/` |
| top-level await 支持 | ES2022 支持待确认 | boundary | `06_module/xts/boundary/` |
| top-level await 执行顺序 | 阻塞行为 | boundary | `06_module/xts/boundary/` |

## 13. Cross Feature Cases

| 测试点 | 关联特性 | 用例类型 | 建议路径 |
|---|---|---|---|
| export function + import 调用 | module + function | integration | `06_module/xts/pass/` |
| export class + import 实例化 | module + class | integration | `06_module/xts/pass/` |
| export interface + import 类型 | module + interface | boundary | `06_module/xts/boundary/` |
| export generic + import 泛型 | module + generic | boundary | `06_module/xts/boundary/` |
| 模块初始化 null/undefined | module + null_safety | boundary | `06_module/xts/boundary/` |

## 14. Regression Cases

| 测试点 | 回归来源 | 用例类型 | 建议路径 |
|---|---|---|---|
| 模块基础 import/export 回归 | 规范行为验证 | regression | `06_module/xts/regression/` |
| live binding 回归 | 规范行为验证 | regression | `06_module/xts/regression/` |
| 模块作用域隔离回归 | 规范行为验证 | regression | `06_module/xts/regression/` |

## 15. Test262 Mapping Direction

| test262 目录 | 映射方向 |
|---|---|
| `test/language/module-code/` | 模块代码 |
| `test/language/module-code/export*` | export |
| `test/language/module-code/import*` | import |
| `test/language/module-code/namespace/` | namespace |

## 16. XTS Migration Strategy

| 步骤 | 内容 |
|---|---|
| 1 | 确认 ECMAScript module 运行时行为基线 |
| 2 | 使用多文件 XTS / ohosTest 验证 import/export |
| 3 | 使用 fail_compile 验证重复导出/缺失导出 |
| 4 | 使用 boundary 确认 dynamic import、TLA、type-only 支持边界 |
| 5 | 使用 regression 记录模块实现差异 |