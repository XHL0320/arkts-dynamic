# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
|  |  |  | 待确认 | 待确认 |  |  |  |

<!-- CLASS_RUNTIME_BEHAVIOR_DETAILED_WATCH_V1 -->

# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
| ---------- | -------------------- | ------- | ---------- | ------ | ------ | ---- | ---- |
| class declaration runtime binding | ES2022 | ClassDefinitionEvaluation | 是 | 是 |  | class value 作为运行时构造器 | 适配为 ArkTS XTS runtime behavior 用例 |
| class constructor cannot be called without new | ES2022 | ClassConstructorCall | 是 | 是 |  | ArkTS 可能 checker 拦截而非 runtime TypeError | 适配：compile-time boundary 或 runtime TypeError 用例 |
| class constructor with new | ES2022 | NewExpression / Construct | 是 | 是 |  | new A() 创建实例 | 适配为正向用例 |
| class prototype property | ES2022 | ClassDefinitionEvaluation / prototype | 待确认 | 是 |  | ArkTS 是否暴露 prototype 待确认 | 记录差异或适配 |
| instance constructor property | ES2022 | ClassDefinitionEvaluation / constructor | 待确认 | 是 |  | instance.constructor 是否指向 class | 记录差异或适配 |
| method on prototype | ES2022 | ClassDefinitionEvaluation / method definition | 待确认 | 是 |  | instance method 是否位于 prototype | 记录差异或适配 |
| method this binding | ES2022 | Function call / this | 是 | 是 |  | 实例方法 this 为当前实例 | 适配为正向用例 |
| method extraction this undefined | ES2022 | Function call / strict this | 待确认 | 是 |  | method extraction 后 this 为 undefined | 适配为 runtime error 用例 |
| public instance fields | ES2022 | ClassFieldDefinitionEvaluation | 是 | 是 |  | 字段位于 instance own property | 适配为正向用例 |
| instance field initialization order | ES2022 | InitializeInstanceElements | 是 | 是 |  | 字段按声明顺序初始化 | 适配为顺序观测用例 |
| public static fields | ES2022 | ClassStaticFieldDefinitionEvaluation | 是 | 是 |  | static field 位于 constructor object | 适配为正向用例 |
| public static methods | ES2022 | ClassDefinitionEvaluation / static method | 是 | 是 |  | static method 位于 constructor object | 适配为正向用例 |
| static field initialization order | ES2022 | ClassStaticFieldDefinitionEvaluation | 是 | 是 |  | static field 按声明顺序初始化 | 适配为顺序观测用例 |
| static block | ES2022 | ClassStaticBlockDefinitionEvaluation | 待确认 | 待确认 |  | ArkTS 只支持单 static block，不支持多个 | 记录差异：单 static block 适配，多 static block 排除 |
| class inheritance prototype chain | ES2022 | ClassDefinitionEvaluation / extends | 是 | 是 |  | derived instance 原型链 | 适配为原型链验证用例 |
| derived class default constructor | ES2022 | Derived constructor / implicit super() | 是 | 是 |  | 派生类默认 constructor 自动 super() | 适配为正向用例 |
| derived constructor super call | ES2022 | Construct / super() | 是 | 是 |  | super() 执行 base 初始化 | 适配为正向用例 |
| this before super | ES2022 | ReferenceError if this before super() | 是 | 是 |  | ArkTS checker 前移为 compile-time error | 适配为 compile-time boundary 用例，同时记录 runtime 对应 |
| super() called twice | ES2022 | TypeError if super() twice | 是 | 是 |  | ArkTS 可能 checker 拦截 | 适配为 compile-time boundary 或 runtime 用例 |
| super.method property lookup | ES2022 | SuperProperty | 是 | 是 |  | super.method 从基类 prototype 查找 | 适配为正向用例 |
| super.method receiver | ES2022 | SuperProperty / this binding | 是 | 是 |  | super.method receiver 是当前 this | 适配为正向用例 |
| static super method | ES2022 | SuperProperty / static | 是 | 是 |  | static super.method 从基类 constructor object 查找 | 适配为正向用例 |
| instanceof class | ES2022 | InstanceofOperator | 是 | 是 |  | instanceof 运算符 | 适配为正向用例 |
| instanceof invalid right operand | ES2022 | InstanceofOperator / TypeError | 是 | 是 |  | ArkTS checker 拦截非引用类型 | 适配为 compile-time boundary 用例 |
| constructor abrupt completion | ES2022 | Construct / throw | 是 | 是 |  | constructor 抛异常 | 适配为 runtime error 用例 |
| field initializer abrupt completion | ES2022 | ClassFieldDefinitionEvaluation / throw | 是 | 是 |  | field initializer 抛异常 | 适配为 runtime error 用例 |
| static initializer abrupt completion | ES2022 | ClassStaticFieldDefinitionEvaluation / throw | 是 | 是 |  | static initializer 抛异常 | 适配为 runtime error 用例 |
| class evaluation abrupt completion | ES2022 | ClassDefinitionEvaluation / throw | 是 | 是 |  | class evaluation 失败 | 适配为 runtime error 用例 |
| class runtime behavior is ES2022 | ES2022 | Class definitions | 是 | 是 |  | ES2022 class runtime semantics | 适配为 ArkTS XTS runtime behavior 用例 |
| ArkTS static type rules are not from test262 | ArkTS-specific / TS-compatible | 不适用 | 不适用 |  | interface/implements/generic/abstract/readonly/private/protected 不属于 test262 | 不适用 test262，使用 ArkTS spec/checker 用例设计 |
| #private field | ES2022 | PrivateFieldDefinition | 不适用 | 不适用 |  | ArkTS 不支持 #private（arkts-no-private-identifiers） | 排除 |
| call/apply/bind | ES2022 | Function.prototype.call/apply/bind | 不适用 | 不适用 |  | ArkTS 不支持 call/apply/bind（compile-time error） | 排除 |
| prototype mutation | ES2022 | Prototype assignment/modification | 不适用 | 不适用 |  | ArkTS 不允许 prototype 动态修改（arkts-no-prototype-assignment） | 排除，记录为 ArkTS compile-time boundary |
| new.target | ES2022 | NewTarget | 不适用 | 不适用 |  | ArkTS 不支持 new.target（compile-time error） | 排除 |
| computed property name in class | ES2022 | ClassElementName / computed | 待确认 | 待确认 |  | ArkTS 是否支持 computed property name 待确认 | 记录差异或排除 |
| class expression | ES2022 | ClassExpression | 不适用 | 不适用 |  | ArkTS 不支持 class expression | 排除 |
