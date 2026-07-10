# This Keyword Spec Summary

## 1. Feature Scope

this 关键字体系看护覆盖以下方面：

- global/module 中的 this 行为
- 普通函数调用中的 this 绑定
- 对象方法调用中的 receiver this
- call/apply/bind 对 this 的影响
- 箭头函数 lexical this
- nested function / nested arrow 中的 this
- class instance method / constructor / field 中的 this
- derived class constructor 中 super() 前后 this 边界
- static method / static field 中的 this
- getter / setter 中的 this
- object literal method 中的 this
- extracted method 丢失 receiver 后的 this
- callback 中 this 丢失或绑定
- strict mode / module mode 下的 this 差异
- TypeScript this parameter、this type、polymorphic this 边界
- ArkTS 动态与静态 ArkTS this 语义差异

**关键认知**：this 是 ECMAScript 原生语言能力，有真实运行时语义。TypeScript/ArkTS 的 this parameter、this type 属于类型层兼容边界。

## 2. ECMAScript This Binding Runtime Model

ECMAScript this 绑定规则（ECMA-262 §8.3）：

| 调用方式 | this 值 | 说明 |
|---|---|---|
| 普通函数调用 `f()` | undefined（strict）/ globalThis（非 strict） | 非方法调用 |
| 方法调用 `obj.method()` | obj | receiver 绑定 |
| 构造调用 `new F()` | 新创建的对象 | 构造器 this |
| call/apply `f.call(obj)` | obj | 显式绑定 |
| bind `f.bind(obj)` | obj（永久绑定） | 永久绑定 |
| 箭头函数 `() => {}` | 外层 this（词法捕获） | 不绑定自己的 this |

## 3. TypeScript / ArkTS This Notes

TypeScript/ArkTS 额外 this 能力：
- `function f(this: T)`：this parameter 类型标注
- `this: SomeClass`：方法中 this 类型约束
- polymorphic this：`this` 作为返回类型表示当前子类
- this type 在 class 继承链中多态

鸿蒙动态 ArkTS 需要确认的差异点：
1. this parameter 是否支持
2. polymorphic this 是否支持
3. strict mode 下函数 this 是否为 undefined
4. module top-level this 是否为 undefined
5. derived class super() 前使用 this 是否报错
6. 箭头函数 lexical this 是否完整支持
7. call/apply/bind 是否完整支持
8. 动态与静态 ArkTS this 语义差异

## 4. Global This

- 脚本模式：`this` 在全局上下文为 `globalThis`
- 模块模式：`this` 在模块顶层为 `undefined`
- 严格模式不影响全局 this（模块自动严格模式）

## 5. Module Top-level This

- ES module 中 top-level `this` 为 `undefined`
- 脚本模式中 top-level `this` 为 `globalThis`

## 6. Function Call This

- 非严格模式：普通函数调用 `f()` 中 `this` 为 `globalThis`
- 严格模式：普通函数调用 `f()` 中 `this` 为 `undefined`
- 模块代码自动为严格模式

## 7. Method Call This

- `obj.method()` 中 `this` 为 `obj`
- receiver 是调用时的对象
- 链式调用中 this 为链式 receiver

## 8. Arrow Function Lexical This

- 箭头函数不绑定自己的 this
- 箭头函数内的 this 是外层作用域的 this
- 箭头函数的 this 在定义时确定，不在调用时确定
- call/apply/bind 不能改变箭头函数的 this

## 9. Nested Function / Nested Arrow This

- 嵌套普通函数：内层函数有自己的 this 绑定（可能丢失）
- 嵌套箭头函数：内层箭头捕获外层 this
- 经典模式：`var self = this` 或箭头函数保留外层 this

## 10. call / apply / bind This

- `f.call(obj, ...args)`：显式设置 this 为 obj
- `f.apply(obj, [args])`：显式设置 this 为 obj
- `f.bind(obj)`：返回新函数，this 永久绑定到 obj
- bind 后的函数 call/apply 不能改变 this
- 箭头函数的 this 不受 call/apply/bind 影响

