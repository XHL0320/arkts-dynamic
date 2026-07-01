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
| 001 | 字段类型与初始化值一致，编译运行通过 | pass | P0 | 初始设计点 |
| 002 | 字段类型与初始化值不匹配，checker 报错 | fail_compile | P0 | 初始设计点 |
| 003 | 未初始化非可空字段处理符合 ArkTS 规则 | boundary | P0 | 初始设计点 |
| 004 | 字段默认值在实例创建时生效 | fail_runtime | P0 | 初始设计点 |
| 005 | constructor 中字段赋值类型正确 | integration | P0 | 初始设计点 |
| 006 | constructor 中字段赋值类型错误 | regression | P0 | 初始设计点 |
| 007 | 实例字段访问返回声明类型 | pass | P0 | 初始设计点 |
| 008 | 实例字段写入合法值通过 | fail_compile | P0 | 初始设计点 |
| 009 | 实例字段写入非法类型报错 | boundary | P1 | 初始设计点 |
| 010 | 重复字段声明报错 | fail_runtime | P1 | 初始设计点 |
| 011 | 字段与方法同名冲突处理 | integration | P1 | 初始设计点 |
| 012 | 继承中派生类字段遮蔽基类字段 | regression | P1 | 初始设计点 |
| 013 | 字段初始化引用前序字段 | pass | P1 | 初始设计点 |
| 014 | 字段初始化引用后序字段边界 | fail_compile | P1 | 初始设计点 |
| 015 | static field 与 instance field 同名 | boundary | P1 | 初始设计点 |
| 016 | readonly field 初始化后再赋值报错 | fail_runtime | P1 | 初始设计点 |

<!-- CLASS_FIELD_DETAILED_WATCH_V1 -->

# Test Design

## Positive Cases

覆盖字段正向用例，包括基础字段声明、类型注解、初始化、访问、赋值、static、readonly、继承和泛型字段。

## Compile Negative Cases

覆盖 parser/checker 负向用例，包括类型不匹配、重复字段、字段与方法冲突、未声明字段访问、可见性错误、readonly 写入和 interface 实现不完整。

## Runtime Error Cases

覆盖运行时异常场景，包括字段初始化表达式抛错、动态 undefined 访问、冻结对象写入和 class constructor 非 new 调用等。

## Boundary Cases

覆盖未初始化字段、字段顺序、this/super、computed field、#private field、static block、readonly object/array 内部可变性等边界。

## Type System Cases

覆盖 class as type、class as value、constructor type、instance type、assignability、object literal compatibility、interface compatibility、generic compatibility。

## Inheritance / Integration Cases

覆盖字段与继承、interface、abstract、generic、module、null safety、static/readonly/visibility 等组合场景。

## ArkTS Static Boundary Cases

记录 ArkTS 静态语言中可能前移为编译期错误的场景，例如动态属性访问、字段未初始化、this/super 初始化边界、unsupported TS 类型语法。

## test262 Candidate Cases

参考 public instance field、public static field、field initialization order、derived field initialization、field initializer this/super、computed field name、private field、static block 等 test262 方向。

## Regression Cases

