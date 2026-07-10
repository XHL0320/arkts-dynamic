# Generic Test Design

## 1. Positive Syntax Cases

正向用例验证泛型语法在合法位置的使用。

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| 泛型函数基础声明 | 编译通过 | pass | `04_generic/xts/pass/` |
| 泛型函数显式类型实参 | 编译通过 | pass | `04_generic/xts/pass/` |
| 泛型函数类型推断 | 编译通过 | pass | `04_generic/xts/pass/` |
| 泛型函数多类型参数 | 编译通过 | pass | `04_generic/xts/pass/` |
| 泛型类基础声明 | 编译通过 | pass | `04_generic/xts/pass/` |
| 泛型类实例化 | 编译通过 | pass | `04_generic/xts/pass/` |
| 泛型接口基础声明 | 编译通过 | pass | `04_generic/xts/pass/` |
| 泛型方法在类中 | 编译通过 | pass | `04_generic/xts/pass/` |
| 嵌套泛型 `Array<Array<T>>` | 编译通过 | pass | `04_generic/xts/pass/` |
| 泛型导出 | 编译通过 | integration | `../06_module/xts/integration/` |

## 2. Compile Negative Cases

编译负向用例验证泛型非法语法。

| 测试点 | 预期错误 | 用例类型 | 建议路径 |
|---|---|---|---|
| 泛型约束不满足 | compile error | fail_compile | `04_generic/xts/fail_compile/` |
| 重复类型参数名 | compile error | fail_compile | `04_generic/xts/fail_compile/` |
| typeof 泛型参数 | compile error | fail_compile | `04_generic/xts/fail_compile/` |
| instanceof 泛型参数 | compile error | fail_compile | `04_generic/xts/fail_compile/` |

## 3. Runtime Erasure Boundary Cases

运行时擦除边界用例验证泛型运行时行为。

| 测试点 | 边界原因 | 用例类型 | 建议路径 |
|---|---|---|---|
| 泛型运行时擦除验证 | 泛型是否产生运行时代码 | boundary | `04_generic/xts/boundary/` |
| typeof 泛型参数行为 | T 无运行时值 | boundary | `04_generic/xts/boundary/` |
| instanceof 泛型参数行为 | T 无运行时原型 | boundary | `04_generic/xts/boundary/` |
| `Array<T>` 运行时为 Array | 泛型擦除后为基础类型 | boundary | `04_generic/xts/boundary/` |
| 泛型参数作为运行时值 | T 是否可作运行时值 | boundary | `04_generic/xts/boundary/` |

## 4. Generic Function Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| 泛型函数基础 | 正常返回 | pass | `04_generic/xts/pass/` |
| 显式类型实参 | 正确类型 | pass | `04_generic/xts/pass/` |
| 类型推断 | 推断正确 | pass | `04_generic/xts/pass/` |
| 多类型参数 | 各参数独立 | pass | `04_generic/xts/pass/` |
| 泛型函数约束 | 约束满足时通过 | boundary | `04_generic/xts/boundary/` |

## 5. Generic Class Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| 泛型类基础 | 正常实例化 | pass | `04_generic/xts/pass/` |
| 泛型类实例成员 | 成员类型正确 | pass | `04_generic/xts/pass/` |
| 泛型类静态成员 | 静态成员边界 | boundary | `04_generic/xts/boundary/` |
| 泛型类构造器参数 | 参数类型正确 | pass | `04_generic/xts/pass/` |

## 6. Generic Interface Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| 泛型接口基础 | 正常声明 | pass | `04_generic/xts/pass/` |
| 泛型接口属性 | 属性类型正确 | pass | `04_generic/xts/pass/` |
| 泛型接口方法 | 方法签名正确 | pass | `04_generic/xts/pass/` |
| class implements 泛型接口 | 正常实现 | pass | `04_generic/xts/pass/` |

## 7. Constraint Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| `T extends U` 约束声明 | 编译通过 | boundary | `04_generic/xts/boundary/` |
| 约束满足 | 编译通过 | boundary | `04_generic/xts/boundary/` |
| 约束不满足 | compile error | fail_compile | `04_generic/xts/fail_compile/` |
| 约束运行时检查 | 约束是否运行时检查 | boundary | `04_generic/xts/boundary/` |

## 8. Inference Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| 单参数推断 | 推断正确 | pass | `04_generic/xts/pass/` |
| 多参数推断 | 各参数独立推断 | pass | `04_generic/xts/pass/` |
| 推断边界 | 推断不确定性边界 | boundary | `04_generic/xts/boundary/` |

## 9. TypeScript Compatibility Boundary Cases

| 测试点 | 边界原因 | 用例类型 | 建议路径 |
|---|---|---|---|
| 泛型默认参数 | 支持待确认 | boundary | `04_generic/xts/boundary/` |
| 泛型与 union type | 支持待确认 | boundary | `04_generic/xts/boundary/` |
| 泛型与 conditional type | 支持待确认 | boundary | `04_generic/xts/boundary/` |
| 泛型与 intersection type | 支持待确认 | boundary | `04_generic/xts/boundary/` |

## 10. Cross Feature Cases

| 测试点 | 关联特性 | 用例类型 | 建议路径 |
|---|---|---|---|
| 泛型函数 + 函数调用 | generic + function | integration | `04_generic/xts/integration/` |
| 泛型类 + class 继承 | generic + class | integration | `04_generic/xts/integration/` |
| 泛型接口 + interface extends | generic + interface | integration | `04_generic/xts/integration/` |
| 泛型 + module export | generic + module | integration | `../06_module/xts/integration/` |

## 11. Regression Cases

| 测试点 | 回归来源 | 用例类型 | 建议路径 |
|---|---|---|---|
| 泛型运行时擦除验证 | 规范行为验证 | regression | `04_generic/xts/regression/` |
| 泛型推断行为 | 兼容差异验证 | regression | `04_generic/xts/regression/` |
| 泛型约束行为 | 兼容差异验证 | regression | `04_generic/xts/regression/` |

## 12. Test262 Mapping Direction

泛型不直接来自 ECMAScript 规范，test262 中没有直接对应的测试目录。后续映射重点是 TypeScript / ArkTS 兼容说明。

## 13. XTS Migration Strategy

| 步骤 | 内容 |
|---|---|
| 1 | 确认 TypeScript generic 语法在动态 ArkTS 中的支持范围 |
| 2 | 使用 XTS / ohosTest 验证泛型运行时擦除行为 |
| 3 | 使用 fail_compile 验证约束不满足和重复参数名 |
| 4 | 使用 boundary 确认默认参数、嵌套泛型、union/conditional type 支持边界 |
| 5 | 使用 regression 记录鸿蒙动态 ArkTS 泛型实现差异 |