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
| 001 | public | pass | P0 | 初始设计点 |
| 002 | private | fail_compile | P0 | 初始设计点 |
| 003 | protected | boundary | P0 | 初始设计点 |
| 004 | internal/package/private，如 ArkTS 支持 | fail_runtime | P0 | 初始设计点 |
| 005 | 字段可见性 | integration | P0 | 初始设计点 |
| 006 | 方法可见性 | regression | P0 | 初始设计点 |
| 007 | constructor 可见性 | pass | P0 | 初始设计点 |
| 008 | 继承中的 protected 访问 | fail_compile | P0 | 初始设计点 |
| 009 | private/protected 对类型兼容的影响 | boundary | P1 | 初始设计点 |
| 010 | 可见性错误是否为编译期错误 | fail_runtime | P1 | 初始设计点 |

<!-- CLASS_VISIBILITY_DETAILED_WATCH_V1 -->
# Test Design

## Positive Cases

覆盖 public/private/protected 字段、方法、static 成员、constructor、getter/setter、继承访问和类内访问正向场景。

## Compile Negative Cases

覆盖外部访问 private/protected、子类访问 private、interface 不兼容、override 可见性收窄、static/instance 混用、object literal 兼容错误。

## Runtime Error Cases

visibility 错误主要属于 compile-time boundary；运行时只记录 dynamic ESObject 绕过、ECMAScript `#private` brand check 和模块加载异常等边界。

## Boundary Cases

覆盖默认可见性、constructor visibility、getter/setter visibility、ECMAScript `#private`、TypeScript-style private runtime 行为和动态绕过。

## Type System Cases

覆盖 private/protected 对 class type compatibility、object literal、interface implements、generic class、union class type 的影响。

## Inheritance / Integration Cases

覆盖可见性与继承、override、abstract、interface、generic、module、static side、readonly 的组合场景。

## ArkTS Static Boundary Cases

ArkTS/TS 风格 visibility 不是 ECMAScript 标准运行时语法，应优先作为 parser/checker 负向用例设计；`#private` 仅在 ArkTS 确认支持时纳入。

## test262 Candidate Cases

test262 只用于 ECMAScript `#private`、public class fields/methods、static members、prototype、instanceof 等运行时交叉验证。

## Regression Cases

