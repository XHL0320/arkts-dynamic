# Spec Points

## Feature

Class Inheritance Watch

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

<!-- CLASS_INHERITANCE_DETAILED_WATCH_V1 -->

# Spec Points

## Feature

Class Inheritance

## ECMA Baseline Status

ES2022 / ArkTS-specific

## Related Sources

- ECMAScript 2022 Class Definitions
- ECMAScript 2022 Extends and Derived Class Semantics
- ArkTS official language documentation
- ArkTS static language rules
- TypeScript inheritance compatibility reference
- test262 class inheritance related cases

## Syntax Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|
| S001 | class 可通过 extends 声明继承单个基类 | ECMAScript 2022 / ArkTS | 待确认 | 基础继承 |
| S002 | ArkTS class 继承规则为单继承 | ArkTS static rules | 是 | 禁止多继承 |
| S003 | extends 后应为可构造 class/constructor | ECMAScript 2022 / ArkTS | 待确认 | 动态表达式边界 |
| S004 | extends abstract class 按 ArkTS 支持确认 | ArkTS / TS-compatible | 待确认 | abstract 交叉 |
| S005 | extends generic class 按 ArkTS 泛型规则解析 | ArkTS / TS-compatible | 待确认 | generic |
| S006 | 派生类可声明新增字段和方法 | ECMAScript 2022 / ArkTS | 待确认 | 成员扩展 |
| S007 | 派生类可覆盖基类方法 | ECMAScript 2022 / ArkTS | 待确认 | override |
| S008 | 派生类 constructor 可显式调用 super() | ECMAScript 2022 | 待确认 | constructor 交叉 |
| S009 | 循环继承应被 parser/checker 识别或运行时报错 | ECMAScript 2022 / ArkTS | 待确认 | 循环 |
| S010 | 多层继承链语法应被支持 | ECMAScript 2022 / ArkTS | 待确认 | 继承链 |
| S011 | 继承表达式是否支持需确认 | ECMAScript 2022 | 待确认 | ArkTS 可能限制 |
| S012 | extends null 是否支持需确认 | ECMAScript 2022 | 待确认 | 差异记录 |

## Type Checking Rules

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|
| T001 | 派生类实例可赋值给基类类型 | ArkTS checker | 是 | P0 |
| T002 | 基类实例不能赋值给派生类类型 | ArkTS checker | 是 | P0 |
| T003 | 派生类继承基类 public 字段 | ArkTS checker | 是 | field |
| T004 | 派生类继承基类 public 方法 | ArkTS checker | 是 | method |
| T005 | 派生类可访问基类 protected 成员 | ArkTS / TS-compatible | 待确认 | visibility |
| T006 | 派生类不可直接访问基类 private 成员 | ArkTS / TS-compatible | 待确认 | visibility |
| T007 | 字段遮蔽类型兼容规则需确认 | ArkTS checker | 待确认 | field shadow |
| T008 | 覆盖方法参数类型必须兼容 | ArkTS checker | 待确认 | override |
| T009 | 覆盖方法返回类型必须兼容 | ArkTS checker | 待确认 | override |
| T010 | 覆盖方法可见性不能收窄 | ArkTS / TS-compatible | 待确认 | visibility |
| T011 | static 成员继承在 static side 上检查 | ArkTS checker / ECMA | 待确认 | static |
| T012 | readonly 成员继承后写入限制保持 | ArkTS / TS-compatible | 待确认 | readonly |
| T013 | 派生类 constructor super 参数需匹配基类 constructor | ArkTS checker | 待确认 | constructor |
| T014 | 派生类默认 constructor 参数转发规则需确认 | ArkTS checker / ECMA | 待确认 | default ctor |
| T015 | 普通 class 继承 abstract class 时必须实现 abstract method | ArkTS checker | 是 | abstract |
| T016 | abstract method 实现签名必须兼容 | ArkTS checker | 是 | abstract |
| T017 | 基类已实现 interface 成员时派生类继承后满足 interface | ArkTS checker | 待确认 | interface |
| T018 | private/protected 成员不能满足 public interface 成员 | ArkTS checker | 待确认 | interface |
| T019 | generic 派生类向基类传递泛型参数需满足约束 | ArkTS checker | 待确认 | generic |
| T020 | generic override 签名需保持兼容 | ArkTS checker | 待确认 | generic override |
| T021 | 循环继承应作为编译期错误处理 | ArkTS checker | 待确认 | cycle |
| T022 | 禁止多继承应作为语法/检查错误处理 | ArkTS checker | 是 | multi inheritance |
| T023 | 继承非 class / 非 constructor 是否被静态限制需确认 | ArkTS checker | 待确认 | dynamic extends |

