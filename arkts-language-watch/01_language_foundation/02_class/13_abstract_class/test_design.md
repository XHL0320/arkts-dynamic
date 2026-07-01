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
| 001 | abstract class 可作为类型 | pass | P0 | 初始设计点 |
| 002 | abstract class 禁止直接实例化 | fail_compile | P0 | 初始设计点 |
| 003 | 子类实现所有 abstract method 通过 | boundary | P0 | 初始设计点 |
| 004 | 子类缺少 abstract method 报错 | fail_runtime | P0 | 初始设计点 |
| 005 | abstract method 不能有实现体 | integration | P0 | 初始设计点 |
| 006 | 非 abstract class 中声明 abstract method 报错 | regression | P0 | 初始设计点 |
| 007 | abstract field 支持情况确认 | pass | P0 | 初始设计点 |
| 008 | abstract method 返回类型实现兼容 | fail_compile | P0 | 初始设计点 |
| 009 | abstract method 参数类型实现兼容 | boundary | P1 | 初始设计点 |
| 010 | abstract 与 protected 成员组合 | fail_runtime | P1 | 初始设计点 |
| 011 | abstract constructor 由子类调用 | integration | P1 | 初始设计点 |
| 012 | abstract class 继承 abstract class | regression | P1 | 初始设计点 |
| 013 | concrete subclass 覆盖 abstract method | pass | P1 | 初始设计点 |
| 014 | abstract class implements interface | fail_compile | P1 | 初始设计点 |
| 015 | abstract class 与 generic 组合 | boundary | P1 | 初始设计点 |
| 016 | abstract class 运行时 instanceof 边界 | fail_runtime | P1 | 初始设计点 |

<!-- CLASS_ABSTRACT_DETAILED_WATCH_V1 -->
# Test Design

## Positive Cases

覆盖 abstract class 声明、作为类型、concrete 子类实现、constructor/super、concrete field/method、generic、interface 和 module 正向场景。

## Compile Negative Cases

覆盖直接实例化、abstract method 带方法体、非 abstract 子类漏实现、签名不兼容、可见性收窄、unsupported abstract field/accessor/static 等 checker/parser 负向。

## Runtime Error Cases

覆盖动态绕过抽象约束、constructor 抛异常、super 初始化异常、跨模块加载异常等运行时边界；正常 ArkTS 静态语言应优先前移为编译期错误。

## Boundary Cases

覆盖 abstract 作为类型和值、object literal 兼容、abstract field/accessor/static 支持、private/protected abstract、test262 适用范围。

## Type System Cases

覆盖 abstract class 作为变量/参数/返回值/数组类型、签名兼容、可见性、generic T、interface implements 和 object literal 兼容。

## Inheritance / Integration Cases

覆盖 abstract class 与继承、constructor、super、field、method、interface、generic、module、override、visibility 的组合场景。

## ArkTS Static Boundary Cases

abstract 是 ArkTS/TypeScript 类型系统概念，不是 ECMAScript 运行时关键字；直接实例化、漏实现和签名错误应优先作为 fail_compile 设计。

## test262 Candidate Cases

test262 只用于 class inheritance、constructor、super、prototype、instanceof、field initialization order 等运行时交叉验证，不直接覆盖 abstract checker 规则。

## Regression Cases

