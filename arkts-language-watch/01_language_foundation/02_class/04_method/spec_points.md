# Spec Points

## Feature

Class Method Watch

## ECMA Baseline Status

ES2022 / ArkTS-specific

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

<!-- CLASS_METHOD_DETAILED_WATCH_V1 -->

# Spec Points

## Feature

Class Method

## ECMA Baseline Status

ES2022 / ArkTS-specific

## Related Sources

- ECMAScript 2022 Method Definitions
- ECMAScript 2022 Class Definitions
- ArkTS official language documentation
- ArkTS static language rules
- TypeScript class method compatibility reference
- test262 method-definition related cases

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|
| S001 | class body 中允许声明实例方法 | ECMAScript 2022 / ArkTS | 待确认 | 基础方法声明 |
| S002 | 方法参数可带显式类型注解 | ArkTS static rules | 是 | 强类型重点 |
| S003 | 方法返回值可带显式类型注解 | ArkTS static rules | 是 | 返回检查 |
| S004 | 方法可返回 void | ArkTS / TS-compatible | 待确认 | void 边界 |
| S005 | 方法可声明多个参数 | ECMAScript 2022 / ArkTS | 待确认 | 参数个数检查 |
| S006 | 可选参数方法按 ArkTS 支持情况确认 | ArkTS / TS-compatible | 待确认 | optional |
| S007 | rest 参数方法按 ArkTS 支持情况确认 | ECMAScript 2022 / ArkTS | 待确认 | rest |
| S008 | 默认参数方法按 ArkTS 支持情况确认 | ECMAScript 2022 / ArkTS | 待确认 | default parameter |
| S009 | 方法重载签名与实现签名语法按 ArkTS 支持确认 | ArkTS / TS-compatible | 待确认 | overload |
| S010 | static method 语法按 ArkTS 支持确认 | ECMAScript 2022 / ArkTS | 待确认 | static |
| S011 | getter/setter 语法按 ArkTS 支持确认 | ECMAScript 2022 / ArkTS | 待确认 | accessor |
| S012 | private/protected/public method 语法按 ArkTS 规则解析 | ArkTS / TS-compatible | 待确认 | visibility |
| S013 | abstract method 语法按 ArkTS 支持确认 | ArkTS / TS-compatible | 待确认 | abstract |
| S014 | computed method name 是否支持需确认 | ECMAScript 2022 | 待确认 | test262 差异 |

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|
| T001 | 方法调用实参必须可赋值给参数类型 | ArkTS checker | 是 | P0 |
| T002 | 方法返回表达式必须可赋值给返回类型 | ArkTS checker | 是 | P0 |
| T003 | 非 void 方法所有路径应返回兼容值 | ArkTS checker | 待确认 | 控制流 |
| T004 | void 方法返回值边界需按 ArkTS 规则确认 | ArkTS checker | 待确认 | void |
| T005 | 参数个数不足应报错或按 optional 规则处理 | ArkTS checker | 待确认 | arity |
| T006 | 参数个数过多应报错或按 ArkTS 调用规则处理 | ArkTS checker | 待确认 | arity |
| T007 | 可选参数必须在必选参数之后 | ArkTS / TS-compatible | 待确认 | optional |
| T008 | rest 参数必须位于最后 | ArkTS / TS-compatible | 待确认 | rest |
| T009 | 默认参数类型必须与声明类型兼容 | ArkTS checker | 待确认 | default |
| T010 | class 类型参数要求传入对应实例 | ArkTS checker | 是 | class type |
| T011 | interface 类型参数要求成员完整 | ArkTS checker | 是 | interface |
| T012 | array 类型参数检查元素类型 | ArkTS checker | 是 | array |
| T013 | union/null 参数按 ArkTS null safety 与 union 支持确认 | ArkTS checker | 待确认 | nullable |
| T014 | 方法返回 class 类型需返回对应实例 | ArkTS checker | 是 | return class |
| T015 | 方法返回 interface 类型需返回满足成员对象 | ArkTS checker | 是 | return interface |
| T016 | generic method 返回 T 与参数 T 保持一致 | ArkTS checker | 待确认 | generic |
| T017 | 重载声明必须与实现签名兼容 | ArkTS / TS-compatible | 待确认 | overload |
| T018 | 调用重载必须匹配至少一个 overload 签名 | ArkTS / TS-compatible | 待确认 | overload call |
| T019 | 覆盖基类方法的参数/返回类型必须兼容 | ArkTS checker | 待确认 | override |
| T020 | 覆盖方法可见性不能收窄 | ArkTS checker | 待确认 | visibility |
| T021 | private/protected 方法影响 class 类型兼容 | ArkTS / TS-compatible | 待确认 | compatibility |
| T022 | static method 不属于实例类型 | ArkTS checker / ECMA | 待确认 | static side |

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|
| R001 | 实例方法定义在 prototype 上 | ECMAScript 2022 | 待确认 | method on prototype |
| R002 | 方法调用时 this 由调用表达式决定 | ECMAScript 2022 | 待确认 | this binding |
| R003 | 方法提取后调用可能丢失 this | ECMAScript 2022 | 待确认 | runtime TypeError 边界 |
| R004 | static method 定义在 constructor 对象上 | ECMAScript 2022 | 待确认 | static |
| R005 | class method 不能作为 constructor 使用 | ECMAScript 2022 | 待确认 | TypeError |
| R006 | super.method 通过基类 prototype 查找方法 | ECMAScript 2022 | 待确认 | super |
| R007 | getter 调用作为属性读取触发 | ECMAScript 2022 | 待确认 | accessor |
| R008 | setter 调用作为属性写入触发 | ECMAScript 2022 | 待确认 | accessor |
| R009 | 继承中派生类方法覆盖 prototype 上同名方法 | ECMAScript 2022 | 待确认 | override |
| R010 | static method 可被派生类 constructor 继承访问 | ECMAScript 2022 | 待确认 | static inheritance |
| R011 | 方法 name 属性按定义名称设置 | ECMAScript 2022 | 待确认 | test262 |
| R012 | async/generator method 支持情况需确认 | ECMAScript 2022 | 待确认 | 差异记录 |

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例描述 | 备注 |
|---|---|---|---|---|
| C001 | 方法调用参数类型不匹配 | checker | a.m('s') where m(number) | P0 |
| C002 | 方法调用参数个数不足 | checker | a.m() where m(x:number) | P0 |
| C003 | 方法调用参数个数过多 | checker | a.m(1,2) where m(x:number) | P0 |
| C004 | 方法返回值类型不匹配 | checker | m(): number { return 's' } | P0 |
| C005 | 非 void 方法缺少返回值 | checker | m(): number {} | P0 |
| C006 | 部分控制流路径缺少返回值 | checker | if branch return only | P0 |
| C007 | 未声明方法调用 | checker | a.missing() | P0 |
| C008 | private method 外部访问 | checker | a.privateMethod() | P0 |
| C009 | protected method 外部访问 | checker | a.protectedMethod() | P0 |
| C010 | static method 通过实例访问 | checker | a.staticMethod() | P1 |
| C011 | instance method 通过 class 名访问 | checker | A.method() | P1 |
| C012 | static method 访问 instance field | checker | static m(){ this.x } | P1 |
| C013 | 方法与字段同名冲突 | checker | class A { x:number; x(){} } | P0 |
| C014 | 重复方法声明冲突 | checker | class A { m(){} m(){} } | P1 |
| C015 | getter 参数非空 | parser/checker | get x(v) {} | P1 |
| C016 | setter 参数个数不是一个 | parser/checker | set x() {} | P1 |
| C017 | 重载实现签名不兼容 | checker | overload implementation mismatch | P0 |
| C018 | 重载调用无匹配签名 | checker | m(true) with number/string overload | P0 |
| C019 | 覆盖方法返回类型不兼容 | checker | Derived.m(): string vs Base.m(): number | P0 |
| C020 | 覆盖方法可见性收窄 | checker | public -> private | P0 |
| C021 | class implements interface 缺少 method | checker | implements I without m | P0 |
| C022 | generic method 类型约束不满足 | checker | m<T extends X>(bad) | P1 |

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例描述 | 备注 |
|---|---|---|---|---|
| E001 | 方法提取后调用导致 this 为 undefined | TypeError | const f = a.m; f() | 动态 this 边界 |
| E002 | class method 作为 constructor 使用 | TypeError | new a.m() | ECMA runtime |
| E003 | super.method 不存在时调用 | TypeError | super.missing() | 继承边界 |
| E004 | getter 执行过程中抛出异常 | Error | get x(){ throw ... } | 运行时传播 |
| E005 | setter 执行过程中抛出异常 | Error | set x(v){ throw ... } | 运行时传播 |
| E006 | 非法 receiver 调用内建方法包装在 class method 中 | TypeError | method calls builtin with wrong this | 动态边界 |
| E007 | 方法中访问动态 undefined 字段 | TypeError | this.maybe.x | 动态数据边界 |

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
|---|---|---|---|---|
| getter/setter | ES2022 支持 accessor | TS 支持 | ArkTS 支持待确认 | 如不支持记录 Unsupported |
| method overload | ECMA 无静态 overload | TS 支持 | ArkTS 支持待确认 | ArkTS-specific/TS-compatible |
| async method | ES2022 支持 | TS 支持 | ArkTS 支持待确认 | 按 async/await 能力确认 |
| generator method | ES2022 支持 | TS 支持 | ArkTS 可能不支持 | 不要列为默认必过 |
| computed method name | ES2022 支持 | TS 支持 | ArkTS 支持待确认 | test262 差异 |
| private method #m | ES2022 支持 | TS 支持 | ArkTS 可能使用 private 关键字 | 差异记录 |
| method extraction this | ECMA 运行时 this 丢失 | TS 可通过 noImplicitThis 辅助 | ArkTS 是否静态拦截待确认 | runtime/static boundary |
| static this | ECMA this 为 constructor | TS 支持 static this 类型 | ArkTS 支持待确认 | static side |
| visibility override | ECMA 无 visibility | TS 编译期限制 | ArkTS-specific | checker |

## Open Questions

- ArkTS 是否完整支持 method overload 声明和实现签名？
- ArkTS 是否支持 getter/setter，若支持类型规则是否与 TS 一致？
- ArkTS 是否支持 computed method name？
- ArkTS 是否支持 ECMAScript #private method，还是仅支持 private 关键字？
- ArkTS 是否支持 async method 和 generator method？
- 方法提取后 this 丢失是否会被 checker 前移拦截？
- static method 中 this 的类型是否表示 constructor/static side？
- override 关键字是否支持或是否要求？
- private/protected method 是否影响 class 结构兼容？
- rest/default/optional 参数组合在 class method 中的限制是什么？
