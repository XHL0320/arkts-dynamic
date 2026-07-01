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
| 001 | 无 constructor 类默认构造通过 | pass | P0 | 初始设计点 |
| 002 | 空 constructor 类实例化通过 | fail_compile | P0 | 初始设计点 |
| 003 | 带参 constructor 参数匹配通过 | boundary | P0 | 初始设计点 |
| 004 | constructor 参数类型错误报错 | fail_runtime | P0 | 初始设计点 |
| 005 | constructor 参数个数不足报错或按 ArkTS 规则处理 | integration | P0 | 初始设计点 |
| 006 | constructor 中 this 字段初始化通过 | regression | P0 | 初始设计点 |
| 007 | constructor 返回对象/primitive 行为按 ArkTS 规则确认 | pass | P0 | 初始设计点 |
| 008 | 派生类 constructor 调用 super 通过 | fail_compile | P0 | 初始设计点 |
| 009 | 派生类 constructor 未调用 super 报错 | boundary | P1 | 初始设计点 |
| 010 | this before super 报错或运行时异常 | fail_runtime | P1 | 初始设计点 |
| 011 | super 调用参数匹配基类 constructor | integration | P1 | 初始设计点 |
| 012 | super 调用参数类型错误 | regression | P1 | 初始设计点 |
| 013 | constructor overload 支持情况确认 | pass | P1 | 初始设计点 |
| 014 | private/protected constructor 实例化限制 | fail_compile | P1 | 初始设计点 |
| 015 | abstract class constructor 由子类调用 | boundary | P1 | 初始设计点 |
| 016 | constructor 中调用实例方法边界 | fail_runtime | P1 | 初始设计点 |

<!-- CLASS_CONSTRUCTOR_DETAILED_WATCH_V1 -->

# Test Design

## Positive Cases

覆盖构造函数正向用例，包括默认 constructor、无参/带参 constructor、字段初始化、this、static、super、abstract、generic 等。

## Compile Negative Cases

覆盖 parser/checker 负向用例，包括 new 参数类型/个数错误、constructor 返回类型、this before super、super 参数错误、readonly、overload、visibility、abstract 直接实例化等。

## Runtime Error Cases

覆盖运行时异常场景，包括 class constructor 普通调用、重复 super()、derived return primitive、constructor 抛异常、Reflect.construct 边界等。

## Boundary Cases

覆盖 constructor return、初始化顺序、new.target、Reflect.construct、visibility、overload 支持情况等边界。

## Type System Cases

覆盖 constructor 与 class/interface/array/null/generic/readonly/abstract 类型系统交叉场景。

## Inheritance / Integration Cases

覆盖 constructor 与字段、方法、继承、super、abstract、generic、module 的组合场景。

## ArkTS Static Boundary Cases

覆盖 ArkTS 静态语言中可能前移为编译期错误的场景，如 this before super、constructor return type、private/protected constructor、new.target、Reflect.construct。

## test262 Candidate Cases

记录 class constructor、default constructor、derived constructor、super、this-before-super、new.target、Reflect.construct、abrupt completion 等 test262 方向。

## Regression Cases

