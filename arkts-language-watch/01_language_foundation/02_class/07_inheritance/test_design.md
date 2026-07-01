# Test Design

## Positive Cases

记录合法语法、合法类型、正常运行场景。

## Compile Negative Cases

记录 parser/checker 应拦截的错误。

## Runtime Error Cases

记录符合 ECMA 运行时语义的异常场景，如 TypeError、ReferenceError 等。

## Boundary Cases

记录边界场景，如空类、空构造、重复字段、继承边界、初始化顺序等。

## Type System Cases

记录 class 与类型系统相关的场景：

- class as type
- class as value
- constructor type
- instance type
- assignability
- object literal compatibility
- interface compatibility
- generic compatibility

## Inheritance / Integration Cases

记录与继承、interface、abstract、generic、module、null safety 等组合场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## test262 Candidate Cases

记录可参考或适配的 test262 用例方向。

## Regression Cases

记录历史缺陷或后续回归用例。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
|---|---|---|---|---|
| 001 | 派生类 extends 基类通过 | pass | P0 | 初始设计点 |
| 002 | 派生类实例可赋值给基类类型 | fail_compile | P0 | 初始设计点 |
| 003 | 基类实例赋值给派生类类型报错 | boundary | P0 | 初始设计点 |
| 004 | 继承基类字段访问通过 | fail_runtime | P0 | 初始设计点 |
| 005 | 继承基类方法调用通过 | integration | P0 | 初始设计点 |
| 006 | 派生类覆盖基类方法通过 | regression | P0 | 初始设计点 |
| 007 | 覆盖方法类型不兼容报错 | pass | P0 | 初始设计点 |
| 008 | 派生类 constructor 调用基类 constructor | fail_compile | P0 | 初始设计点 |
| 009 | 多层继承链成员访问 | boundary | P1 | 初始设计点 |
| 010 | 循环继承报错 | fail_runtime | P1 | 初始设计点 |
| 011 | 多继承语法报错 | integration | P1 | 初始设计点 |
| 012 | 继承 final/sealed 类如支持需报错 | regression | P1 | 初始设计点 |
| 013 | private 成员不参与外部访问 | pass | P1 | 初始设计点 |
| 014 | protected 成员在子类中可访问 | fail_compile | P1 | 初始设计点 |
| 015 | static 成员继承访问 | boundary | P1 | 初始设计点 |
| 016 | 基类/派生类泛型组合 | fail_runtime | P1 | 初始设计点 |

<!-- CLASS_INHERITANCE_DETAILED_WATCH_V1 -->

# Test Design

## Positive Cases

覆盖继承正向用例，包括普通继承、多层继承、字段/方法继承、方法覆盖、static 继承、abstract/generic/interface 组合。

## Compile Negative Cases

覆盖 parser/checker 负向用例，包括多继承、循环继承、self extends、访问 private/protected、override 类型不兼容、super 参数错误、abstract 未实现等。

## Runtime Error Cases

覆盖运行时异常场景，包括动态 extends 非 constructor、super.method 缺失、基类 constructor 抛异常、this before super 运行时边界。

## Boundary Cases

覆盖 extends null、extends expression、字段遮蔽、private/protected 兼容、初始化顺序、static this、generic 类型擦除等边界。

## Type System Cases

覆盖派生类到基类赋值、基类到派生类赋值、private/protected 兼容、generic inheritance、static side 与 instance side。

## Field / Method / Constructor Integration Cases

覆盖继承与字段、方法、构造函数的组合场景，包括字段遮蔽、方法覆盖、super 参数、Base/Derived 初始化顺序。

## ArkTS Static Boundary Cases

覆盖 ArkTS 静态语言中可能前移为编译期错误的场景，例如 dynamic extends、this before super、cycle inheritance、visibility narrowing。

## test262 Candidate Cases

记录 extends、prototype chain、derived constructor、super、class fields initialization order、instanceof 等 test262 方向。

## Regression Cases

