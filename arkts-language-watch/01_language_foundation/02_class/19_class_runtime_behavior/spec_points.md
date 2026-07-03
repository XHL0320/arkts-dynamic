# Spec Points

## Feature

Class Runtime Behavior Watch

## ECMA Baseline Status

ES2022

## Related Sources

- ECMAScript 2022:
- ArkTS official documentation:
- ArkTS static rules:
- TypeScript compatibility reference:
- test262:

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例 | 备注 |
|---|---|---|---|---|

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例 | 备注 |
|---|---|---|---|---|

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
|---|---|---|---|---|

## Open Questions

- 当前 ArkTS 是否支持该能力？
- 该能力是编译期检查还是运行时行为？
- 是否需要 test262 对照？
- 是否存在 ArkTS 与 TS/ECMA 差异？

<!-- CLASS_RUNTIME_BEHAVIOR_DETAILED_WATCH_V1 -->

# Spec Points

## Feature

Class Runtime Behavior

## ECMA Baseline Status

ES2022 / ArkTS-specific / Mixed

## Related Sources

* ECMAScript 2022 Class Definitions
* ECMAScript 2022 Constructor and Object Creation Semantics
* ECMAScript 2022 Prototype Chain Semantics
* ECMAScript 2022 `instanceof` Operator Semantics
* ECMAScript 2022 Super Property Semantics
* ECMAScript 2022 Public Class Fields
* ECMAScript 2022 Static Fields and Static Initialization Blocks, only if ArkTS supports static block
* ArkTS official language documentation
* ArkTS static language rules
* ArkTS spec/classes.md (constructor, field initializer, new expression, instanceof, static initialization)
* ArkTS migration guide (arkts-no-prototype-assignment, arkts-no-func-apply-call, arkts-no-func-bind, arkts-no-private-identifiers, arkts-no-multiple-static-blocks, arkts-instanceof-ref-types)
* test262 class runtime behavior cases

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| S001 | class 声明在运行时创建 constructor function-like object | ECMAScript 2022 | 是 | class value 存在于运行时 |
| S002 | class 声明创建 prototype property | ECMAScript 2022 | 待确认 | ArkTS 是否暴露 prototype 属性需确认 |
| S003 | class constructor 必须通过 new 调用 | ECMAScript 2022 | 是 | 普通调用抛 TypeError 或 ArkTS checker 拦截 |
| S004 | class body 可声明 instance field | ECMAScript 2022 / ArkTS | 是 | 基础字段声明 |
| S005 | class body 可声明 instance method | ECMAScript 2022 / ArkTS | 是 | 基础方法声明 |
| S006 | class body 可声明 static field | ECMAScript 2022 / ArkTS | 是 | static field |
| S007 | class body 可声明 static method | ECMAScript 2022 / ArkTS | 是 | static method |
| S008 | class body 可包含 static block（仅一个） | ECMAScript 2022 | 待确认 | ArkTS 支持单 static block，不支持多个 |
| S009 | class 可声明 constructor | ECMAScript 2022 / ArkTS | 是 | 构造器 |
| S010 | class 可使用 extends 继承基类 | ECMAScript 2022 / ArkTS | 是 | 继承 |

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| T001 | class constructor 普通调用被 checker 拦截为 compile-time error | ArkTS checker | 待确认 | ES2022 为 runtime TypeError，ArkTS 可能前移 |
| T002 | class value 可赋值给变量并作为参数传递 | ArkTS checker / ECMA | 是 | class as value |
| T003 | instance object 与 class type 静态类型一致 | ArkTS checker | 是 | type annotation 不改变 runtime |
| T004 | instanceof 右操作数必须是引用类型 | ArkTS checker (arkts-instanceof-ref-types) | 是 | 非引用类型 compile-time error |
| T005 | instanceof 右操作数不能是 generic class（泛型参数未保留） | ArkTS checker | 是 | B\<T\> instanceof 报 compile-time error |
| T006 | abstract class 不能实例化 | ArkTS checker | 是 | compile-time error |
| T007 | interface 不能用于 instanceof 右操作数 | ArkTS checker / ECMA | 是 | interface 运行时不存在 |
| T008 | readonly 字段 constructor 外赋值被 checker 报错 | ArkTS checker | 是 | compile-time restriction |
| T009 | private/protected 字段外部访问被 checker 报错 | ArkTS checker | 是 | compile-time restriction |
| T010 | dynamic property access（a['x']）被 ArkTS checker 报错 | ArkTS checker | 待确认 | 动态属性访问限制 |
| T011 | prototype 赋值被 ArkTS checker 报错（arkts-no-prototype-assignment） | ArkTS checker | 是 | compile-time error |
| T012 | Function.call/apply/bind 使用被 ArkTS checker 报错 | ArkTS checker (arkts-no-func-apply-call, arkts-no-func-bind) | 是 | compile-time error |
| T013 | new.target 使用被 ArkTS checker 报错 | ArkTS checker | 是 | compile-time error |
| T014 | #private field 使用被 ArkTS checker 报错（arkts-no-private-identifiers） | ArkTS checker | 是 | ArkTS 使用 private 关键字替代 |
| T015 | 派生类 constructor super() 前访问 this 被 checker 报错 | ArkTS checker | 是 | this-before-super compile-time error |
| T016 | 派生类 constructor super() 参数类型需与基类 constructor 一致 | ArkTS checker | 是 | P0 |
| T017 | field initializer 使用 this/super 产生 compile-time warning | ArkTS spec/classes.md | 是 | 运行时可能报错 |
| T018 | instanceof 结果已知为 always true/false 时 checker 发出 warning | ArkTS spec | 是 | 编译期可判定 |

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
| -- | -- | -- | ----------- | -- |
| R001 | class 声明后类名作为运行时构造器值存在 | ECMAScript 2022 | 是 | class as runtime value |
| R002 | class constructor 通过 new 调用创建实例对象 | ECMAScript 2022 | 是 | instance creation |
| R003 | class constructor 普通调用抛 TypeError | ECMAScript 2022 | 待确认 | ArkTS 可能 checker 前移为 compile-time error |
| R004 | new A() 创建的实例对象可访问实例字段和方法 | ECMAScript 2022 / ArkTS | 是 | instance behavior |
| R005 | class 声明创建 A.prototype 对象 | ECMAScript 2022 | 待确认 | ArkTS 是否暴露 prototype |
| R006 | instance method 位于 prototype 上 | ECMAScript 2022 | 待确认 | ArkTS runtime 可能与 ES 一致 |
| R007 | instance field 位于 instance own property 上 | ECMAScript 2022 | 待确认 | ArkTS runtime 可能与 ES 一致 |
| R008 | static field 位于 constructor object 上 | ECMAScript 2022 | 待确认 | static side |
| R009 | static method 位于 constructor object 上 | ECMAScript 2022 | 待确认 | static side |
| R010 | instance.constructor 指向 class constructor | ECMAScript 2022 | 待确认 | constructor property |
| R011 | prototype.constructor 指向 class constructor | ECMAScript 2022 | 待确认 | prototype.constructor |
| R012 | prototype method 被所有实例共享 | ECMAScript 2022 | 待确认 | prototype sharing |
| R013 | 实例自身没有 prototype method 的 own property | ECMAScript 2022 | 待确认 | own property vs inherited |
| R014 | a instanceof A 返回 true 当 a 是 A 的实例 | ECMAScript 2022 | 是 | instanceof operator |
| R015 | derived instanceof Derived 返回 true | ECMAScript 2022 | 是 | 直接实例 |
| R016 | derived instanceof Base 返回 true | ECMAScript 2022 | 是 | 继承链 |
| R017 | base instanceof Derived 返回 false | ECMAScript 2022 | 是 | 反向不成立 |
| R018 | instanceof 右操作数非 constructor 抛 TypeError | ECMAScript 2022 | 待确认 | ArkTS 可能 checker 拦截 |
| R019 | derived instance 原型链包含 Derived.prototype | ECMAScript 2022 | 待确认 | prototype chain |
| R020 | derived instance 原型链包含 Base.prototype | ECMAScript 2022 | 待确认 | prototype chain |
| R021 | derived constructor object 继承 base constructor object | ECMAScript 2022 | 待确认 | static inheritance prototype |
| R022 | super.method() 从基类 prototype 查找方法 | ECMAScript 2022 | 是 | super property lookup |
| R023 | super.method() 的 receiver 是当前 this | ECMAScript 2022 | 是 | super this binding |
| R024 | method extraction 后 this 为 undefined（strict mode） | ECMAScript 2022 | 待确认 | method extraction 丢失 this |
| R025 | class method 默认 strict this 语义 | ECMAScript 2022 | 待确认 | class body 自动 strict |
| R026 | class method 不能作为 constructor 调用 | ECMAScript 2022 | 待确认 | 如适用 |
| R027 | field initializer 按声明顺序执行 | ECMAScript 2022 | 是 | ArkTS spec 确认 |
| R028 | base field 在 base constructor 前初始化 | ECMAScript 2022 | 是 | ArkTS spec 确认 |
| R029 | derived field 在 super() 后初始化 | ECMAScript 2022 | 是 | ArkTS spec 确认 |
| R030 | static field 在 class evaluation 阶段按声明顺序初始化 | ECMAScript 2022 | 是 | static initialization |
| R031 | static block 与 static field 按源码顺序交错执行（如支持） | ECMAScript 2022 | 待确认 | ArkTS 支持单 static block |
| R032 | constructor 抛异常导致实例创建失败 | ECMAScript 2022 | 是 | constructor abrupt completion |
| R033 | field initializer 抛异常导致实例创建中断 | ECMAScript 2022 | 是 | field abrupt completion |
| R034 | static initializer 抛异常导致 class evaluation 失败 | ECMAScript 2022 | 是 | static abrupt completion |
| R035 | super() 抛异常后 derived field 不初始化 | ECMAScript 2022 | 是 | super abrupt completion |
| R036 | class evaluation order: Base static -> Derived static -> new -> Base fields -> Base ctor -> Derived fields -> Derived ctor | ECMAScript 2022 / ArkTS | 是 | ArkTS spec 确认初始化序列 |
| R037 | private/protected/readonly/generic/interface/abstract 仅编译期存在 | ArkTS-specific | 是 | 运行时无对应机制 |
| R038 | implements 不产生 runtime check | ArkTS-specific | 是 | 纯编译期 |
| R039 | generic type argument 运行时擦除 | ArkTS-specific / TS-compatible | 是 | 类型擦除 |
| R040 | type annotation 不改变 runtime object | ArkTS-specific | 是 | 静态/运行时分离 |
| R041 | class 声明中 readonly 字段运行时可能可写 | ArkTS boundary | 待确认 | readonly 仅编译期限制 |
| R042 | private 关键字字段运行时是普通属性 | ArkTS boundary | 待确认 | 无 #private brand check |
| R043 | prototype 动态修改被 ArkTS 禁止 | ArkTS (arkts-no-prototype-assignment) | 是 | compile-time error |
| R044 | constructor object 动态扩展属性被 ArkTS 禁止 | ArkTS boundary | 待确认 | 动态属性添加限制 |
| R045 | call/apply/bind 被 ArkTS 禁止 | ArkTS (arkts-no-func-apply-call, arkts-no-func-bind) | 是 | compile-time error |
| R046 | class value 可赋值给变量、作为参数传递、作为返回值 | ECMAScript 2022 / ArkTS | 是 | class as value |
| R047 | 派生类调用 inherited static method 时 this 指向 derived constructor | ECMAScript 2022 | 待确认 | static method this binding |
| R048 | super.method 不存在时报 TypeError 或 ArkTS compile-time boundary | ECMAScript 2022 | 待确认 | property not found |
| R049 | super.method 非 callable 报 TypeError 或 ArkTS compile-time boundary | ECMAScript 2022 | 待确认 | non-callable |
| R050 | method extraction 后访问 this.field 抛 TypeError | ECMAScript 2022 | 待确认 | this undefined TypeError |
| R051 | 派生类默认 constructor 自动调用 super() | ECMAScript 2022 | 是 | implicit super call |
| R052 | 不同实例字段互不影响 | ECMAScript 2022 | 是 | instance isolation |
| R053 | 多次 new 创建不同实例 | ECMAScript 2022 | 是 | distinct instances |

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例描述 | 备注 |
| -- | ---- | -------------- | ------ | -- |
| C001 | class constructor 普通调用 A() | checker | A() | ArkTS 可能 checker 拦截而非 runtime TypeError |
| C002 | class constructor 赋值后普通调用 | checker | const f=A; f() | 可能 checker 拦截 |
| C003 | abstract class 实例化 | checker | new AbstractClass() | compile-time error |
| C004 | instanceof 右操作数为非引用类型 | checker | x instanceof number | arkts-instanceof-ref-types |
| C005 | instanceof 右操作数为 generic class | checker | x instanceof B\<T\> | 泛型参数运行时擦除 |
| C006 | instanceof 右操作数为 interface | checker | x instanceof I | interface 运行时不存在 |
| C007 | prototype 赋值 | checker | A.prototype = {} | arkts-no-prototype-assignment |
| C008 | Function.call/apply 使用 | checker | fn.call(this, arg) | arkts-no-func-apply-call |
| C009 | Function.bind 使用 | checker | fn.bind(this) | arkts-no-func-bind |
| C010 | new.target 使用 | checker | new.target | compile-time error |
| C011 | #private field 使用 | checker | #privateField | arkts-no-private-identifiers |
| C012 | 多个 static block | checker | static{}; static{} | arkts-no-multiple-static-blocks |
| C013 | 派生类 constructor super() 前访问 this | checker | this.x; super() | this-before-super |
| C014 | 派生类 constructor super() 前访问 this.field | checker | this.x=1; super() | this-before-super |
| C015 | 派生类 constructor super() 前调用 this.method() | checker | this.m(); super() | this-before-super |
| C016 | dynamic property access | checker | a['x'] | 待确认 |
| C017 | 动态添加属性到 object | checker | a.newProp = 1 | ArkTS 禁止动态扩展 |
| C018 | readonly 字段 constructor 外赋值 | checker | obj.r = 42 | compile-time error |
| C019 | private 字段外部访问 | checker | obj.privateField | compile-time error |
| C020 | protected 字段外部访问 | checker | obj.protectedField | compile-time error |
| C021 | super() 参数类型不匹配 | checker | super('s') where Base(number) | compile-time error |
| C022 | super() 参数个数不足 | checker | super() where Base(x:number) | compile-time error |
| C023 | class expression 使用 | checker | const C = class {} | ArkTS 不支持 class expression |
| C024 | class implements class | checker | class A implements B {} | ArkTS 只允许 implements interface |
| C025 | interface extends class | checker | interface I extends C {} | ArkTS 不允许 |

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例描述 | 备注 |
| -- | ---- | -------- | ------ | -- |
| E001 | class constructor 普通调用 A()，如未被 checker 拦截 | TypeError | A() | ES2022 TypeError |
| E002 | class constructor 赋值给变量后普通调用 | TypeError | const f=A; f() | 如未被 checker 拦截 |
| E003 | class constructor 作为 callback 普通调用 | TypeError | [A].map(f=>f()) | 如未被 checker 拦截 |
| E004 | this before super，如未被 checker 拦截到达 runtime | ReferenceError | this before super | ArkTS 通常 checker 拦截 |
| E005 | super() 重复调用，如未被 checker 拦截 | TypeError 或差异记录 | super(); super() | ArkTS 通常 checker 拦截 |
| E006 | super.method 不存在 | TypeError | super.nonExistent() | 如未被 checker 拦截 |
| E007 | super.method 非 callable | TypeError | super.nonCallable() | 如未被 checker 拦截 |
| E008 | method extraction 后 this 为 undefined 访问 this.field | TypeError | const m = a.method; m() | strict mode this undefined |
| E009 | field initializer 抛异常 | 原始异常类型 | x = thrower() | 实例创建中断 |
| E010 | constructor 抛异常 | 原始异常类型 | throw new Error() | 实例创建失败 |
| E011 | static initializer 抛异常 | 原始异常类型 | static x = thrower() | class evaluation 失败 |
| E012 | static block 抛异常（如支持） | 原始异常类型 | static { throw new Error() } | class evaluation 失败 |
| E013 | instanceof 右操作数非 constructor（如未被 checker 拦截） | TypeError | x instanceof 42 | ES2022 TypeError |
| E014 | field initializer 使用 this 导致 runtime error | 原始异常类型 | f1 = this.init_f1() | ArkTS spec 明确 |
| E015 | field with late initialization 读取未初始化字段 | 原始异常类型 | console.log(y.f) | ArkTS runtime error |
| E016 | Base constructor 抛异常后 derived 初始化中断 | 原始异常类型 | super() throws | derived fields 不初始化 |
| E017 | super() 内 base constructor 抛异常 | 原始异常类型 | super() throws | 派生类构造中断 |
| E018 | derived field initializer 抛异常 | 原始异常类型 | derived field throws | constructor 剩余不执行 |
| E019 | method 中抛异常向外传播 | 原始异常类型 | this.m() throws | 运行时传播 |
| E020 | Base static initializer 抛异常导致 Derived static 不执行 | 原始异常类型 | Base static throws | static inheritance 中断 |

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
| -- | ------- | ------------- | -------- | -- |
| class constructor 普通调用 | TypeError (runtime) | TypeError (runtime) | checker 拦截为 compile-time error 或 runtime TypeError | P0 |
| prototype 暴露 | A.prototype 可访问 | A.prototype 可访问 | 待确认是否暴露 | prototype property |
| prototype 动态修改 | 允许修改 prototype | 允许修改 prototype | compile-time error (arkts-no-prototype-assignment) | P0 |
| constructor object 动态扩展 | 允许添加属性 | 允许添加属性 | 待确认是否禁止 | 动态扩展限制 |
| method extraction | 方法可提取但 this 丢失 | 方法可提取但 this 丢失 | 待确认行为 | this undefined |
| call/apply/bind | 允许使用 | 允许使用 | compile-time error | P0 |
| private/protected | ECMA 使用 #private (brand check) | TS 使用关键字 (compile-time) | ArkTS 使用关键字 (compile-time)，运行时是普通属性 | P0 |
| readonly | ECMA 无 readonly | TS 编译期限制 | ArkTS 编译期限制，运行时可能可写 | ArkTS-specific |
| abstract | ECMA 无 abstract class | TS 有 abstract | ArkTS compile-time 限制，运行时无对应 | ArkTS-specific |
| interface | ECMA 无 interface | TS 有 interface | ArkTS interface 仅编译期，运行时不存在 | ArkTS-specific |
| implements | ECMA 无 implements | TS 有 implements | ArkTS implements 不产生 runtime check | ArkTS-specific |
| generic type argument | ECMA 无泛型 | TS 有泛型但运行时擦除 | ArkTS 泛型运行时擦除 | TS-compatible |
| static block | ES2022 支持多个 | TS 支持 | ArkTS 只支持单 static block | 差异 |
| #private | ES2022 支持 | TS 支持 | compile-time error，使用 private 关键字 | arkts-no-private-identifiers |
| new.target | ES2022 支持 | TS 支持 | compile-time error | P0 |
| instanceof with primitive | ES2022 TypeError | TS 可能有 warning | compile-time error (arkts-instanceof-ref-types) | P0 |
| instanceof with generic | ES2022 允许 | TS 可运行但结果可能不符合预期 | compile-time error (泛型参数运行时擦除) | ArkTS-specific |
| type annotation | ECMA 无静态类型 | TS 有但运行时不影响 | ArkTS type annotation 运行时擦除 | 静态/运行时分离 |
| class expression | ES2022 支持 | TS 支持 | compile-time error | ArkTS 不支持 |

