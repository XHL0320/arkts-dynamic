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
| 001 | static field | pass | P0 | 初始设计点 |
| 002 | static method | fail_compile | P0 | 初始设计点 |
| 003 | static block，如 ArkTS 支持 | boundary | P0 | 初始设计点 |
| 004 | 静态成员访问 | fail_runtime | P0 | 初始设计点 |
| 005 | 实例访问静态成员的错误 | integration | P0 | 初始设计点 |
| 006 | 静态成员继承 | regression | P0 | 初始设计点 |
| 007 | static this | pass | P0 | 初始设计点 |
| 008 | static 与 instance 同名 | fail_compile | P0 | 初始设计点 |
| 009 | 静态初始化顺序 | boundary | P1 | 初始设计点 |
| 010 | 正向基础场景 | fail_runtime | P1 | 初始设计点 |

<!-- CLASS_STATIC_MEMBERS_DETAILED_WATCH_V1 -->
# Test Design

## Positive Cases

覆盖 static field、static method、class name 访问、static this、static inheritance、static visibility、readonly static、module 正向场景。

## Compile Negative Cases

覆盖 static/instance side 混用、参数/返回/赋值类型错误、instance 访问 static、static member 满足 interface、generic T、unsupported static block。

## Runtime Error Cases

覆盖 static initializer 抛异常、static block abrupt completion、static method this 绑定丢失、动态访问和 circular import 边界。

## Boundary Cases

覆盖 static block 支持、super.staticField、readonly static 内部可变性、generic static side、#private static、constructor type。

## Type System Cases

覆盖 static side 与 instance side、constructor type/typeof Class、static member type checking、interface implements、generic class static side。

## Inheritance / Integration Cases

覆盖 static 与继承、super、visibility、readonly、generic、abstract、interface、module、初始化顺序和 runtime constructor object 的组合场景。

## ArkTS Static Boundary Cases

ArkTS 静态类型规则不直接来自 test262；instance 访问 static、static 访问 instance、static member 满足 interface 等应优先作为 checker 负向。

## test262 Candidate Cases

test262 可参考 static fields、static methods、static initialization order、static super、static blocks、constructor object property behavior。

## Regression Cases