记录抽象约束漏检、签名兼容错误、可见性错误、constructor 参数检查失效、generic 约束丢失、跨模块类型信息丢失等回归方向。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
| -- | --- | ---- | --- | -- |
| 001 | 声明空 abstract class，编译通过 | pass | P0 |  |
| 002 | abstract class 中声明普通字段并由子类实例继承 | pass | P0 |  |
| 003 | abstract class 中声明普通方法并由子类实例调用 | pass | P0 |  |
| 004 | abstract class 中声明无参 constructor，子类 super() 调用通过 | pass | P0 |  |
| 005 | abstract class 中声明带参 constructor，子类 super(value) 调用通过 | pass | P0 |  |
| 006 | abstract class 中声明单个 abstract method，普通子类实现后通过 | pass | P0 |  |
| 007 | abstract class 中声明多个 abstract method，普通子类全部实现后通过 | pass | P0 |  |
| 008 | abstract class 同时包含 abstract method 和 concrete method，子类实现抽象方法后通过 | pass | P0 |  |
| 009 | abstract class 同时包含 abstract method 和 concrete field，子类继承字段并实现方法 | pass | P0 |  |
| 010 | abstract class 作为变量类型接收子类实例 | pass | P0 |  |
| 011 | abstract class 作为函数参数类型接收子类实例 | pass | P0 |  |
| 012 | abstract class 作为返回值类型返回子类实例 | pass | P0 |  |
| 013 | abstract class 数组类型保存多个子类实例 | pass | P0 |  |
| 014 | 通过抽象类引用调用 concrete method | pass | P0 |  |
| 015 | 通过抽象类引用调用子类实现的 abstract method | pass | P0 |  |
| 016 | 子类实例 instanceof abstract base class 行为正确 | pass | P0 |  |
| 017 | abstract class 继承普通 class 并继承其 concrete method | pass | P0 |  |
| 018 | abstract class 继承 abstract class 并保留未实现抽象方法 | pass | P0 |  |
| 019 | 中间 abstract 子类实现部分 abstract method 后继续为 abstract | pass | P1 |  |
| 020 | 最终 concrete 子类实现多层继承中的全部 abstract method | pass | P1 |  |
| 021 | abstract class constructor 初始化字段，子类实例读取字段通过 | pass | P1 |  |
| 022 | abstract class concrete method 调用自身字段通过 | pass | P1 |  |
| 023 | abstract class implements interface 并用 concrete method 满足 interface method | pass | P1 |  |
| 024 | abstract class abstract method 对应 interface method，concrete 子类最终实现 | pass | P1 |  |
| 025 | generic abstract class 以 T 作为字段类型并由子类指定实参 | pass | P1 |  |
| 026 | abstract method 使用泛型 T，子类实现返回具体 T | pass | P1 |  |
| 027 | generic abstract class constructor 参数为 T 并初始化字段 | pass | P1 |  |
| 028 | module export/import abstract class 后由子类继承并实例化通过 | pass | P1 |  |
| 029 | 直接 new abstract class，checker 报错 | fail_compile | P0 |  |
| 030 | abstract method 带方法体，parser/checker 报错 | fail_compile | P0 |  |
| 031 | 非 abstract class 中声明 abstract method，checker 报错 | fail_compile | P0 |  |
| 032 | 普通子类未实现 abstract method，checker 报错 | fail_compile | P0 |  |
| 033 | 普通子类只实现部分 abstract method，checker 报错 | fail_compile | P0 |  |
| 034 | 子类实现 abstract method 参数类型不兼容，checker 报错 | fail_compile | P0 |  |
| 035 | 子类实现 abstract method 返回类型不兼容，checker 报错 | fail_compile | P0 |  |
| 036 | 子类实现 public abstract method 时可见性收窄为 protected，checker 报错 | fail_compile | P0 |  |
| 037 | 子类实现 public abstract method 时可见性收窄为 private，checker 报错 | fail_compile | P0 |  |
| 038 | private abstract method 如 ArkTS 禁止，checker 报错 | fail_compile | P0 |  |
| 039 | abstract method 与 concrete method 同名冲突，checker 报错 | fail_compile | P0 |  |
| 040 | abstract method 重复声明且非合法 overload，checker 报错 | fail_compile | P0 |  |
| 041 | abstract method overload 实现签名不兼容，checker 报错，如支持 overload | fail_compile | P0 |  |
| 042 | abstract field 语法不支持时声明 abstract field，parser/checker 报错 | fail_compile | P0 |  |
| 043 | abstract field 实现类型不兼容，checker 报错，如支持 abstract field | fail_compile | P0 |  |
| 044 | abstract accessor 语法不支持时声明 abstract accessor，parser/checker 报错 | fail_compile | P0 |  |
| 045 | abstract static method 不支持时声明 abstract static method，checker 报错 | fail_compile | P0 |  |
| 046 | abstract base constructor super() 参数类型错误，checker 报错 | fail_compile | P0 |  |
| 047 | abstract base constructor super() 参数个数不足，checker 报错 | fail_compile | P0 |  |
| 048 | abstract base constructor super() 参数个数过多且 ArkTS 不允许，checker 报错 | fail_compile | P0 |  |
| 049 | abstract class implements interface 但 concrete 子类未最终实现 interface method，checker 报错 | fail_compile | P0 |  |
| 050 | interface method 与 abstract method 签名不兼容，checker 报错 | fail_compile | P0 |  |
| 051 | generic abstract method 实现违反泛型约束，checker 报错 | fail_compile | P0 |  |
| 052 | generic abstract class 子类指定不满足约束的类型实参，checker 报错 | fail_compile | P0 |  |
| 053 | abstract class 继承链循环，checker 报错 | fail_compile | P0 |  |
| 054 | abstract class 继承非 class / 非 constructor，checker 报错 | fail_compile | P0 |  |
| 055 | object literal 赋值给 abstract class 类型不满足 ArkTS 规则，checker 报错 | fail_compile | P0 |  |
| 056 | public abstract method 未保持 public 实现，checker 报错 | fail_compile | P1 |  |
| 057 | protected abstract method 实现为 private，checker 报错 | fail_compile | P1 |  |
| 058 | 子类声明为 concrete 但遗漏多层基类中的抽象方法，checker 报错 | fail_compile | P1 |  |
| 059 | abstract class 中 constructor 标注返回类型，如 ArkTS 禁止则 checker 报错 | fail_compile | P1 |  |
| 060 | abstract class private constructor 阻止子类 super()，如支持 constructor visibility 则 checker 报错 | fail_compile | P1 |  |
| 061 | abstract class 是否允许作为运行时值传递的边界 | boundary | P1 |  |
| 062 | abstract class 是否允许 object literal 赋值的兼容边界 | boundary | P1 |  |
| 063 | abstract field 支持与否边界 | boundary | P1 |  |
| 064 | abstract accessor 支持与否边界 | boundary | P1 |  |
| 065 | abstract static member 支持与否边界 | boundary | P1 |  |
| 066 | protected abstract method 是否允许 public 实现的边界 | boundary | P1 |  |
| 067 | abstract method overload 支持与否边界 | boundary | P1 |  |
| 068 | abstract class constructor visibility 支持与否边界 | boundary | P1 |  |
| 069 | abstract class 作为 generic base class 的类型擦除边界 | boundary | P1 |  |
| 070 | abstract 约束是否完全由 checker 保证的运行时边界 | boundary | P1 |  |
| 071 | abstract class export/import 后类型和值空间边界 | boundary | P1 |  |
| 072 | abstract class 与普通 class 结构兼容边界 | boundary | P1 |  |
| 073 | 动态绕过直接构造 abstract class 时记录 ArkRuntime 行为 | fail_runtime | P1 |  |
| 074 | abstract base constructor 抛异常并向子类 new 调用传播 | fail_runtime | P1 |  |
| 075 | abstract base constructor abrupt completion 后子类对象未完成初始化 | fail_runtime | P1 |  |
| 076 | 动态绕过 checker 调用缺失 abstract method 实现时记录异常类型 | fail_runtime | P1 |  |
| 077 | 跨模块 import abstract base 失败时记录模块加载异常边界 | fail_runtime | P1 |  |
| 078 | abstract class 与 inheritance 集成：普通子类继承并实现抽象方法 | integration | P0 |  |
| 079 | abstract class 与 constructor/super 集成：子类 super() 调用带参 base constructor | integration | P0 |  |
| 080 | abstract class 与 field 集成：concrete field 被子类继承并遮蔽 | integration | P0 |  |
| 081 | abstract class 与 method 集成：concrete method 被子类 override | integration | P0 |  |
| 082 | abstract class 与 interface 集成：abstract class implements interface，concrete 子类最终满足 | integration | P0 |  |
| 083 | abstract class 与 generic 集成：abstract method 使用 T 并由子类实现 | integration | P0 |  |
| 084 | abstract class 与 module 集成：跨文件 export/import 后继承 | integration | P0 |  |
| 085 | abstract class 与 visibility 集成：protected abstract method 子类实现 | integration | P0 |  |
| 086 | abstract class 与 readonly/static field 集成：字段限制继续生效 | integration | P1 |  |
| 087 | abstract class 与 override 集成：override abstract method 和 concrete method | integration | P1 |  |
| 088 | abstract class 与多层继承集成：A abstract <- B abstract <- C concrete | integration | P1 |  |
| 089 | abstract class 与 object literal/class type 兼容集成记录 | integration | P1 |  |
| 090 | 回归：abstract class 可被直接 new 未报错 | regression | P0 |  |
| 091 | 回归：普通子类遗漏 abstract method 未报错 | regression | P0 |  |
| 092 | 回归：abstract method 实现返回类型错误未报错 | regression | P0 |  |
| 093 | 回归：public abstract method 被 protected 实现未报错 | regression | P0 |  |
| 094 | 回归：abstract base constructor 参数检查失效 | regression | P0 |  |
| 095 | 回归：generic abstract method 约束在子类实现中丢失 | regression | P0 |  |
| 096 | 回归：abstract class implements interface 后 concrete 子类漏实现未报错 | regression | P0 |  |
| 097 | 回归：跨模块 abstract class 类型信息丢失 | regression | P0 |  |
