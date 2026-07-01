# Spec Points

## Feature

Constructor Watch

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

<!-- CLASS_CONSTRUCTOR_DETAILED_WATCH_V1 -->

# Spec Points

## Feature

Class Constructor

## ECMA Baseline Status

ES2022 / ArkTS-specific

## Related Sources

- ECMAScript 2022 Class Definitions
- ECMAScript 2022 Derived Class Constructor Semantics
- ArkTS official language documentation
- ArkTS static language rules
- TypeScript constructor compatibility reference
- test262 class constructor related cases

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|
| S001 | class body 中允许声明 constructor | ECMAScript 2022 / ArkTS | 待确认 | 基础构造函数 |
| S002 | constructor 名称固定且不能带返回类型标注 | ECMAScript 2022 / ArkTS | 待确认 | 返回类型限制 |
| S003 | constructor 参数可带类型注解 | ArkTS static rules | 是 | 强类型参数 |
| S004 | constructor 可声明无参形式 | ECMAScript 2022 / ArkTS | 待确认 | 无参 |
| S005 | constructor 可声明多个参数 | ECMAScript 2022 / ArkTS | 待确认 | 多参 |
| S006 | 可选 constructor 参数按 ArkTS 支持确认 | ArkTS / TS-compatible | 待确认 | optional |
| S007 | rest constructor 参数按 ArkTS 支持确认 | ECMAScript 2022 / ArkTS | 待确认 | rest |
| S008 | 默认 constructor 参数按 ArkTS 支持确认 | ECMAScript 2022 / ArkTS | 待确认 | default parameter |
| S009 | constructor overload 按 ArkTS 支持确认 | ArkTS / TS-compatible | 待确认 | overload |
| S010 | constructor visibility 按 ArkTS 支持确认 | ArkTS / TS-compatible | 待确认 | public/private/protected |
| S011 | 派生类 constructor 中允许 super() 调用 | ECMAScript 2022 | 待确认 | derived |
| S012 | constructor 不能声明为 static/async/generator | ECMAScript 2022 / ArkTS | 待确认 | 语法负向 |
| S013 | abstract class 可声明 constructor | ArkTS / TS-compatible | 待确认 | abstract 交叉 |
| S014 | generic class constructor 可使用类型参数 T | ArkTS / TS-compatible | 待确认 | generic |

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|
| T001 | new 调用实参必须可赋值给 constructor 参数类型 | ArkTS checker | 是 | P0 |
| T002 | new 调用参数个数必须满足 constructor 签名 | ArkTS checker | 待确认 | arity |
| T003 | constructor 可选参数未传值时通过 | ArkTS / TS-compatible | 待确认 | optional |
| T004 | constructor rest 参数接收多个同类型实参 | ArkTS / TS-compatible | 待确认 | rest |
| T005 | constructor 默认参数值必须可赋值给参数类型 | ArkTS checker | 待确认 | default |
| T006 | constructor 参数为 class 类型时要求对应实例 | ArkTS checker | 是 | class type |
| T007 | constructor 参数为 interface 类型时要求成员完整 | ArkTS checker | 是 | interface |
| T008 | constructor 参数为 array 类型时检查元素类型 | ArkTS checker | 是 | array |
| T009 | constructor 参数为 union/null 时按 ArkTS 支持确认 | ArkTS checker | 待确认 | nullable |
| T010 | constructor 中字段赋值必须兼容字段类型 | ArkTS checker | 是 | field init |
| T011 | readonly 字段可否在 constructor 中赋值按 ArkTS 规则确认 | ArkTS / TS-compatible | 待确认 | readonly |
| T012 | constructor 外 readonly 字段赋值应报错 | ArkTS checker | 待确认 | readonly |
| T013 | 派生类 super() 参数需匹配基类 constructor | ArkTS checker | 待确认 | super args |
| T014 | 派生类 constructor 中 super() 前 this 使用应报错或前移 | ArkTS checker | 待确认 | this before super |
| T015 | abstract class constructor 可被子类 super() 调用 | ArkTS checker | 待确认 | abstract |
| T016 | abstract class 禁止直接 new | ArkTS checker | 是 | abstract |
| T017 | constructor 不参与 interface implements 成员检查 | ArkTS checker | 待确认 | interface |
| T018 | generic class constructor 参数 T 与字段 T 保持一致 | ArkTS checker | 待确认 | generic |
| T019 | constructor overload 声明必须与实现签名兼容 | ArkTS / TS-compatible | 待确认 | overload |
| T020 | new 调用必须匹配某个 constructor overload | ArkTS / TS-compatible | 待确认 | overload call |
| T021 | private constructor 外部 new 应报错 | ArkTS / TS-compatible | 待确认 | visibility |
| T022 | protected constructor 外部 new 应报错但子类可 super() | ArkTS / TS-compatible | 待确认 | visibility |

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|
| R001 | 默认 constructor 在无显式 constructor 时创建 | ECMAScript 2022 | 待确认 | default constructor |
| R002 | base constructor 使用 new 创建实例并初始化字段 | ECMAScript 2022 | 待确认 | base class |
| R003 | derived default constructor 转发参数到 super(...args) | ECMAScript 2022 | 待确认 | derived default |
| R004 | derived constructor 必须先完成 super() 才能访问 this | ECMAScript 2022 | 待确认 | this before super |
| R005 | super() 调用完成基类字段与 constructor 初始化 | ECMAScript 2022 | 待确认 | init order |
| R006 | 派生类字段初始化发生在 super() 之后 | ECMAScript 2022 | 待确认 | derived fields |
| R007 | constructor 返回 primitive 在 base class 中通常被忽略 | ECMAScript 2022 | 待确认 | return primitive |
| R008 | constructor 返回 object 在 base class 中可替换 this | ECMAScript 2022 | 待确认 | return object |
| R009 | derived constructor 返回 object/primitive 行为需按 ECMA 确认 | ECMAScript 2022 | 待确认 | derived return |
| R010 | class constructor 普通调用抛 TypeError | ECMAScript 2022 | 待确认 | runtime TypeError |
| R011 | 重复 super() 调用抛运行时异常 | ECMAScript 2022 | 待确认 | runtime ReferenceError/TypeError |
| R012 | constructor 抛异常时对象初始化中断 | ECMAScript 2022 | 待确认 | abrupt completion |
| R013 | constructor property 指向 class constructor | ECMAScript 2022 | 待确认 | prototype |
| R014 | new.target / Reflect.construct 支持情况需确认 | ECMAScript 2022 | 待确认 | 差异 |

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例描述 | 备注 |
|---|---|---|---|---|
| C001 | new 调用参数类型不匹配 | checker | new A('s') where constructor(number) | P0 |
| C002 | new 调用参数个数不足 | checker | new A() where constructor(x:number) | P0 |
| C003 | new 调用参数个数过多 | checker | new A(1,2) where constructor(x:number) | P0 |
| C004 | constructor 参数类型省略如 ArkTS 不允许 | checker | constructor(x) {} | P1 |
| C005 | constructor 默认参数值类型不匹配 | checker | constructor(x:number='s') | P1 |
| C006 | rest 参数不是最后一个参数 | parser/checker | constructor(...xs:number[], y:number) | P1 |
| C007 | constructor 标注返回类型 | parser/checker | constructor(): void {} | P0 |
| C008 | constructor 声明为 static | parser/checker | static constructor() {} | P0 |
| C009 | constructor 声明为 async/generator | parser/checker | async constructor() | P1 |
| C010 | constructor 中字段赋值类型错误 | checker | this.x='s' where x:number | P0 |
| C011 | readonly 字段 constructor 外赋值 | checker | a.ro=1 | P0 |
| C012 | 派生类 constructor 未调用 super() | checker | class D extends B { constructor(){} } | P0 |
| C013 | 派生类 constructor super() 前访问 this | checker | this.x before super() | P0 |
| C014 | super() 参数类型不匹配 | checker | super('s') where Base(number) | P0 |
| C015 | super() 参数个数不匹配 | checker | super() where Base(number) | P0 |
| C016 | constructor overload 实现签名不兼容 | checker | overload implementation mismatch | P0 |
| C017 | new 调用无匹配 constructor overload | checker | new A(true) | P0 |
| C018 | private constructor 外部 new | checker | new A() outside | P1 |
| C019 | protected constructor 外部 new | checker | new A() outside | P1 |
| C020 | abstract class 直接 new | checker | new AbstractBase() | P0 |
| C021 | generic constructor 参数不满足约束 | checker | new Box<Constrained>(bad) | P1 |
| C022 | constructor 中访问未声明字段 | checker | this.missing | P0 |

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例描述 | 备注 |
|---|---|---|---|---|
| E001 | class constructor 普通函数调用 | TypeError | A() | ECMA runtime |
| E002 | derived constructor this before super 未被静态拦截时 | ReferenceError | this.x before super() | runtime boundary |
| E003 | super() 调用两次 | ReferenceError/TypeError | super(); super(); | ECMA runtime |
| E004 | derived constructor return primitive | TypeError | return 1 in derived constructor | ECMA runtime |
| E005 | constructor 抛出异常 | Error | constructor(){ throw new Error() } | abrupt completion |
| E006 | super() 返回非法值 | TypeError | base constructor returns invalid value | 边界 |
| E007 | Reflect.construct 使用 class constructor 的边界 | TypeError | Reflect.construct target/newTarget invalid | 支持待确认 |

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
|---|---|---|---|---|
| constructor overload | ECMA 无 overload | TS 支持 | ArkTS 支持待确认 | TS-compatible |
| constructor visibility | ECMA 无 visibility | TS 支持 | ArkTS 支持待确认 | ArkTS-specific |
| constructor return type annotation | ECMA 无类型 | TS 禁止 | ArkTS 预期禁止 | parser/checker |
| constructor return object | base class 可替换 this | TS 允许但类型有限制 | ArkTS 行为待确认 | runtime |
| derived return primitive | ECMA 抛 TypeError | TS 可静态限制 | ArkTS 前移待确认 | runtime/static |
| new.target | ES2022 支持 | TS 支持 | ArkTS 支持待确认 | 不要默认必测 |
| Reflect.construct | ES2022 支持 | TS 支持 | ArkTS 支持待确认 | runtime |
| private/protected constructor | ECMA 无 | TS 支持 | ArkTS 支持待确认 | visibility |
| constructor parameter property | ECMA 无 | TS 支持 | ArkTS 是否支持待确认 | TS-compatible |

## Open Questions

- ArkTS 是否支持 constructor overload？
- ArkTS 是否支持 private/protected constructor？
- ArkTS 是否允许 constructor 参数省略类型？
- ArkTS 是否支持 constructor rest/default/optional 参数的全部组合？
- ArkTS 是否禁止 constructor 返回类型标注？
- 派生类 this before super 是 checker 报错还是运行时异常？
- super() 调用多次是否能被 checker 静态识别？
- constructor return object/primitive 是否完全按 ES2022 执行？
- new.target 和 Reflect.construct 是否在 ArkTS 中支持？
- abstract class constructor 与子类 super 调用规则是否与 TS 一致？