## Open Questions

1. ArkTS 是否暴露完整 ECMAScript prototype 行为（A.prototype 可访问）？
2. ArkTS 是否允许 prototype 动态修改（已确认禁止，arkts-no-prototype-assignment）？
3. ArkTS 是否允许 constructor object 动态扩展属性？
4. ArkTS 是否允许 class constructor 普通调用进入 runtime，还是 checker 提前拦截？
5. ArkTS 是否允许 method extraction（方法提取后 this 为 undefined）？
6. ArkTS 是否支持 call/apply/bind（已确认不支持，compile-time error）？
7. ArkTS private/protected/readonly 是否仅存在于编译期，运行时是普通属性？
8. ArkTS 是否支持 static block（支持单 static block，不支持多个）？
9. ArkTS 是否支持 #private（已确认不支持，arkts-no-private-identifiers）？
10. ArkTS runtime behavior 与 test262 的适配范围有多大差异？
11. ArkTS instanceof 右操作数限制为引用类型，primitive 类型是否 compile-time error？
12. ArkTS generic class instanceof 是否 compile-time error（运行时泛型擦除）？
13. ArkTS 实例方法是否位于 prototype 上，还是内联到实例？
14. ArkTS instance.constructor 是否指向 class constructor？
15. ArkTS class method 默认是否 strict mode this 语义？