记录 this before super、super 参数、readonly constructor 赋值、constructor overload、abstract 实例化、初始化顺序等回归方向。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
|---|---|---|---|---|
| 001 | 空类默认 constructor，new 实例化通过 | pass | P0 |  |
| 002 | 显式无参 constructor，new 实例化通过 | pass | P0 |  |
| 003 | 单 number 参数 constructor 调用通过 | pass | P0 |  |
| 004 | 多参数 constructor 调用通过 | pass | P0 |  |
| 005 | constructor 参数类型注解与实参一致通过 | pass | P0 |  |
| 006 | constructor 中初始化 number 字段通过 | pass | P0 |  |
| 007 | constructor 中初始化 string 字段通过 | pass | P0 |  |
| 008 | constructor 中访问 this 字段通过 | pass | P0 |  |
| 009 | constructor 中调用实例方法通过 | pass | P0 |  |
| 010 | constructor 中访问 static 成员通过 | pass | P0 |  |
| 011 | constructor 可选参数未传值通过 | pass | P0 |  |
| 012 | constructor rest 参数接收多个值通过 | pass | P0 |  |
| 013 | constructor 默认参数使用默认值通过 | pass | P0 |  |
| 014 | constructor 参数为 class 类型并传入实例通过 | pass | P0 |  |
| 015 | constructor 参数为 interface 类型并传入满足对象通过 | pass | P0 |  |
| 016 | constructor 参数为 array 类型并传入同元素数组通过 | pass | P0 |  |
| 017 | 字段声明处初始化并由 constructor 读取通过 | pass | P0 |  |
| 018 | 字段在 constructor 中赋值覆盖默认值通过 | pass | P0 |  |
| 019 | readonly 字段在 constructor 中赋值通过 | pass | P0 |  |
| 020 | 子类无显式 constructor 默认调用基类 constructor | pass | P0 |  |
| 021 | 子类显式 constructor 调用 super() 通过 | pass | P0 |  |
| 022 | super() 后访问 this 字段通过 | pass | P0 |  |
| 023 | 基类 constructor 参数由子类 super 传递通过 | pass | P0 |  |
| 024 | abstract class constructor 由子类 super 调用通过 | pass | P0 |  |
| 025 | generic class constructor 参数为 T 并初始化字段通过 | pass | P0 |  |
| 026 | constructor 抛异常可被 catch 捕获 | pass | P0 |  |
| 027 | new 调用参数类型不一致，checker 报错 | fail_compile | P0 |  |
| 028 | new 调用参数个数不足，checker 报错 | fail_compile | P0 |  |
| 029 | new 调用参数个数过多，checker 报错 | fail_compile | P0 |  |
| 030 | constructor 参数默认值类型不匹配，checker 报错 | fail_compile | P0 |  |
| 031 | rest 参数不是最后一个参数，parser/checker 报错 | fail_compile | P0 |  |
| 032 | constructor 标注返回类型，parser/checker 报错 | fail_compile | P0 |  |
| 033 | constructor 声明为 static，parser/checker 报错 | fail_compile | P0 |  |
| 034 | constructor 声明为 async/generator，parser/checker 报错 | fail_compile | P0 |  |
| 035 | constructor 中字段赋值类型错误，checker 报错 | fail_compile | P0 |  |
| 036 | constructor 中访问未声明字段，checker 报错 | fail_compile | P0 |  |
| 037 | readonly 字段 constructor 外赋值，checker 报错 | fail_compile | P0 |  |
| 038 | 派生类 constructor 未调用 super()，checker 报错 | fail_compile | P0 |  |
| 039 | 派生类 constructor 中 this before super，checker 报错 | fail_compile | P0 |  |
| 040 | super() 参数类型不匹配，checker 报错 | fail_compile | P0 |  |
| 041 | super() 参数个数不匹配，checker 报错 | fail_compile | P0 |  |
| 042 | super() 前访问 this.field，checker 报错 | fail_compile | P0 |  |
| 043 | super() 前调用 this.method()，checker 报错 | fail_compile | P0 |  |
| 044 | constructor overload 实现签名不兼容，checker 报错 | fail_compile | P0 |  |
| 045 | new 调用无匹配 constructor overload，checker 报错 | fail_compile | P0 |  |
| 046 | private constructor 外部 new，checker 报错 | fail_compile | P0 |  |
| 047 | protected constructor 外部 new，checker 报错 | fail_compile | P0 |  |
| 048 | abstract class 直接 new，checker 报错 | fail_compile | P0 |  |
| 049 | generic constructor 参数不满足约束，checker 报错 | fail_compile | P0 |  |
| 050 | class implements interface 时 constructor 不参与成员检查需确认 | fail_compile | P0 |  |
| 051 | constructor 参数类型省略如 ArkTS 不允许则报错 | fail_compile | P0 |  |
| 052 | 派生类 constructor 中 super() 调用多次如可静态识别则报错 | fail_compile | P0 |  |
| 053 | constructor 中使用 unsupported TS parameter property 如 ArkTS 不支持则报错 | fail_compile | P0 |  |
| 054 | constructor 不写 return 的默认行为边界 | boundary | P1 |  |
| 055 | constructor return 空值边界 | boundary | P1 |  |
| 056 | constructor return primitive 边界 | boundary | P1 |  |
| 057 | constructor return object 边界 | boundary | P1 |  |
| 058 | derived constructor return object 边界 | boundary | P1 |  |
| 059 | derived constructor return primitive 边界 | boundary | P1 |  |
| 060 | super() 调用多次运行时边界 | boundary | P1 |  |
| 061 | Base field -> Base constructor -> Derived field -> Derived constructor 顺序边界 | boundary | P1 |  |
| 062 | Base constructor 中调用被 Derived override 的方法边界 | boundary | P1 |  |
| 063 | Derived 字段遮蔽 Base 字段边界 | boundary | P1 |  |
| 064 | new.target 支持情况边界 | boundary | P1 |  |
| 065 | Reflect.construct 支持情况边界 | boundary | P1 |  |
| 066 | constructor visibility 支持情况边界 | boundary | P1 |  |
| 067 | class constructor 被普通函数调用，运行时 TypeError | fail_runtime | P1 |  |
| 068 | this before super 未被静态拦截时运行时 ReferenceError | fail_runtime | P1 |  |
| 069 | super() 调用两次导致运行时异常 | fail_runtime | P1 |  |
| 070 | derived constructor return primitive 导致运行时 TypeError | fail_runtime | P1 |  |
| 071 | constructor 中抛异常导致对象未完成初始化 | fail_runtime | P1 |  |
| 072 | Reflect.construct newTarget 非 constructor 导致 TypeError | fail_runtime | P1 |  |
| 073 | constructor 与字段初始化组合 | integration | P0 |  |
| 074 | constructor 与方法调用组合 | integration | P0 |  |
| 075 | constructor 与继承 super 组合 | integration | P0 |  |
| 076 | constructor 与 abstract class 组合 | integration | P0 |  |
| 077 | constructor 与 generic class 组合 | integration | P0 |  |
| 078 | constructor 与 module export/import class 组合 | integration | P0 |  |
| 079 | constructor 与 readonly field 组合 | integration | P0 |  |
| 080 | constructor 与 interface implements 边界组合 | integration | P0 |  |
| 081 | constructor overload 与 optional 参数组合 | integration | P0 |  |
| 082 | constructor overload 与继承组合 | integration | P0 |  |
| 083 | 多层继承 constructor 调用链 | integration | P0 |  |
| 084 | generic 约束在 constructor 参数中生效 | integration | P0 |  |
| 085 | this before super 漏报回归 | regression | P0 |  |
| 086 | super 参数类型检查回归 | regression | P0 |  |
| 087 | readonly constructor 赋值误报回归 | regression | P0 |  |
| 088 | constructor overload 分派回归 | regression | P0 |  |
| 089 | abstract class 直接实例化漏报回归 | regression | P0 |  |
| 090 | 初始化顺序 Base/Derived 回归 | regression | P0 |  |
