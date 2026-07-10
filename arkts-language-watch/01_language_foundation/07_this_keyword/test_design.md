# This Keyword Test Design

## 1. Positive Runtime Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| 方法调用 this | this 为 receiver | pass | `07_this_keyword/xts/pass/` |
| 箭头函数 lexical this | 捕获外层 this | pass | `07_this_keyword/xts/pass/` |
| call 改变 this | this 为 call 参数 | pass | `07_this_keyword/xts/pass/` |
| apply 改变 this | this 为 apply 参数 | pass | `07_this_keyword/xts/pass/` |
| bind 永久绑定 this | this 为 bind 参数 | pass | `07_this_keyword/xts/pass/` |
| class constructor this | this 为新实例 | pass | `07_this_keyword/xts/pass/` |
| class 实例方法 this | this 为调用实例 | pass | `07_this_keyword/xts/pass/` |
| static 方法 this | this 为类构造器 | pass | `07_this_keyword/xts/pass/` |
| getter this | this 为访问对象 | pass | `07_this_keyword/xts/pass/` |

## 2. Compile Negative Cases

| 测试点 | 预期错误 | 用例类型 | 建议路径 |
|---|---|---|---|
| this parameter 不支持 | compile error | boundary | `07_this_keyword/xts/boundary/` |
| polymorphic this 不支持 | compile error | boundary | `07_this_keyword/xts/boundary/` |

## 3. Runtime Exception Cases

| 测试点 | 预期异常 | 用例类型 | 建议路径 |
|---|---|---|---|
| derived constructor super() 前使用 this | ReferenceError | fail_runtime | `07_this_keyword/xts/fail_runtime/` |

## 4. Function This Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| 普通函数调用 strict this | undefined | pass | `07_this_keyword/xts/pass/` |
| 普通函数调用非 strict this | globalThis | boundary | `07_this_keyword/xts/boundary/` |
| 嵌套普通函数 this 丢失 | undefined/globalThis | boundary | `07_this_keyword/xts/boundary/` |

## 5. Method This Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| obj.method() this | obj | pass | `07_this_keyword/xts/pass/` |
| object literal method this | 调用对象 | pass | `07_this_keyword/xts/pass/` |
| 提取方法后 this 丢失 | undefined | boundary | `07_this_keyword/xts/boundary/` |

## 6. Arrow Lexical This Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| 箭头函数捕获外层 this | 外层 this | pass | `07_this_keyword/xts/pass/` |
| 嵌套箭头保持 this | 最外层 this | pass | `07_this_keyword/xts/pass/` |
| call 不能改变箭头 this | 外层 this | pass | `07_this_keyword/xts/pass/` |

## 7. call / apply / bind Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| f.call(obj) this | obj | pass | `07_this_keyword/xts/pass/` |
| f.apply(obj) this | obj | pass | `07_this_keyword/xts/pass/` |
| f.bind(obj)() this | obj | pass | `07_this_keyword/xts/pass/` |
| bind 后 call 不能改变 | bind 的 obj | pass | `07_this_keyword/xts/pass/` |

## 8. Class This Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| constructor this | 新实例 | pass | `07_this_keyword/xts/pass/` |
| 实例方法 this | 调用实例 | pass | `07_this_keyword/xts/pass/` |
| 实例字段 this | 新实例 | boundary | `07_this_keyword/xts/boundary/` |
| derived super() 后 this | 已初始化实例 | pass | `07_this_keyword/xts/pass/` |

## 9. Static This Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| static 方法 this | 类构造器 | pass | `07_this_keyword/xts/pass/` |
| static 字段 this | 类构造器 | boundary | `07_this_keyword/xts/boundary/` |

## 10. Derived Class This / super Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| super() 前使用 this | ReferenceError | fail_runtime | `07_this_keyword/xts/fail_runtime/` |
| super() 后使用 this | 已初始化实例 | pass | `07_this_keyword/xts/pass/` |

## 11. Getter / Setter This Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| getter this | 访问对象 | pass | `07_this_keyword/xts/pass/` |
| setter this | 赋值对象 | pass | `07_this_keyword/xts/pass/` |

## 12. Callback / Extracted Method Cases

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| callback this 丢失 | undefined | boundary | `07_this_keyword/xts/boundary/` |
| 箭头函数 callback 保留 this | 外层 this | pass | `07_this_keyword/xts/pass/` |
| bind callback 保留 this | bind 的 obj | pass | `07_this_keyword/xts/pass/` |

## 13. TypeScript Compatibility Boundary Cases

| 测试点 | 边界原因 | 用例类型 | 建议路径 |
|---|---|---|---|
| this parameter | TS 特性支持待确认 | boundary | `07_this_keyword/xts/boundary/` |
| polymorphic this | TS 特性支持待确认 | boundary | `07_this_keyword/xts/boundary/` |
| this return type | TS 特性支持待确认 | boundary | `07_this_keyword/xts/boundary/` |

## 14. Cross Feature Cases

| 测试点 | 关联特性 | 用例类型 | 建议路径 |
|---|---|---|---|
| this + class 继承 | this_keyword + class | integration | `07_this_keyword/xts/pass/` |
| this + 箭头函数 + callback | this_keyword + function | integration | `07_this_keyword/xts/pass/` |
| module top-level this | this_keyword + module | boundary | `07_this_keyword/xts/boundary/` |

## 15. Regression Cases

| 测试点 | 回归来源 | 用例类型 | 建议路径 |
|---|---|---|---|
| 箭头函数 lexical this 回归 | 规范行为验证 | regression | `07_this_keyword/xts/regression/` |
| call/apply/bind 回归 | 规范行为验证 | regression | `07_this_keyword/xts/regression/` |
| derived super 前使用 this 回归 | 规范行为验证 | regression | `07_this_keyword/xts/regression/` |

## 16. Test262 Mapping Direction

| test262 目录 | 映射方向 |
|---|---|
| `test/language/this/` | this 绑定 |
| `test/language/expressions/arrow-function/` | 箭头函数 this |
| `test/language/expressions/call/` | call this |
| `test/language/expressions/apply/` | apply this |
| `test/language/expressions/bind/` | bind this |

## 17. XTS Migration Strategy

| 步骤 | 内容 |
|---|---|
| 1 | 确认 ECMAScript this 运行时行为基线 |
| 2 | 使用 XTS / ohosTest 验证 this 绑定行为 |
| 3 | 使用 fail_runtime 验证 derived super 前使用 this ReferenceError |
| 4 | 使用 boundary 确认 this parameter、polymorphic this 支持边界 |
| 5 | 使用 regression 记录 this 实现差异 |