## 11. Object Literal Method This

- `{ method() { return this } }` 中 this 为调用对象
- `{ method: function() { return this } }` 同上
- 箭头函数属性 `{ method: () => this }` 捕获外层 this

## 12. Class Constructor This

- constructor 中 this 为新创建的实例
- base class constructor 可以在 super() 前使用 this
- derived class constructor 在 super() 前使用 this 为 ReferenceError

## 13. Class Instance Method This

- 实例方法中 this 为调用实例
- 实例字段初始化中 this 为新实例
- 方法提取后丢失 receiver：`const m = obj.method; m()` 中 this 为 undefined/globalThis

## 14. Derived Class super() and This Boundary

- derived class constructor 中 super() 前访问 this 抛 ReferenceError
- super() 后 this 指向已初始化的实例
- 这是 ECMAScript 规范强制的 TDZ 行为

## 15. Static Method / Static Field This

- static 方法中 this 为类构造器本身（不是实例）
- static 字段初始化中 this 为类构造器
- `this.staticMethod()` 在 static 方法中调用其他 static 方法

## 16. Getter / Setter This

- getter `get x()` 中 this 为访问对象
- setter `set x(v)` 中 this 为赋值对象
- 通过原型链访问时 this 为原始访问对象

## 17. Extracted Method This Boundary

- `const m = obj.method` 后 `m()` 中 this 丢失
- 严格模式下 this 变为 undefined
- 非严格模式下 this 变为 globalThis
- 常见 bug 来源

## 18. Callback This Boundary

- callback 作为参数传递时，通常丢失 receiver
- `arr.forEach(obj.method)` 中 this 丢失
- 使用箭头函数或 bind 解决

## 19. TypeScript This Parameter Boundary

- `function f(this: SomeType)` 声明 this 类型
- 编译期检查调用时 this 是否匹配
- 运行时擦除
- 鸿蒙动态 ArkTS 是否支持待确认

## 20. Polymorphic This / This Type Boundary

- `method(): this` 返回 this 类型
- 在继承链中表示当前子类类型
- 编译期类型推导
- 运行时擦除
- 鸿蒙动态 ArkTS 是否支持待确认

## 21. Runtime Exception Conditions

| 条件 | 异常类型 | 说明 |
|---|---|---|
| derived constructor super() 前访问 this | ReferenceError | "Must call super before accessing this" |
| 对 undefined/null 调用方法 | TypeError | "Cannot read properties of null/undefined" |

## 22. Compile Negative Conditions

| 条件 | TypeScript 行为 | ArkTS 动态预期 |
|---|---|---|
| this parameter 如果不支持 | — | compile error（需确认） |
| polymorphic this 如果不支持 | — | compile error（需确认） |

## 23. Pending Questions

| ID | 问题 | 确认方式 | 优先级 |
|---|---|---|---|
| TK-PQ-P0-001 | 普通函数调用 strict mode this 是否为 undefined | runtime smoke | P0 |
| TK-PQ-P0-002 | 箭头函数 lexical this 是否完整支持 | runtime smoke | P0 |
| TK-PQ-P0-003 | derived class super() 前使用 this 是否抛 ReferenceError | fail_runtime | P0 |
| TK-PQ-P0-004 | call/apply/bind 是否完整支持 | runtime smoke | P0 |
| TK-PQ-P1-001 | module top-level this 是否为 undefined | runtime smoke | P1 |
| TK-PQ-P1-002 | static method this 是否为类构造器 | runtime smoke | P1 |
| TK-PQ-P1-003 | this parameter 是否支持 | compiler | P1 |
| TK-PQ-P1-004 | polymorphic this 是否支持 | compiler | P1 |
| TK-PQ-P2-001 | getter/setter this 是否正确绑定 | runtime smoke | P2 |
| TK-PQ-P2-002 | 动态与静态 ArkTS this 语义差异 | compiler / runtime | P2 |