记录循环继承、override 签名、protected 访问、super 参数、初始化顺序、generic 约束等历史缺陷方向。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
|---|---|---|---|---|
| 001 | 普通 class 继承普通 class 并实例化通过 | pass | P0 |  |
| 002 | 派生类实例访问基类 public 字段通过 | pass | P0 |  |
| 003 | 派生类实例访问基类 public 方法通过 | pass | P0 |  |
| 004 | 子类新增字段并访问通过 | pass | P0 |  |
| 005 | 子类新增方法并调用通过 | pass | P0 |  |
| 006 | 三层继承链实例化通过 | pass | P0 |  |
| 007 | 空基类继承通过 | pass | P0 |  |
| 008 | 空派生类继承通过 | pass | P0 |  |
| 009 | 继承链实例化后访问祖先方法通过 | pass | P0 |  |
| 010 | 派生类实例 instanceof 派生类为 true | pass | P0 |  |
| 011 | 派生类实例 instanceof 基类为 true | pass | P0 |  |
| 012 | 子类继承基类字段并在方法中访问通过 | pass | P0 |  |
| 013 | 子类继承基类方法并调用通过 | pass | P0 |  |
| 014 | 子类覆盖基类方法并调用派生实现通过 | pass | P0 |  |
| 015 | 覆盖方法参数类型一致通过 | pass | P0 |  |
| 016 | 覆盖方法返回类型一致通过 | pass | P0 |  |
| 017 | protected 成员在子类中访问通过 | pass | P0 |  |
| 018 | readonly 字段继承后读取通过 | pass | P0 |  |
| 019 | static 字段通过派生类名访问通过 | pass | P0 |  |
| 020 | static method 通过派生类名调用通过 | pass | P0 |  |
| 021 | 派生类无显式 constructor 默认调用基类 constructor | pass | P0 |  |
| 022 | 派生类显式 constructor 调用 super() 通过 | pass | P0 |  |
| 023 | super() 参数类型与基类 constructor 匹配通过 | pass | P0 |  |
| 024 | 基类 constructor 初始化字段后派生类读取通过 | pass | P0 |  |
| 025 | 抽象类由普通子类继承并实现抽象方法通过 | pass | P0 |  |
| 026 | generic class 继承普通 class 通过 | pass | P0 |  |
| 027 | 普通 class 继承 generic class 实例化类型通过 | pass | P0 |  |
| 028 | 派生类传递泛型参数给基类通过 | pass | P0 |  |
| 029 | 多继承语法，parser/checker 报错 | fail_compile | P0 |  |
| 030 | class 继承自身，checker 报错 | fail_compile | P0 |  |
| 031 | 循环继承，checker 报错 | fail_compile | P0 |  |
| 032 | extends 非 class / 非 constructor，如静态可识别则报错 | fail_compile | P0 |  |
| 033 | 基类实例赋值给派生类类型，checker 报错 | fail_compile | P0 |  |
| 034 | 派生类直接访问基类 private 字段，checker 报错 | fail_compile | P0 |  |
| 035 | 外部访问 protected 成员，checker 报错 | fail_compile | P0 |  |
| 036 | 字段遮蔽类型不兼容，checker 报错 | fail_compile | P0 |  |
| 037 | 覆盖方法参数类型不兼容，checker 报错 | fail_compile | P0 |  |
| 038 | 覆盖方法返回类型不兼容，checker 报错 | fail_compile | P0 |  |
| 039 | 覆盖方法可见性收窄，checker 报错 | fail_compile | P0 |  |
| 040 | static 与 instance method 覆盖冲突，checker 报错 | fail_compile | P0 |  |
| 041 | 派生类 constructor 未调用 super()，checker 报错 | fail_compile | P0 |  |
| 042 | 派生类 constructor 中 this before super，checker 报错 | fail_compile | P0 |  |
| 043 | super() 参数类型不匹配，checker 报错 | fail_compile | P0 |  |
| 044 | super() 参数个数不足，checker 报错 | fail_compile | P0 |  |
| 045 | super() 参数个数过多，checker 报错 | fail_compile | P0 |  |
| 046 | 普通类继承 abstract class 未实现 abstract method，checker 报错 | fail_compile | P0 |  |
| 047 | abstract method 实现签名不兼容，checker 报错 | fail_compile | P0 |  |
| 048 | private/protected 成员不能满足 public interface 成员，checker 报错 | fail_compile | P0 |  |
| 049 | generic 继承中类型参数不满足约束，checker 报错 | fail_compile | P0 |  |
| 050 | generic override 签名不兼容，checker 报错 | fail_compile | P0 |  |
| 051 | 实例访问 static member，checker 报错 | fail_compile | P0 |  |
| 052 | 外部访问 private/protected inherited method，checker 报错 | fail_compile | P0 |  |
| 053 | 派生类把 public 覆盖为 protected/private，checker 报错 | fail_compile | P0 |  |
| 054 | 派生类把 protected 覆盖为 private，checker 报错 | fail_compile | P0 |  |
| 055 | class 继承 null 如 ArkTS 不支持则报错 | fail_compile | P0 |  |
| 056 | 继承表达式如 ArkTS 不支持则报错 | fail_compile | P0 |  |
| 057 | 派生类重复声明不兼容继承关系，checker 报错 | fail_compile | P0 |  |
| 058 | extends null 支持情况边界 | boundary | P1 |  |
| 059 | 继承表达式支持情况边界 | boundary | P1 |  |
| 060 | 字段遮蔽类型一致与不一致边界 | boundary | P1 |  |
| 061 | private 成员同名遮蔽边界 | boundary | P1 |  |
| 062 | Base field -> Base constructor -> Derived field -> Derived constructor 顺序边界 | boundary | P1 |  |
| 063 | Base constructor 中调用被 Derived override 的方法边界 | boundary | P1 |  |
| 064 | static 成员初始化顺序边界 | boundary | P1 |  |
| 065 | static this 在继承中的行为边界 | boundary | P1 |  |
| 066 | generic 类型擦除边界 | boundary | P1 |  |
| 067 | 基类 constructor 抛异常后的派生类初始化边界 | boundary | P1 |  |
| 068 | 多层继承 constructor 调用链边界 | boundary | P1 |  |
| 069 | abstract protected method 实现边界 | boundary | P1 |  |
| 070 | prototype 动态修改对 instanceof 的边界 | boundary | P1 |  |
| 071 | 动态 extends 非 constructor 运行时 TypeError | fail_runtime | P1 |  |
| 072 | super.method 不存在时调用运行时 TypeError | fail_runtime | P1 |  |
| 073 | 基类 constructor 抛异常导致派生类初始化中断 | fail_runtime | P1 |  |
| 074 | this before super 未静态拦截时运行时 ReferenceError | fail_runtime | P1 |  |
| 075 | 基类 constructor 调用被覆盖方法且派生字段未初始化的运行时边界 | fail_runtime | P1 |  |
| 076 | 派生类继承基类并 implements interface | integration | P0 |  |
| 077 | 基类已实现 interface 方法，派生类继承后满足 interface | integration | P0 |  |
| 078 | 派生类覆盖 interface 方法 | integration | P0 |  |
| 079 | interface property 由基类字段满足 | integration | P0 |  |
| 080 | interface method 由基类方法满足 | integration | P0 |  |
| 081 | 普通类继承 abstract class 并实现 abstract method | integration | P0 |  |
| 082 | abstract class constructor 被子类 super() 调用 | integration | P0 |  |
| 083 | generic class 继承 generic class | integration | P0 |  |
| 084 | 泛型字段继承并保持类型检查 | integration | P0 |  |
| 085 | 泛型方法继承并保持签名兼容 | integration | P0 |  |
| 086 | static method 继承后由 Derived 调用 | integration | P0 |  |
| 087 | module export 派生类跨文件继承基类 | integration | P0 |  |
| 088 | readonly 字段继承与 interface readonly property 组合 | integration | P0 |  |
| 089 | 循环继承漏报回归 | regression | P0 |  |
| 090 | 覆盖方法返回类型不兼容漏报回归 | regression | P0 |  |
| 091 | protected 成员外部访问漏报回归 | regression | P0 |  |
| 092 | super 参数检查回归 | regression | P0 |  |
| 093 | 字段初始化顺序回归 | regression | P0 |  |
| 094 | generic inheritance 约束漏报回归 | regression | P0 |  |
| 095 | static/instance 覆盖冲突回归 | regression | P0 |  |
