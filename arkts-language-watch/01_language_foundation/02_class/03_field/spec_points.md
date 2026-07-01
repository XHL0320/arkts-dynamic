# Spec Points

## Feature

Class Field Watch

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

<!-- CLASS_FIELD_DETAILED_WATCH_V1 -->

# Spec Points

## Feature

Class Field

## ECMA Baseline Status

ES2022 / ArkTS-specific

## Related Sources

- ECMAScript 2022 Class Fields
- ArkTS official language documentation
- ArkTS static language rules
- TypeScript class field compatibility reference
- test262 class-fields related cases

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|
| S001 | class body 中允许声明实例字段 | ECMAScript 2022 / ArkTS | 待确认 | 基础字段声明 |
| S002 | 字段可带显式类型注解 | ArkTS static rules | 是 | ArkTS 强类型重点 |
| S003 | 字段可带初始化表达式 | ECMAScript 2022 / ArkTS | 待确认 | 运行时初始化顺序需验证 |
| S004 | 字段可不带初始化表达式 | ArkTS static rules | 待确认 | 需确认是否要求 definite assignment |
| S005 | 允许声明多个实例字段 | ECMAScript 2022 / ArkTS | 待确认 | 多字段顺序场景 |
| S006 | static field 语法按 ArkTS 支持情况确认 | ECMAScript 2022 / ArkTS | 待确认 | static 交叉 |
| S007 | readonly field 语法为 ArkTS/TS-compatible 能力 | ArkTS / TS | 待确认 | 编译期限制 |
| S008 | public/private/protected 字段可见性按 ArkTS 规则解析 | ArkTS / TS | 待确认 | 非纯 ECMA |
| S009 | 字段名与方法名冲突处理需明确 | ArkTS static rules | 待确认 | 冲突场景 |
| S010 | 重复字段声明应被 parser/checker 处理 | ArkTS static rules | 待确认 | 编译负向 |
| S011 | computed field name 是否支持需确认 | ECMAScript 2022 | 待确认 | test262 映射差异 |
| S012 | ECMAScript #private field 是否支持需确认 | ECMAScript 2022 | 待确认 | ArkTS 通常使用 private |

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|
| T001 | 字段初始化值必须可赋值给字段声明类型 | ArkTS checker | 是 | P0 |
| T002 | 字段后续赋值必须可赋值给字段声明类型 | ArkTS checker | 是 | P0 |
| T003 | 未显式类型字段的推断规则需与 ArkTS checker 对齐 | ArkTS checker | 待确认 | 推断边界 |
| T004 | number 字段不能初始化为 string | ArkTS checker | 是 | fail_compile |
| T005 | string 字段不能赋值 boolean | ArkTS checker | 是 | fail_compile |
| T006 | boolean 字段初始化为 boolean literal 通过 | ArkTS checker | 是 | pass |
| T007 | bigint 字段与 number 不应隐式混用 | ArkTS checker / ECMA | 待确认 | 边界 |
| T008 | nullable 字段必须显式包含 null/undefined 能力 | ArkTS checker | 待确认 | null safety |
| T009 | union 字段赋值应限制在 union 成员内 | ArkTS checker | 待确认 | TS-compatible |
| T010 | array 字段元素类型应受检查 | ArkTS checker | 是 | P0 |
| T011 | object 字段结构兼容规则需确认 | ArkTS checker | 待确认 | 结构/名义边界 |
| T012 | class 类型字段应接受对应实例 | ArkTS checker | 是 | class as type |
| T013 | interface 类型字段应检查成员完整性 | ArkTS checker | 是 | implements 交叉 |
| T014 | private 字段影响 class 类型兼容 | ArkTS checker / TS reference | 待确认 | 可见性兼容 |
| T015 | protected 字段影响 class 类型兼容 | ArkTS checker / TS reference | 待确认 | 可见性兼容 |
| T016 | readonly 字段 constructor 外赋值应报错 | ArkTS checker / TS reference | 待确认 | readonly |
| T017 | static 字段不属于实例类型 | ArkTS checker / ECMA | 待确认 | static side |
| T018 | 字段实现 interface property 时类型必须兼容 | ArkTS checker | 是 | integration |

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|
| R001 | 实例字段初始化发生在对象构造期间 | ECMAScript 2022 | 待确认 | 初始化顺序 |
| R002 | 字段初始化表达式按声明顺序求值 | ECMAScript 2022 | 待确认 | 顺序风险 |
| R003 | 字段初始化表达式可读取前面字段 | ECMAScript 2022 | 待确认 | boundary |
| R004 | 字段初始化表达式读取后面字段的行为需确认 | ECMAScript 2022 | 待确认 | undefined/compile boundary |
| R005 | 字段初始化表达式中的 this 指向当前实例 | ECMAScript 2022 | 待确认 | this |
| R006 | 基类字段初始化早于基类 constructor 执行 | ECMAScript 2022 | 待确认 | inheritance |
| R007 | 派生类字段初始化发生在 super() 之后 | ECMAScript 2022 | 待确认 | super |
| R008 | 字段存在于实例对象上而非 prototype 上 | ECMAScript 2022 | 待确认 | runtime behavior |
| R009 | static 字段存在于 constructor 对象上 | ECMAScript 2022 | 待确认 | static side |
| R010 | 字段遮蔽不应改变基类 prototype 方法 | ECMAScript 2022 / ArkTS | 待确认 | inheritance |
| R011 | class cannot be called without new 的错误归入 class runtime | ECMAScript 2022 | 待确认 | TypeError |
| R012 | 运行时动态访问未声明字段是否被 ArkTS 限制需确认 | ArkTS runtime | 待确认 | dynamic boundary |

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例描述 | 备注 |
|---|---|---|---|---|
| C001 | 字段初始化值与声明类型不匹配 | checker | class A { x: number = 's' } | P0 |
| C002 | 字段赋值类型不匹配 | checker | a.x = 's' where x:number | P0 |
| C003 | 重复字段声明 | parser/checker | class A { x: number; x: number } | P0 |
| C004 | 字段与方法同名冲突 | checker | class A { x: number; x(){} } | P0 |
| C005 | 字段与 getter/setter 同名冲突 | checker | class A { x: number; get x(){} } | P1 |
| C006 | 未声明字段访问 | checker | a.missing | P0 |
| C007 | 动态属性访问字段，如 a['x']，若 ArkTS 禁止 | checker | a['x'] | P1 |
| C008 | readonly 字段 constructor 外赋值 | checker | a.ro = 1 | P0 |
| C009 | private 字段外部访问 | checker | a.privateField | P0 |
| C010 | protected 字段外部访问 | checker | a.protectedField | P0 |
| C011 | static 字段通过实例访问，如不允许 | checker | a.count | P1 |
| C012 | instance 字段通过 class 名访问 | checker | A.x | P1 |
| C013 | 字段实现 interface property 类型不兼容 | checker | class A implements I | P0 |
| C014 | 缺少 interface property | checker | class A implements I without p | P0 |
| C015 | generic class 字段赋值不满足 T | checker | Box<T>.value = wrong | P1 |
| C016 | 字段初始化表达式引用不允许的 this/super | checker | field initializer super boundary | P1 |
| C017 | 字段类型使用 unsupported TS syntax | checker | mapped/conditional type field | P2 |

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例描述 | 备注 |
|---|---|---|---|---|
| E001 | 派生类字段初始化依赖 super 前 this 规则 | ReferenceError/TypeError | derived field/super boundary | ECMA runtime 边界 |
| E002 | 字段初始化表达式调用方法并抛出异常 | Error | field = this.init() | 运行时传播 |
| E003 | 字段初始化表达式访问动态 undefined 值属性 | TypeError | field = maybeUndefined.x | 动态场景 |
| E004 | class constructor 不通过 new 调用 | TypeError | A() | class runtime behavior |
| E005 | 字段初始化表达式中 super.method 抛错 | Error | field = super.m() | 继承交叉 |
| E006 | 运行时对象被冻结后字段赋值 | TypeError | Object.freeze(a); a.x=1 in strict | 非主要 ArkTS 静态场景 |

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
|---|---|---|---|---|
| 字段无初始化 | ECMA 运行时默认为 undefined | TS strictPropertyInitialization 可报错 | ArkTS 需确认是否要求初始化 | P0 |
| computed field name | ES2022 支持 | TS 支持 | ArkTS 支持待确认 | test262 差异 |
| #private field | ES2022 支持 | TS 支持 | ArkTS 可能使用 private 关键字 | 不直接视为必测 |
| readonly field | ECMA 无 readonly | TS 编译期限制 | ArkTS-specific/TS-compatible | 编译期 |
| private/protected field | ECMA #private 不同 | TS 关键字可见性 | ArkTS 规则待确认 | 兼容边界 |
| object literal to class | ECMA 无静态类型 | TS 结构兼容 | ArkTS 结构/名义待确认 | 类型系统 |
| static block | ES2022 支持 | TS 支持 | ArkTS 支持待确认 | 不纳入默认必过 |
| field initializer order | ES2022 定义顺序 | TS 遵循 emit 语义 | ArkRuntime 需验证 | 运行时 |
| 动态属性访问 | ECMA 允许 | TS 可允许 | ArkTS 可能禁止 | 静态前移 |

## Open Questions

- ArkTS 是否要求所有非可空实例字段在声明处或 constructor 中初始化？
- 未初始化字段在 ArkRuntime 中是否会默认得到 undefined，还是被 checker 前移拦截？
- ArkTS 是否支持 ECMAScript computed public field name？
- ArkTS 是否支持 ECMAScript #private field，还是仅支持 private 关键字？
- static block 与 static field 初始化顺序是否完整支持 ES2022？
- private/protected 字段是否影响 class 之间的结构兼容？
- object literal 是否可以赋值给含实例字段的 class 类型？
- 字段初始化表达式是否允许调用实例方法和访问 this？
- 字段初始化表达式引用后序字段时 checker 是否报错？
- readonly field 是纯编译期限制还是运行时也有属性描述符约束？