记录字段初始化顺序、可见性兼容、readonly 写入、interface property 实现、动态属性访问拦截等历史缺陷方向。

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
|---|---|---|---|---|
| 001 | 空类声明并实例化通过 | pass | P0 |  |
| 002 | 单个 number 字段带类型注解和初始化值通过 | pass | P0 |  |
| 003 | 多个字段 number/string/boolean 同时声明通过 | pass | P0 |  |
| 004 | bigint 字段初始化为 bigint literal 通过 | pass | P0 |  |
| 005 | object 字段初始化为对象实例通过 | pass | P0 |  |
| 006 | array 字段初始化为 number[] 通过 | pass | P0 |  |
| 007 | 字段不带类型注解并从初始化值推断类型通过 | pass | P0 |  |
| 008 | 字段有初始化值且 constructor 不再赋值通过 | pass | P0 |  |
| 009 | 字段无初始化但 constructor 中赋值通过 | pass | P0 |  |
| 010 | nullable 字段初始化为 null 通过 | pass | P0 |  |
| 011 | union 字段分别赋值 union 成员通过 | pass | P0 |  |
| 012 | class 类型字段初始化为对应 class 实例通过 | pass | P0 |  |
| 013 | interface 类型字段初始化为满足 interface 的对象通过 | pass | P0 |  |
| 014 | 方法内读取实例字段通过 | pass | P0 |  |
| 015 | constructor 内读取和写入实例字段通过 | pass | P0 |  |
| 016 | 外部访问 public 字段通过 | pass | P0 |  |
| 017 | static 字段通过类名访问通过 | pass | P0 |  |
| 018 | readonly 字段在声明处初始化通过 | pass | P0 |  |
| 019 | readonly 字段在 constructor 中初始化通过 | pass | P0 |  |
| 020 | 子类继承并访问基类 public 字段通过 | pass | P0 |  |
| 021 | 字段初始化表达式引用前面字段通过 | pass | P0 |  |
| 022 | generic class 字段类型为 T 并赋值 T 通过 | pass | P0 |  |
| 023 | number 字段初始化为 string，checker 报错 | fail_compile | P0 |  |
| 024 | string 字段赋值 boolean，checker 报错 | fail_compile | P0 |  |
| 025 | array 字段赋值非数组，checker 报错 | fail_compile | P0 |  |
| 026 | number[] 字段写入 string[]，checker 报错 | fail_compile | P0 |  |
| 027 | class 类型字段赋值无关 class 实例，checker 报错 | fail_compile | P0 |  |
| 028 | interface 类型字段缺少必需属性，checker 报错 | fail_compile | P0 |  |
| 029 | 字段重复声明，checker/parser 报错 | fail_compile | P0 |  |
| 030 | 字段与方法同名，checker 报错 | fail_compile | P0 |  |
| 031 | 字段与 getter 同名，checker 报错或记录差异 | fail_compile | P0 |  |
| 032 | 未声明字段访问，checker 报错 | fail_compile | P0 |  |
| 033 | 动态属性访问字段 a['x']，如 ArkTS 禁止则报错 | fail_compile | P0 |  |
| 034 | readonly 字段 constructor 外赋值，checker 报错 | fail_compile | P0 |  |
| 035 | private 字段外部访问，checker 报错 | fail_compile | P0 |  |
| 036 | protected 字段外部访问，checker 报错 | fail_compile | P0 |  |
| 037 | static 字段通过实例访问，checker 报错或记录差异 | fail_compile | P0 |  |
| 038 | instance 字段通过类名访问，checker 报错 | fail_compile | P0 |  |
| 039 | class implements interface 时字段类型不兼容，checker 报错 | fail_compile | P0 |  |
| 040 | class implements interface 时缺少字段，checker 报错 | fail_compile | P0 |  |
| 041 | generic class 字段赋值不满足 T，checker 报错 | fail_compile | P0 |  |
| 042 | 字段类型使用 ArkTS 不支持的 TS 类型语法，checker 报错 | fail_compile | P0 |  |
| 043 | 字段初始化表达式类型与声明类型不匹配，checker 报错 | fail_compile | P0 |  |
| 044 | 字段初始化表达式读取后面字段的行为边界 | boundary | P1 |  |
| 045 | 字段无初始化时默认值或编译期要求边界 | boundary | P1 |  |
| 046 | 空 constructor 与字段默认初始化边界 | boundary | P1 |  |
| 047 | 字段初始化表达式调用实例方法边界 | boundary | P1 |  |
| 048 | 字段初始化表达式使用 this 边界 | boundary | P1 |  |
| 049 | static 字段与实例字段同名边界 | boundary | P1 |  |
| 050 | readonly object 字段内部属性修改边界 | boundary | P1 |  |
| 051 | readonly array 字段元素修改边界 | boundary | P1 |  |
| 052 | 字段与 constructor 参数同名边界 | boundary | P1 |  |
| 053 | 基类字段与派生类字段同名遮蔽边界 | boundary | P1 |  |
| 054 | 字段初始化顺序 Base field -> Base constructor -> Derived field -> Derived constructor | boundary | P1 |  |
| 055 | computed field name 支持情况边界 | boundary | P1 |  |
| 056 | 字段初始化表达式调用方法并抛出异常，运行时异常传播 | fail_runtime | P1 |  |
| 057 | 动态输入导致字段初始化访问 undefined 属性，运行时 TypeError | fail_runtime | P1 |  |
| 058 | Object.freeze 后 strict 模式写字段，运行时 TypeError | fail_runtime | P1 |  |
| 059 | class constructor 不通过 new 调用，运行时 TypeError | fail_runtime | P1 |  |
| 060 | class 字段实现 interface property 完整通过 | integration | P0 |  |
| 061 | class 字段缺少 interface property 报错 | integration | P0 |  |
| 062 | object literal 赋值给含字段 class 类型兼容性确认 | integration | P0 |  |
| 063 | generic class 字段类型为 T 的赋值检查 | integration | P0 |  |
| 064 | 子类继承基类字段并在方法中访问 | integration | P0 |  |
| 065 | 子类字段遮蔽基类字段并验证初始化顺序 | integration | P0 |  |
| 066 | static 字段在继承链中的访问 | integration | P0 |  |
| 067 | readonly 字段与 interface readonly property 组合 | integration | P0 |  |
| 068 | module export class 字段类型跨文件访问 | integration | P0 |  |
| 069 | nullable 字段与 null safety 组合 | integration | P0 |  |
| 070 | 字段初始化顺序历史缺陷回归 | regression | P0 |  |
| 071 | private/protected 字段兼容性历史缺陷回归 | regression | P0 |  |
| 072 | readonly 字段误允许写入回归 | regression | P0 |  |
| 073 | interface property 实现误判回归 | regression | P0 |  |
| 074 | dynamic property access 未被拦截回归 | regression | P0 |  |