## Runtime Semantics

| 编号 | 规则 | 来源 | 是否 ArkTS 支持 | 备注 |
|---|---|---|---|---|
| R001 | extends 建立派生类 prototype chain | ECMAScript 2022 | 待确认 | prototype |
| R002 | 派生类 constructor 的 [[Prototype]] 指向基类 constructor | ECMAScript 2022 | 待确认 | static inheritance |
| R003 | 派生类 prototype 的 [[Prototype]] 指向基类 prototype | ECMAScript 2022 | 待确认 | instance inheritance |
| R004 | 派生类实例 instanceof 派生类和基类均为 true | ECMAScript 2022 | 待确认 | instanceof |
| R005 | 方法覆盖后通过 prototype 动态分派派生类实现 | ECMAScript 2022 | 待确认 | dispatch |
| R006 | 基类字段初始化早于基类 constructor | ECMAScript 2022 | 待确认 | init order |
| R007 | 派生类字段初始化发生在 super() 之后 | ECMAScript 2022 | 待确认 | init order |
| R008 | 派生类默认 constructor 调用 super(...args) | ECMAScript 2022 | 待确认 | default ctor |
| R009 | super.method 访问基类 prototype 方法 | ECMAScript 2022 | 待确认 | super |
| R010 | static 成员可经派生类 constructor 继承访问 | ECMAScript 2022 | 待确认 | static |
| R011 | extends 非 constructor 在运行时抛 TypeError | ECMAScript 2022 | 待确认 | dynamic extends |
| R012 | 派生类初始化失败会中断对象构造 | ECMAScript 2022 | 待确认 | abrupt completion |
| R013 | 基类 constructor 中调用可覆盖方法的分派行为需验证 | ECMAScript 2022 | 待确认 | virtual dispatch boundary |

## Compile-Time Error Conditions

| 编号 | 错误条件 | parser/checker | 代表用例描述 | 备注 |
|---|---|---|---|---|
| C001 | 多继承语法 | parser/checker | class C extends A, B | P0 |
| C002 | class 继承自身 | checker | class A extends A | P0 |
| C003 | 循环继承 | checker | A extends B, B extends A | P0 |
| C004 | extends 非 class / 非 constructor 如可静态识别 | checker | class A extends 1 | P0 |
| C005 | 基类实例赋值给派生类类型 | checker | let d: D = new B() | P0 |
| C006 | 派生类直接访问基类 private 字段 | checker | this.privateField | P0 |
| C007 | 外部访问 protected 成员 | checker | d.protectedField | P0 |
| C008 | 字段遮蔽类型不兼容 | checker | Derived.x:string vs Base.x:number | P0 |
| C009 | 覆盖方法参数类型不兼容 | checker | Derived.m(string) vs Base.m(number) | P0 |
| C010 | 覆盖方法返回类型不兼容 | checker | Derived.m():string vs Base.m():number | P0 |
| C011 | 覆盖方法可见性收窄 | checker | public -> protected/private | P0 |
| C012 | static 与 instance method 覆盖冲突 | checker | static m vs instance m | P1 |
| C013 | 派生类 constructor 未调用 super() | checker | constructor(){} | P0 |
| C014 | this before super | checker | this.x before super() | P0 |
| C015 | super() 参数类型不匹配 | checker | super('s') where Base(number) | P0 |
| C016 | super() 参数个数不足 | checker | super() where Base(number) | P0 |
| C017 | super() 参数个数过多 | checker | super(1,2) where Base(number) | P0 |
| C018 | 普通类继承 abstract class 未实现 abstract method | checker | class D extends A | P0 |
| C019 | abstract method 实现签名不兼容 | checker | wrong override | P0 |
| C020 | private/protected 成员满足 public interface 成员 | checker | implements I | P1 |
| C021 | generic 继承中类型参数不满足约束 | checker | class D<T> extends Base<T> | P1 |
| C022 | generic override 签名不兼容 | checker | generic override mismatch | P1 |
| C023 | 继承 null 如 ArkTS 不支持 | checker | class A extends null | P2 |

