# Type Test Design

## 1. Positive Runtime Cases

正向运行时用例验证类型的正常行为。

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| number 基础值（整数、浮点、负数） | 正常数值 | pass | `types/xts/pass/` |
| number 特殊值（NaN、Infinity、-Infinity、+0、-0） | 正常特殊值 | pass | `types/xts/pass/` |
| string 基础值（空串、单字符、长字符串） | 正常字符串 | pass | `types/xts/pass/` |
| boolean true/false 基础值 | true / false | pass | `types/xts/pass/` |
| bigint 基础值（小整数、大整数、负数） | 正常 bigint | pass | `types/xts/pass/` |
| symbol 创建和唯一性 | Symbol() 唯一 | pass | `types/xts/pass/` |
| null 基础值 | null | pass | `types/xts/pass/` |
| undefined 基础值 | undefined | pass | `types/xts/pass/` |
| object 基础属性访问 | 正常属性值 | pass | `types/xts/pass/` |
| array 运行时类型（typeof + isArray） | "object" + isArray true | pass | `types/xts/pass/` |
| function object typeof | "function" | pass | `types/xts/pass/` |
| typeof undefined | "undefined" | pass | `types/xts/pass/` |
| typeof null | "object" | pass | `types/xts/pass/` |
| typeof function | "function" | pass | `types/xts/pass/` |
| typeof bigint | "bigint" | pass | `types/xts/pass/` |
| typeof symbol | "symbol" | pass | `types/xts/pass/` |
| instanceof class instance | true | pass | `types/xts/pass/` |
| instanceof array | true | pass | `types/xts/pass/` |
| ToBoolean falsy 值（0、""、null、undefined、NaN、false） | false | pass | `types/xts/pass/` |
| ToBoolean truthy 值（"0"、"false"、[]、{}） | true | pass | `types/xts/pass/` |
| ToNumber string（"123" → 123, "abc" → NaN） | 正确转换 | pass | `types/xts/pass/` |
| ToString number（123 → "123"） | 正确转换 | pass | `types/xts/pass/` |
| null == undefined 抽象相等 | true | pass | `types/xts/pass/` |
| null === undefined 严格不等 | false | pass | `types/xts/pass/` |
| number == bigint 抽象相等（1 == 1n） | true | pass | `types/xts/pass/` |

## 2. Syntax Error / Compile Negative Cases

编译期/语法期错误用例验证类型规则的静态禁止条件。

| 测试点 | 预期错误 | 用例类型 | 建议路径 |
|---|---|---|---|
| TypeScript 类型标注如果不支持 | compile error | fail_compile | `types/xts/fail_compile/` |
| union type 语法如果不支持 | compile error | fail_compile | `types/xts/fail_compile/` |
| literal type 语法如果不支持 | compile error | fail_compile | `types/xts/fail_compile/` |
| type alias 语法如果不支持 | compile error | fail_compile | `types/xts/fail_compile/` |
| `any` / `unknown` 如果不支持 | compile error | fail_compile | `types/xts/fail_compile/` |
| `new Symbol()` 调用 | TypeError（不是 SyntaxError） | fail_runtime | `types/xts/fail_runtime/` |

注意：TypeScript 类型语法的支持状态需要先通过 boundary 用例确认，确认不支持后再生成 fail_compile 用例。

## 3. Runtime Exception Cases

运行时异常用例验证类型相关的运行期报错行为。

| 测试点 | 预期异常 | 用例类型 | 建议路径 |
|---|---|---|---|
| number + bigint 混合运算 | TypeError | fail_runtime | `types/xts/fail_runtime/` |
| instanceof 右侧非函数 | TypeError | fail_runtime | `types/xts/fail_runtime/` |
| typeof 访问 TDZ 变量 | ReferenceError | fail_runtime | `types/xts/fail_runtime/` |
| `new Symbol()` 调用 | TypeError | fail_runtime | `types/xts/fail_runtime/` |
| 访问 null 的属性 | TypeError | fail_runtime | `types/xts/fail_runtime/` |
| 访问 undefined 的属性 | TypeError | fail_runtime | `types/xts/fail_runtime/` |
| 调用非函数值 | TypeError | fail_runtime | `types/xts/fail_runtime/` |

## 4. Boundary Cases

边界用例验证规范差异或 ArkTS 支持状态待确认的场景。