记录 static/instance 混用漏检、readonly static 写入漏检、generic static T 误用、inherited static this 绑定和跨模块可见性回归。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
| -- | --- | ---- | --- | -- |
| 001 | 声明 static number field 并通过 class name 读取 | pass | P0 |  |
| 002 | 声明 static string field 并通过 class name 读取 | pass | P0 |  |
| 003 | 声明 static boolean field 并通过 class name 读取 | pass | P0 |  |
| 004 | 声明 static bigint field 并通过 class name 读取，如 ArkTS 支持 | pass | P0 |  |
| 005 | 声明 static object field 并访问对象属性 | pass | P0 |  |
| 006 | 声明 static array field 并读取数组元素 | pass | P0 |  |
| 007 | static field 带类型注解且初始化值匹配 | pass | P0 |  |
| 008 | static field 省略类型并依赖初始化值推断 | pass | P0 |  |
| 009 | static field 无初始化值的默认值边界 | pass | P0 |  |
| 010 | static field 外部赋值类型正确 | pass | P0 |  |
| 011 | 声明无参 static method 并通过 class name 调用 | pass | P0 |  |
| 012 | 声明带参 static method 并传入正确参数 | pass | P0 |  |
| 013 | static method 返回 void | pass | P0 |  |
| 014 | static method 返回 number/string/object | pass | P0 |  |
| 015 | static method 调用同类 static method | pass | P0 |  |
| 016 | static method 访问同类 static field | pass | P0 |  |
| 017 | instance method 中通过 class name 访问 static field | pass | P0 |  |
| 018 | instance method 中通过 class name 调用 static method | pass | P0 |  |
| 019 | static method 中使用 this 访问 static field | pass | P1 |  |
| 020 | static method 中使用 this 调用 static method | pass | P1 |  |
| 021 | derived class 访问 inherited static field | pass | P1 |  |
| 022 | derived class 调用 inherited static method | pass | P1 |  |
| 023 | derived class 遮蔽 base static field | pass | P1 |  |
| 024 | derived class 覆盖/遮蔽 base static method | pass | P1 |  |
| 025 | derived static method 中调用 super.staticMethod()，如 ArkTS 支持 | pass | P1 |  |
| 026 | public static field 外部可访问 | pass | P1 |  |
| 027 | private static field 类内可访问 | pass | P1 |  |
| 028 | protected static field 子类可访问 | pass | P1 |  |
| 029 | readonly static field 初始化后外部读取 | pass | P1 |  |
| 030 | abstract class 中声明 static method 并由子类继承 | pass | P1 |  |
| 031 | factory static method 返回 interface type | pass | P1 |  |
| 032 | export class with static field 后 import 访问通过 | pass | P1 |  |
| 033 | export class with static method 后 import 调用通过 | pass | P1 |  |
| 034 | static field 初始化值与类型不一致，checker 报错 | fail_compile | P0 |  |
| 035 | static field 外部赋值类型错误，checker 报错 | fail_compile | P0 |  |
| 036 | static method 参数类型错误，checker 报错 | fail_compile | P0 |  |
| 037 | static method 参数个数不足，checker 报错 | fail_compile | P0 |  |
| 038 | static method 参数个数过多，checker 报错或记录差异 | fail_compile | P0 |  |
| 039 | static method 返回值类型错误，checker 报错 | fail_compile | P0 |  |
| 040 | static field 通过 instance 访问，checker 报错 | fail_compile | P0 |  |
| 041 | static method 通过 instance 调用，checker 报错 | fail_compile | P0 |  |
| 042 | instance method 通过 class name 直接调用，checker 报错 | fail_compile | P0 |  |
| 043 | instance field 通过 class name 直接访问，checker 报错 | fail_compile | P0 |  |
| 044 | static method 中访问 instance field，checker 报错 | fail_compile | P0 |  |
| 045 | static method 中调用 instance method，checker 报错 | fail_compile | P0 |  |
| 046 | static method 中 this 访问 instance field，checker 报错 | fail_compile | P0 |  |
| 047 | static method 覆盖参数类型不兼容，checker 报错 | fail_compile | P0 |  |
| 048 | static method 覆盖返回类型不兼容，checker 报错 | fail_compile | P0 |  |
| 049 | super.staticMethod() 参数类型错误，checker 报错 | fail_compile | P0 |  |
| 050 | static method 中错误调用 super()，checker 报错 | fail_compile | P0 |  |
| 051 | private static field 外部访问，checker 报错 | fail_compile | P0 |  |
| 052 | private static method 外部调用，checker 报错 | fail_compile | P0 |  |
| 053 | protected static field 外部访问，checker 报错 | fail_compile | P0 |  |
| 054 | protected static method 外部调用，checker 报错 | fail_compile | P0 |  |
| 055 | readonly static field 外部赋值，checker 报错 | fail_compile | P0 |  |
| 056 | generic class static member 直接使用类类型参数 T，checker 报错或边界记录 | fail_compile | P0 |  |
| 057 | Box<number>.staticMember 这类实例化类型访问 static，checker 报错或边界记录 | fail_compile | P0 |  |
| 058 | static member 不能满足 instance interface property，checker 报错 | fail_compile | P0 |  |
| 059 | static method 不能满足 instance interface method，checker 报错 | fail_compile | P0 |  |
| 060 | abstract static member 不支持时声明，checker 报错 | fail_compile | P0 |  |
| 061 | static block 不支持时使用 static block，parser/checker 报错 | fail_compile | P0 |  |
| 062 | static block 中访问 instance field，checker 报错，如支持 static block | fail_compile | P0 |  |
| 063 | 跨模块访问 static private/protected，checker 报错 | fail_compile | P1 |  |
| 064 | constructor/static-side interface 不支持时使用，checker 报错 | fail_compile | P1 |  |
| 065 | static block 支持与否的 ArkTS 边界 | boundary | P1 |  |
| 066 | static field 无初始化值默认行为边界 | boundary | P1 |  |
| 067 | static method 中 this 类型是否为 constructor/static side 边界 | boundary | P1 |  |
| 068 | derived class 调用 inherited static method 时 this 指向 derived 的边界 | boundary | P1 |  |
| 069 | super.staticField 支持与否边界 | boundary | P1 |  |
| 070 | static method 提取为回调后 this 绑定边界 | boundary | P1 |  |
| 071 | readonly static object field 内部属性可变性边界 | boundary | P1 |  |
| 072 | readonly static array field 元素修改边界 | boundary | P1 |  |
| 073 | generic class static side 与实例化类型无关边界 | boundary | P1 |  |
| 074 | static private/protected/public 是否仅编译期约束边界 | boundary | P1 |  |
| 075 | circular import static member 访问边界 | boundary | P1 |  |
| 076 | static field 初始化表达式抛异常导致 class evaluation 失败 | fail_runtime | P1 |  |
| 077 | static block 抛异常导致 class evaluation 失败，如支持 static block | fail_runtime | P1 |  |
| 078 | static method 提取后 this 丢失导致访问 static field 失败 | fail_runtime | P1 |  |
| 079 | 动态 instance 访问 static method 为 undefined 后调用抛 TypeError | fail_runtime | P1 |  |
| 080 | super.staticMethod 动态变为非 callable 后调用抛 TypeError | fail_runtime | P1 |  |
| 081 | static private field brand check 失败，如支持 #private static | fail_runtime | P1 |  |
| 082 | circular import 中访问未初始化 static member 的运行时边界 | fail_runtime | P1 |  |
| 083 | static 与 inheritance：derived 继承 base static field/method | integration | P0 |  |
| 084 | static 与 super：derived static method 调用 super.staticMethod() | integration | P0 |  |
| 085 | static 与 visibility：private/protected static 成员访问控制 | integration | P0 |  |
| 086 | static 与 readonly：readonly static field 初始化和写入限制 | integration | P0 |  |
| 087 | static 与 generic：static method 声明自己的泛型参数 | integration | P0 |  |
| 088 | static 与 abstract：abstract class 中 static factory method | integration | P0 |  |
| 089 | static 与 interface：static member 不参与 instance interface implements | integration | P0 |  |
| 090 | static 与 constructor type：typeof Class 是否包含 static members | integration | P0 |  |
| 091 | static 与 module：export/import class 后访问 static member | integration | P0 |  |
| 092 | static 与 default export/re-export class 组合 | integration | P0 |  |
| 093 | static 与 class initialization order：base/derived static 初始化顺序 | integration | P1 |  |
| 094 | static 与 runtime：constructor object property behavior | integration | P1 |  |
| 095 | 回归：instance 访问 static field 未报错 | regression | P0 |  |
| 096 | 回归：static method 访问 instance field 未报错 | regression | P0 |  |
| 097 | 回归：static member 错误满足 instance interface | regression | P0 |  |
| 098 | 回归：readonly static field 外部赋值未报错 | regression | P0 |  |
| 099 | 回归：generic static member 错误使用 class type parameter T | regression | P0 |  |
| 100 | 回归：derived inherited static method this 绑定错误 | regression | P0 |  |
| 101 | 回归：跨模块 static private/protected 可见性丢失 | regression | P0 |  |
| 102 | 回归：static initialization order 错误 | regression | P0 |  |