记录 private/protected 访问漏检、interface 误满足、override 收窄漏检、object literal 兼容误判、跨模块可见性丢失等回归方向。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
| -- | --- | ---- | --- | -- |
| 001 | public field 外部可访问 | pass | P0 |  |
| 002 | public method 外部可调用 | pass | P0 |  |
| 003 | public static field 通过类名访问 | pass | P0 |  |
| 004 | public static method 通过类名调用 | pass | P0 |  |
| 005 | public 成员在子类中可访问 | pass | P0 |  |
| 006 | public 成员可被子类 override 并保持 public | pass | P0 |  |
| 007 | public 成员满足 interface public property/method | pass | P0 |  |
| 008 | 默认可见性与显式 public 等价，如 ArkTS 确认 | pass | P0 |  |
| 009 | private field 类内方法中可访问 | pass | P0 |  |
| 010 | private field constructor 中可访问 | pass | P0 |  |
| 011 | private method 类内可调用 | pass | P0 |  |
| 012 | private method 可访问 private field | pass | P0 |  |
| 013 | private method 被 public method 间接调用 | pass | P0 |  |
| 014 | private static method 类内可调用 | pass | P0 |  |
| 015 | protected field 类内可访问 | pass | P0 |  |
| 016 | protected field 子类方法中可访问 | pass | P0 |  |
| 017 | protected method 子类可调用 | pass | P0 |  |
| 018 | protected method 在多层继承中可调用 | pass | P0 |  |
| 019 | protected method 被 public method 间接调用 | pass | P1 |  |
| 020 | protected method override 为 protected 通过 | pass | P1 |  |
| 021 | protected method override 为 public 的行为按 ArkTS 支持确认 | pass | P1 |  |
| 022 | protected static method 子类访问通过，如 ArkTS 支持 | pass | P1 |  |
| 023 | private constructor 类内 static factory 可调用，如 ArkTS 支持 | pass | P1 |  |
| 024 | protected constructor 子类可通过 super() 调用，如 ArkTS 支持 | pass | P1 |  |
| 025 | public getter/setter 外部读写通过，如 ArkTS 支持 | pass | P1 |  |
| 026 | getter public setter private 只读暴露模式通过，如 ArkTS 支持 | pass | P1 |  |
| 027 | export class with private field 后类内访问仍通过 | pass | P1 |  |
| 028 | import class 后子类可访问 protected field | pass | P1 |  |
| 029 | private field 类外访问，checker 报错 | fail_compile | P0 |  |
| 030 | private field 子类直接访问，checker 报错 | fail_compile | P0 |  |
| 031 | private method 类外调用，checker 报错 | fail_compile | P0 |  |
| 032 | private method 子类直接调用，checker 报错 | fail_compile | P0 |  |
| 033 | private field 重复声明，checker 报错 | fail_compile | P0 |  |
| 034 | private field 与 public field 同名冲突，checker 报错 | fail_compile | P0 |  |
| 035 | private method 不能满足 interface public method，checker 报错 | fail_compile | P0 |  |
| 036 | private field 不能满足 interface public property，checker 报错 | fail_compile | P0 |  |
| 037 | private static method 外部访问，checker 报错 | fail_compile | P0 |  |
| 038 | protected field 外部访问，checker 报错 | fail_compile | P0 |  |
| 039 | protected method 外部调用，checker 报错 | fail_compile | P0 |  |
| 040 | protected field 不能满足 interface public property，checker 报错 | fail_compile | P0 |  |
| 041 | protected method 不能满足 interface public method，checker 报错 | fail_compile | P0 |  |
| 042 | public method override 为 protected，checker 报错 | fail_compile | P0 |  |
| 043 | public method override 为 private，checker 报错 | fail_compile | P0 |  |
| 044 | protected method override 为 private，checker 报错 | fail_compile | P0 |  |
| 045 | 子类直接 override private method，如 ArkTS 禁止则 checker 报错 | fail_compile | P0 |  |
| 046 | 实例访问 static private/protected/public member，checker 报错 | fail_compile | P0 |  |
| 047 | 外部访问 private static field，checker 报错 | fail_compile | P0 |  |
| 048 | 外部访问 protected static field，checker 报错 | fail_compile | P0 |  |
| 049 | static override 中可见性收窄，checker 报错 | fail_compile | P0 |  |
| 050 | private constructor 外部 new，checker 报错，如支持 constructor visibility | fail_compile | P0 |  |
| 051 | protected constructor 外部 new，checker 报错，如支持 constructor visibility | fail_compile | P0 |  |
| 052 | private constructor 继承边界非法时，checker 报错 | fail_compile | P0 |  |
| 053 | private getter 外部读取，checker 报错，如支持 getter | fail_compile | P0 |  |
| 054 | private setter 外部写入，checker 报错，如支持 setter | fail_compile | P0 |  |
| 055 | protected getter/setter 外部访问，checker 报错，如支持 accessor | fail_compile | P0 |  |
| 056 | abstract public method 实现为 protected/private，checker 报错 | fail_compile | P0 |  |
| 057 | abstract protected method 实现为 private，checker 报错 | fail_compile | P0 |  |
| 058 | object literal 不能满足含 private 成员的 class type，checker 报错 | fail_compile | P0 |  |
| 059 | object literal 不能满足含 protected 成员的 class type，checker 报错 | fail_compile | P0 |  |
| 060 | 跨模块 import class 后外部访问 private field，checker 报错 | fail_compile | P0 |  |
| 061 | 跨模块 import class 后非子类访问 protected field，checker 报错 | fail_compile | P1 |  |
| 062 | class implements interface 时成员可见性不兼容，checker 报错 | fail_compile | P1 |  |
| 063 | 默认可见性是否等价 public 的 ArkTS 边界 | boundary | P1 |  |
| 064 | private method 是否允许 override 或仅遮蔽的边界 | boundary | P1 |  |
| 065 | 子类声明同名 private method 是否仅遮蔽的边界 | boundary | P1 |  |
| 066 | protected field 通过基类引用/子类引用访问边界 | boundary | P1 |  |
| 067 | protected method override 为 public 是否允许的边界 | boundary | P1 |  |
| 068 | constructor visibility 支持与否边界 | boundary | P1 |  |
| 069 | getter/setter visibility 支持与否边界 | boundary | P1 |  |
| 070 | ECMAScript #private 支持与否边界 | boundary | P1 |  |
| 071 | TypeScript-style private 运行时是否仍为普通属性边界 | boundary | P1 |  |
| 072 | dynamic ESObject 是否可绕过 visibility 的边界 | boundary | P1 |  |
| 073 | private/protected 对 union class type 的影响边界 | boundary | P1 |  |
| 074 | 动态 ESObject 绕过 visibility 后访问缺失属性，记录运行时行为 | fail_runtime | P1 |  |
| 075 | ECMAScript #private 外部访问 SyntaxError/TypeError，如 ArkTS 支持 | fail_runtime | P1 |  |
| 076 | #private brand check 失败抛 TypeError，如 ArkTS 支持 | fail_runtime | P1 |  |
| 077 | private/protected 方法体自身抛异常并向 public wrapper 传播 | fail_runtime | P1 |  |
| 078 | 跨模块加载失败导致 class 不可用 | fail_runtime | P1 |  |
| 079 | visibility 与 interface：public field 满足 interface property | integration | P0 |  |
| 080 | visibility 与 interface：private/protected field 不满足 interface property | integration | P0 |  |
| 081 | visibility 与 interface：public method 满足 interface method | integration | P0 |  |
| 082 | visibility 与 interface：private/protected method 不满足 interface method | integration | P0 |  |
| 083 | visibility 与 inheritance：protected 成员在多层继承中访问 | integration | P0 |  |
| 084 | visibility 与 override：public 不能收窄为 protected/private | integration | P0 |  |
| 085 | visibility 与 abstract：abstract protected method 子类实现 | integration | P0 |  |
| 086 | visibility 与 static side：protected static method 子类调用 | integration | P0 |  |
| 087 | visibility 与 generic class compatibility | integration | P0 |  |
| 088 | visibility 与 object literal compatibility | integration | P0 |  |
| 089 | visibility 与 module export/import | integration | P0 |  |
| 090 | visibility 与 readonly field 写入限制 | integration | P0 |  |
| 091 | 回归：private field 外部访问未报错 | regression | P0 |  |
| 092 | 回归：protected method 外部调用未报错 | regression | P0 |  |
| 093 | 回归：private 成员错误满足 interface public member | regression | P0 |  |
| 094 | 回归：public override 为 protected 未报错 | regression | P0 |  |
| 095 | 回归：object literal 错误满足含 private 成员 class type | regression | P0 |  |
| 096 | 回归：跨模块 private/protected 可见性丢失 | regression | P0 |  |
| 097 | 回归：static private/protected 被实例访问未报错 | regression | P0 |  |
| 098 | 回归：generic class private/protected 兼容性判断错误 | regression | P0 |  |
