# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|
| 基础正向场景 |  | pass | 否 |  | P0 |  |
| 编译负向场景 |  | fail_compile | 否 |  | P0 |  |
| 运行时异常场景 |  | fail_runtime | 否 |  | P1 |  |
| 边界场景 |  | boundary | 否 |  | P1 |  |
| 类型系统组合 |  | integration | 否 |  | P0 |  |
| test262 对照 |  | mapping | 否 |  | P1 |  |
| 回归用例 |  | regression | 否 |  | P0 |  |

<!-- CLASS_RUNTIME_BEHAVIOR_DETAILED_WATCH_V1 -->

# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
| --- | -------------------- | ---- | ---- | ------ | ---- | -- |
| class 声明后类名作为运行时值存在 | ES2022 | pass | 否 |  | P0 | A. class constructor runtime value |
| class value 可用于 new 创建实例 | ES2022 | pass | 否 |  | P0 | A. class constructor runtime value |
| class value 赋值给变量后通过 new 调用 | ES2022 | pass | 否 |  | P0 | A. class constructor runtime value |
| class value 作为函数参数传递 | ES2022 | pass | 否 |  | P0 | A. class constructor runtime value |
| class value 作为函数返回值 | ES2022 | pass | 否 |  | P0 | A. class constructor runtime value |
| class value 与 instance value typeof 区分 | ES2022 | pass | 否 |  | P1 | A. class constructor runtime value |
| class value 与 ordinary function 运行时差异 | ES2022 | pass | 否 |  | P1 | A. class constructor runtime value |
| new A() 创建实例对象 | ES2022 | pass | 否 |  | P0 | B. instance creation |
| 实例对象可访问实例字段 | Mixed | pass | 否 |  | P0 | B. instance creation |
| 实例对象可调用实例方法 | Mixed | pass | 否 |  | P0 | B. instance creation |
| constructor 中初始化字段后实例可读取 | Mixed | pass | 否 |  | P0 | B. instance creation |
| 多次 new 创建不同实例 | ES2022 | pass | 否 |  | P0 | B. instance creation |
| 不同实例字段互不影响 | ES2022 | pass | 否 |  | P0 | B. instance creation |
| type annotation 不改变 runtime object | ArkTS-specific | pass | 否 |  | P1 | B. instance creation |
| A.prototype 存在与否 | ES2022 / ArkTS boundary | pass | 否 |  | P0 | C. prototype behavior |
| instance method 位于 prototype 上 | ES2022 | pass | 否 |  | P0 | C. prototype behavior |
| instance field 位于 instance own property 上 | ES2022 | pass | 否 |  | P0 | C. prototype behavior |
| prototype method 被所有实例共享 | ES2022 | pass | 否 |  | P0 | C. prototype behavior |
| 实例自身没有 prototype method own property | ES2022 | pass | 否 |  | P1 | C. prototype behavior |
| instance.constructor 指向 class constructor | ES2022 | pass | 否 |  | P0 | D. constructor property |
| prototype.constructor 指向 class constructor | ES2022 | pass | 否 |  | P0 | D. constructor property |
| derived instance.constructor 行为 | ES2022 | pass | 否 |  | P1 | D. constructor property |
| constructor property 跨模块行为 | Mixed | pass | 否 |  | P1 | D. constructor property |
| a instanceof A 返回 true | ES2022 | pass | 否 |  | P0 | E. instanceof |
| derived instanceof Derived 返回 true | ES2022 | pass | 否 |  | P0 | E. instanceof |
| derived instanceof Base 返回 true | ES2022 | pass | 否 |  | P0 | E. instanceof |
| base instanceof Derived 返回 false | ES2022 | pass | 否 |  | P0 | E. instanceof |
| object literal 不满足 instanceof A | ES2022 | pass | 否 |  | P1 | E. instanceof |
| 不同 class 结构相同 instanceof 不等价 | ES2022 | pass | 否 |  | P1 | E. instanceof |
| 实例方法调用时 this 为当前实例 | ES2022 | pass | 否 |  | P0 | F. method runtime behavior |
| override 后动态分派调用子类方法 | ES2022 | pass | 否 |  | P0 | F. method runtime behavior |
| base type 引用指向 derived instance 调用 override method | ES2022 | pass | 否 |  | P0 | F. method runtime behavior |
| super.method runtime lookup | ES2022 | pass | 否 |  | P0 | F. method runtime behavior |
| super.method receiver 是当前 this | ES2022 | pass | 否 |  | P0 | F. method runtime behavior |
| method 中抛异常向外传播 | ES2022 | pass | 否 |  | P1 | F. method runtime behavior |
| instance field 是 instance own property | ES2022 | pass | 否 |  | P0 | G. field runtime behavior |
| 每个实例独立持有 instance field | ES2022 | pass | 否 |  | P0 | G. field runtime behavior |
| field initializer 每次 new 都执行 | ES2022 | pass | 否 |  | P0 | G. field runtime behavior |
| field initializer 按声明顺序执行 | ES2022 | pass | 否 |  | P0 | G. field runtime behavior |
| derived field 在 super() 后初始化 | ES2022 | pass | 否 |  | P0 | G. field runtime behavior |
| static field 位于 constructor object 上 | ES2022 | pass | 否 |  | P0 | H. static runtime behavior |
| static method 位于 constructor object 上 | ES2022 | pass | 否 |  | P0 | H. static runtime behavior |
| instance 不能访问 static member | Mixed | pass | 否 |  | P1 | H. static runtime behavior |
| derived class 继承 static method | ES2022 | pass | 否 |  | P0 | H. static runtime behavior |
| static method 中 this 指向 class constructor | ES2022 | pass | 否 |  | P1 | H. static runtime behavior |
| inherited static method this 指向 derived constructor | ES2022 | pass | 否 |  | P1 | H. static runtime behavior |
| static field 初始化只执行一次 | ES2022 | pass | 否 |  | P0 | H. static runtime behavior |
| derived instance 原型链包含 Derived.prototype | ES2022 | pass | 否 |  | P0 | I. inheritance runtime behavior |
| derived instance 原型链包含 Base.prototype | ES2022 | pass | 否 |  | P0 | I. inheritance runtime behavior |
| derived constructor 调用 super() | ES2022 | pass | 否 |  | P0 | I. inheritance runtime behavior |
| Base field -> Base ctor -> Derived field -> Derived ctor 顺序 | ES2022 / ArkTS | pass | 否 |  | P0 | I. inheritance runtime behavior |
| 多层继承 runtime chain | ES2022 | pass | 否 |  | P1 | I. inheritance runtime behavior |
| super.method 从基类 prototype 查找 | ES2022 | pass | 否 |  | P0 | J. super runtime behavior |
| super.method 参数传递和返回值 | ES2022 | pass | 否 |  | P0 | J. super runtime behavior |
| static super.method 从基类 constructor object 查找 | ES2022 | pass | 否 |  | P1 | J. super runtime behavior |
| export class 后 import new 创建实例 | Mixed | pass | 否 |  | P0 | N. module runtime |
| 跨模块 instanceof | Mixed | pass | 否 |  | P1 | N. module runtime |
| class constructor 普通调用 A()，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | K. class cannot be called without new |
| class constructor 赋值给变量后普通调用，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | K. class cannot be called without new |
| class constructor 作为 callback 普通调用，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | K. class cannot be called without new |
| Function.call/apply 使用 class constructor，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | K. class cannot be called without new |
| Function.bind 使用 class constructor，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | K. class cannot be called without new |
| abstract class 实例化，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | K. class cannot be called without new |
| instanceof 右操作数为非引用类型，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | E. instanceof |
| instanceof 右操作数为 generic class B\<T\>，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | E. instanceof |
| instanceof 右操作数为 interface，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | E. instanceof |
| prototype 赋值 A.prototype = {}，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | C. prototype behavior |
| prototype 动态修改 A.prototype.method = fn，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | C. prototype behavior |
| #private field 使用，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | ArkTS Boundary |
| new.target 使用，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | ArkTS Boundary |
| 多个 static block，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | ArkTS Boundary |
| 派生类 constructor super() 前访问 this，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | I. inheritance runtime behavior |
| 派生类 constructor super() 前访问 this.field，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | I. inheritance runtime behavior |
| 派生类 constructor super() 前调用 this.method()，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | I. inheritance runtime behavior |
| dynamic property access a['x']，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P1 | M. dynamic boundary |
| 动态添加属性到 object a.newProp = 1，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 | M. dynamic boundary |
| class expression 使用，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P1 | ArkTS Boundary |
| constructor 普通调用 TypeError（如未被 checker 拦截） | ES2022 | fail_runtime | 否 |  | P0 | K. class cannot be called without new |
| method extraction 后 this undefined TypeError | ES2022 | fail_runtime | 否 |  | P0 | F. method runtime behavior |
| field initializer 抛异常导致实例创建中断 | ES2022 | fail_runtime | 否 |  | P0 | G. field runtime behavior |
| constructor 抛异常导致实例创建失败 | ES2022 | fail_runtime | 否 |  | P0 | O. runtime error |
| static initializer 抛异常导致 class evaluation 失败 | ES2022 | fail_runtime | 否 |  | P0 | H. static runtime behavior |
| super() 内 base constructor 抛异常后 derived field 不初始化 | ES2022 | fail_runtime | 否 |  | P0 | I. inheritance runtime behavior |
| derived field initializer 抛异常后 constructor 剩余不执行 | ES2022 | fail_runtime | 否 |  | P0 | G. field runtime behavior |
| field initializer 使用 this 导致 runtime error | Mixed | fail_runtime | 否 |  | P0 | G. field runtime behavior |
| field with late initialization 读取未初始化字段 runtime error | ArkTS-specific | fail_runtime | 否 |  | P0 | G. field runtime behavior |
| super.method 不存在 TypeError | ES2022 | fail_runtime | 否 |  | P1 | J. super runtime behavior |
| super.method 非 callable TypeError | ES2022 | fail_runtime | 否 |  | P1 | J. super runtime behavior |
| instanceof 右操作数非 constructor TypeError | ES2022 | fail_runtime | 否 |  | P1 | E. instanceof |
| static block 抛异常（如支持 static block） | ES2022 | fail_runtime | 否 |  | P1 | H. static runtime behavior |
| Base static initializer 抛异常导致 Derived static 不执行 | ES2022 | fail_runtime | 否 |  | P1 | H. static runtime behavior |
| A.prototype 存在与否边界 | Mixed | boundary | 否 |  | P0 | C. prototype behavior |
| prototype method 动态修改后实例调用边界 | Mixed | boundary | 否 |  | P0 | C. prototype behavior |
| constructor property 被覆盖后的边界 | ES2022 / ArkTS boundary | boundary | 否 |  | P1 | D. constructor property |
| constructor property 在继承链中的查找 | ES2022 / ArkTS boundary | boundary | 否 |  | P1 | D. constructor property |
| readonly field runtime 是否可写 | ArkTS-specific | boundary | 否 |  | P0 | L. type-system-only features |
| private/protected field runtime 是否普通属性 | ArkTS-specific | boundary | 否 |  | P0 | L. type-system-only features |
| generic type argument 运行时不可见 | TS-compatible | boundary | 否 |  | P0 | L. type-system-only features |
| abstract class runtime 边界 | ArkTS-specific | boundary | 否 |  | P0 | L. type-system-only features |
| static block 支持与否边界 | Mixed | boundary | 否 |  | P0 | H. static runtime behavior |
| ESObject 传入 class typed API 运行时边界 | ArkTS-specific | boundary | 否 |  | P1 | M. dynamic boundary |
| JSON.stringify 与 class instance 边界 | ES2022 / ArkTS | boundary | 否 |  | P1 | M. dynamic boundary |
| class evaluation order 观测边界 | ES2022 / ArkTS | boundary | 否 |  | P1 | O. runtime error |
| object literal 结构兼容不改变 prototype | ArkTS-specific | integration | 否 |  | P0 | L. type-system-only features |
| class implements interface 运行时无检查 | ArkTS-specific | integration | 否 |  | P0 | L. type-system-only features |
| generic class instanceof 不受泛型参数影响 | ArkTS-specific | integration | 否 |  | P0 | E. instanceof + generic |
| readonly 字段与继承组合 runtime behavior | Mixed | integration | 否 |  | P0 | G. field + readonly + inheritance |
| private/protected 字段与继承 runtime behavior | Mixed | integration | 否 |  | P0 | G. field + visibility + inheritance |
| super.method 与 override 方法组合 runtime behavior | ES2022 / ArkTS | integration | 否 |  | P0 | F. method + super + override |
| constructor 抛异常与继承链组合 | ES2022 | integration | 否 |  | P0 | I. inheritance + constructor error |
| static method inheritance 与 derived constructor object 组合 | ES2022 | integration | 否 |  | P0 | H. static + inheritance |
| field initializer 顺序与继承组合 | ES2022 | integration | 否 |  | P0 | G. field + inheritance + order |
| module export class 与 instanceof 跨模块组合 | Mixed | integration | 否 |  | P1 | N. module runtime |
| module import 后 static field 初始化时机组合 | Mixed | integration | 否 |  | P1 | N. module runtime |
| circular import 中 class evaluation 边界组合 | Mixed | integration | 否 |  | P1 | N. module runtime |
| interface 与 instanceof 组合 | ArkTS-specific | integration | 否 |  | P0 | L. type-system-only features |
| 回归：class constructor 普通调用未被 checker 拦截 | ArkTS-specific | regression | 否 |  | P0 | K. class cannot be called without new |
| 回归：prototype mutation 未被 checker 拦截 | ArkTS-specific | regression | 否 |  | P0 | C. prototype behavior |
| 回归：instanceof 非引用类型未被 checker 拦截 | ArkTS-specific | regression | 否 |  | P0 | E. instanceof |
| 回归：method extraction this 丢失导致 runtime error | Mixed | regression | 否 |  | P0 | F. method runtime behavior |
| 回归：field initializer 使用 this 导致 runtime error | Mixed | regression | 否 |  | P0 | G. field runtime behavior |
| 回归：static initialization 中断后 class 不可用 | ES2022 | regression | 否 |  | P0 | H. static runtime behavior |