| 测试点 | 边界原因 | 用例类型 | 建议路径 |
|---|---|---|---|
| TypeScript 类型标注是否作为兼容语法 | 运行时是否擦除待确认 | boundary | `types/xts/boundary/` |
| union type 语法是否允许 | 支持状态待确认 | boundary | `types/xts/boundary/` |
| literal type 语法是否允许 | 支持状态待确认 | boundary | `types/xts/boundary/` |
| type alias 语法是否允许 | 支持状态待确认 | boundary | `types/xts/boundary/` |
| `any` / `unknown` 是否允许 | 支持状态待确认 | boundary | `types/xts/boundary/` |
| 类型断言 `x as T` 是否允许 | 支持状态待确认 | boundary | `types/xts/boundary/` |
| `interface` 声明运行时行为 | 纯类型层声明 | boundary | `types/xts/boundary/` |
| `Object.is(0, -0)` 行为 | 与 `0 === -0` 差异 | boundary | `types/xts/boundary/` |
| `Symbol.hasInstance` 自定义 instanceof | 是否支持 | boundary | `types/xts/boundary/` |
| 跨 realm instanceof 可靠性 | 多 realm 场景 | boundary | `types/xts/boundary/` |
| `Number([])` 转换为 0 | 容易误判 | boundary | `types/xts/boundary/` |
| `Number([1,2])` 转换为 NaN | 容易误判 | boundary | `types/xts/boundary/` |
| `Boolean([])` 为 true（空数组 truthy） | 常见误判 | boundary | `types/xts/boundary/` |
| `Boolean({})` 为 true（空对象 truthy） | 常见误判 | boundary | `types/xts/boundary/` |

## 5. Cross Feature Cases

跨特性组合用例验证类型体系与其他语言特性的交互。

| 测试点 | 关联特性 | 用例类型 | 建议路径 |
|---|---|---|---|
| typeof + 运算符组合（typeof (1 + "2")） | types + operators | integration | `types/xts/integration/` |
| instanceof + class 继承链 | types + class | integration | `types/xts/integration/` |
| typeof function + 函数调用 | types + function | integration | `types/xts/integration/` |
| array typeof + array methods | types + builtin API | integration | `types/xts/integration/` |
| ToPrimitive + 对象 + 运算符 | types + operators | integration | `types/xts/integration/` |
| 类型转换 + 比较运算符（== 抽象相等） | types + operators | integration | `types/xts/integration/` |
| symbol 属性键 + for...in | types + statements | integration | `types/xts/integration/` |

## 6. Cross Module Cases

跨模块用例验证类型在多文件场景中的行为。

| 测试点 | 用例类型 | 建议路径 |
|---|---|---|
| 跨模块 class instance instanceof 判断 | integration | `../06_module/import/xts/integration/` |
| 跨模块 array 类型一致性 | integration | `../06_module/import/xts/integration/` |
| 跨模块 function typeof 一致性 | integration | `../06_module/import/xts/integration/` |

## 7. Regression Cases

回归用例用于记录和验证历史缺陷或后续发现的兼容差异。

| 测试点 | 回归来源 | 用例类型 | 建议路径 |
|---|---|---|---|
| typeof null 返回 "object" 历史遗留 | 规范历史验证 | regression | `types/xts/regression/` |
| NaN !== NaN 行为 | 规范核心验证 | regression | `types/xts/regression/` |
| 0 === -0 行为 | 规范细节验证 | regression | `types/xts/regression/` |
| number + bigint TypeError | 兼容性回归 | regression | `types/xts/regression/` |
| 空数组 truthy 行为 | 常见误判回归 | regression | `types/xts/regression/` |

## 8. Test262 Mapping Direction

ECMAScript test262 中类型相关的测试目录映射：

| test262 目录 | 映射方向 | 对应本目录测试点 |
|---|---|---|
| `test/language/types/` | 基础类型 | TYPE-系列 |
| `test/language/expressions/typeof/` | typeof | TYPE-TYPEOF-系列 |
| `test/language/expressions/instanceof/` | instanceof | TYPE-INSTANCEOF-系列 |
| `test/language/expressions/` | 类型转换边界 | TYPE-CONV-系列 |
| `test/built-ins/` | builtin 类型行为 | 交叉映射 |

策略：test262 基础类型语义映射归 types；运算符特有 test262 映射归 operators；builtin API test262 映射归 builtin API watch。

## 9. XTS Migration Strategy

| 步骤 | 内容 |
|---|---|
| 1 | 确认 test262 类型语义基线覆盖范围 |
| 2 | 使用 XTS / ohosTest 验证动态 ArkTS 运行时类型行为 |
| 3 | 使用 fail_compile 验证不支持的 TS 类型语法 |
| 4 | 使用 fail_runtime 验证 TypeError 和 ReferenceError |
| 5 | 使用 regression 记录鸿蒙动态 ArkTS 类型实现差异 |
| 6 | 使用 boundary 确认 ArkTS 动态对 TypeScript 类型语法的兼容边界 |