## Runtime Error Conditions

| 编号 | 错误条件 | Error 类型 | 代表用例描述 | 备注 |
|---|---|---|---|---|
| E001 | 动态 extends 非 constructor | TypeError | class A extends expr | 如 ArkTS 允许表达式 extends |
| E002 | 派生类 constructor this before super 未静态拦截 | ReferenceError | this.x before super() | runtime boundary |
| E003 | 派生类 constructor 未完成 super 初始化 | ReferenceError/TypeError | missing super() | runtime boundary |
| E004 | super.method 不存在时调用 | TypeError | super.missing() | super boundary |
| E005 | 基类 constructor 抛异常导致派生类初始化中断 | Error | Base constructor throws | abrupt completion |
| E006 | 基类 constructor 调用被覆盖方法时派生字段未初始化 | TypeError/Error | virtual dispatch boundary | runtime order |

## ArkTS Boundary

| 场景 | ECMA 行为 | TypeScript 行为 | ArkTS 预期 | 备注 |
|---|---|---|---|---|
| 继承表达式 | ES2022 支持 extends expression | TS 支持部分场景 | ArkTS 支持待确认 | 如不支持记录 Unsupported |
| extends null | ES2022 支持特殊 prototype 语义 | TS 支持有限 | ArkTS 支持待确认 | 差异记录 |
| private 成员兼容 | ECMA #private 品牌语义 | TS private 影响兼容 | ArkTS 规则待确认 | compatibility |
| protected 成员兼容 | ECMA 无 protected | TS protected 影响兼容 | ArkTS 规则待确认 | compatibility |
| field shadowing | ECMA 运行时允许遮蔽 | TS 类型系统限制 | ArkTS 类型规则待确认 | field |
| override keyword | ECMA 无 | TS 支持 override | ArkTS 支持/是否要求待确认 | override |
| static side inheritance | ES2022 constructor chain | TS static side 类型检查 | ArkTS 待确认 | static |
| generic inheritance | ECMA 类型擦除 | TS 静态类型 | ArkTS 泛型规则待确认 | generic |
| base constructor virtual dispatch | ECMA 动态分派 | TS 不禁止 | ArkTS 是否有额外限制待确认 | runtime boundary |

## Open Questions

- ArkTS 是否支持 extends expression？
- ArkTS 是否支持 extends null？
- ArkTS 字段遮蔽类型不一致时是允许、报错还是按结构兼容处理？
- private/protected 成员是否影响派生类与基类之间的赋值兼容？
- override 关键字是否支持或是否要求？
- static side 的继承类型检查是否与 instance side 分离？
- generic inheritance 中类型参数约束错误是否全部前移为 checker 错误？
- Base constructor 中调用 Derived override 方法时字段初始化顺序是否与 ES2022 一致？
- 循环继承由 parser/checker 报错还是运行时错误？
- abstract class 与 inheritance 的 constructor/super 规则是否与 TS 一致？
