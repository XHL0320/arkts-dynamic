# Null Safety Test Design

## 1. Positive Runtime Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| null 基础值 | null | pass | `05_null_safety/xts/pass/` |
| undefined 基础值 | undefined | pass | `05_null_safety/xts/pass/` |
| typeof null | "object" | pass | `05_null_safety/xts/pass/` |
| typeof undefined | "undefined" | pass | `05_null_safety/xts/pass/` |
| null == undefined | true | pass | `05_null_safety/xts/pass/` |
| null === undefined | false | pass | `05_null_safety/xts/pass/` |
| 可选链属性访问 | 正常或 undefined | pass | `05_null_safety/xts/pass/` |
| 可选链方法调用 | 正常或 undefined | pass | `05_null_safety/xts/pass/` |
| 可选链元素访问 | 正常或 undefined | pass | `05_null_safety/xts/pass/` |
| 空值合并 null | 返回默认值 | pass | `05_null_safety/xts/pass/` |
| 空值合并 undefined | 返回默认值 | pass | `05_null_safety/xts/pass/` |
| 空值合并 false/0/"" | 返回原值 | pass | `05_null_safety/xts/pass/` |
| 函数返回 undefined | undefined | pass | `05_null_safety/xts/pass/` |
| 函数返回 null | null | pass | `05_null_safety/xts/pass/` |

## 2. Compile Negative Cases

| 测试点 | 预期错误 | 用例类型 | 建议路径 |
|---|---|---|---|
| 可选链作为赋值目标 | SyntaxError | fail_compile | `05_null_safety/xts/fail_compile/` |
| strict null 下 null 赋给非 nullable | compile error | boundary | `05_null_safety/xts/boundary/` |

## 3. Runtime Exception Cases

| 测试点 | 预期异常 | 用例类型 | 建议路径 |
|---|---|---|---|
| 访问 null 的属性 | TypeError | fail_runtime | `05_null_safety/xts/fail_runtime/` |
| 访问 undefined 的属性 | TypeError | fail_runtime | `05_null_safety/xts/fail_runtime/` |
| 调用 null 的方法 | TypeError | fail_runtime | `05_null_safety/xts/fail_runtime/` |
| 调用 undefined 的方法 | TypeError | fail_runtime | `05_null_safety/xts/fail_runtime/` |

## 4. Optional Chaining Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| obj?.prop 非 null | 返回属性值 | pass | `05_null_safety/xts/pass/` |
| obj?.prop 为 null | undefined | pass | `05_null_safety/xts/pass/` |
| obj?.method() 非 null | 调用方法 | pass | `05_null_safety/xts/pass/` |
| obj?.method() 为 null | undefined | pass | `05_null_safety/xts/pass/` |
| arr?.[index] 为 null | undefined | pass | `05_null_safety/xts/pass/` |
| 可选链短路 | 后续不执行 | pass | `05_null_safety/xts/pass/` |

## 5. Nullish Coalescing Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| null ?? "default" | "default" | pass | `05_null_safety/xts/pass/` |
| undefined ?? "default" | "default" | pass | `05_null_safety/xts/pass/` |
| 0 ?? "default" | 0 | pass | `05_null_safety/xts/pass/` |
| "" ?? "default" | "" | pass | `05_null_safety/xts/pass/` |
| false ?? "default" | false | pass | `05_null_safety/xts/pass/` |
| ?? vs || 差异 | 0 vs "default" | pass | `05_null_safety/xts/pass/` |

## 6. Function Parameter / Return Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| 可选参数省略 | undefined | pass | `05_null_safety/xts/pass/` |
| 可选参数传 undefined | undefined | pass | `05_null_safety/xts/pass/` |
| 默认参数传 undefined | 使用默认值 | pass | `05_null_safety/xts/pass/` |
| 默认参数传 null | null（不触发默认） | pass | `05_null_safety/xts/pass/` |
| 函数无 return | undefined | pass | `05_null_safety/xts/pass/` |
| 函数 return null | null | pass | `05_null_safety/xts/pass/` |

## 7. Class / Interface Optional Member Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| class field 未初始化 | undefined | pass | `05_null_safety/xts/pass/` |
| class field 显式 null | null | pass | `05_null_safety/xts/pass/` |
| interface optional property 缺省 | undefined | pass | `05_null_safety/xts/pass/` |
| interface optional property 为 undefined | undefined | pass | `05_null_safety/xts/pass/` |

## 8. Generic / NonNullable Boundary Cases

| 测试点 | 边界原因 | 用例类型 | 建议路径 |
|---|---|---|---|
| NonNullable<T> 支持 | TS utility type 支持待确认 | boundary | `05_null_safety/xts/boundary/` |
| T | null union | 支持待确认 | boundary | `05_null_safety/xts/boundary/` |
| T | undefined union | 支持待确认 | boundary | `05_null_safety/xts/boundary/` |
| T extends object 约束 | 排除 null/undefined | boundary | `05_null_safety/xts/boundary/` |

## 9. TypeScript Compatibility Boundary Cases

| 测试点 | 边界原因 | 用例类型 | 建议路径 |
|---|---|---|---|
| strict null checks | 是否默认开启 | boundary | `05_null_safety/xts/boundary/` |
| 非空断言 `!` | 支持待确认 | boundary | `05_null_safety/xts/boundary/` |
| 空值赋值 `??=` | 支持待确认 | boundary | `05_null_safety/xts/boundary/` |
| 可选属性编译期检查 | 检查行为待确认 | boundary | `05_null_safety/xts/boundary/` |

## 10. Cross Feature Cases

| 测试点 | 关联特性 | 用例类型 | 建议路径 |
|---|---|---|---|
| null + 运算符 | null_safety + operators | integration | `05_null_safety/xts/integration/` |
| 可选链 + 对象结构 | null_safety + types | integration | `05_null_safety/xts/integration/` |
| null 参数 + 函数调用 | null_safety + function | integration | `05_null_safety/xts/integration/` |
| class field null + 继承 | null_safety + class | integration | `05_null_safety/xts/integration/` |

## 11. Regression Cases

| 测试点 | 回归来源 | 用例类型 | 建议路径 |
|---|---|---|---|
| typeof null "object" 历史遗留 | 规范行为验证 | regression | `05_null_safety/xts/regression/` |
| null == undefined 行为 | 规范核心验证 | regression | `05_null_safety/xts/regression/` |
| null 属性访问 TypeError | 规范行为验证 | regression | `05_null_safety/xts/regression/` |

## 12. Test262 Mapping Direction

| test262 目录 | 映射方向 |
|---|---|
| `test/language/types/` | null/undefined 类型 |
| `test/language/expressions/optional-chaining/` | 可选链 |
| `test/language/expressions/coalescing/` | 空值合并 |
| `test/language/expressions/assignment/` | 空值赋值 |

## 13. XTS Migration Strategy

| 步骤 | 内容 |
|---|---|
| 1 | 确认 ECMAScript null/undefined 运行时行为基线 |
| 2 | 使用 XTS / ohosTest 验证可选链和空值合并运行时行为 |
| 3 | 使用 fail_runtime 验证 null/undefined 属性访问 TypeError |
| 4 | 使用 boundary 确认 strict null checks、非空断言、NonNullable 支持边界 |
| 5 | 使用 regression 记录 typeof null 历史遗留行为 |