# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|
| 基础正向场景 |  | pass | 否 |  | P0 |  |
| 编译负向场景 |  | fail_compile | 否 |  | P0 |  |
| 运行时异常场景 |  | fail_runtime | 否 |  | P1 |  |
| 边界场景 |  | boundary | 否 |  | P1 |  |
| 类型系统组合 |  | integration | 否 |  | P0 |  |
| test262 对照 |  | mapping | 否 |  | P1 |  |
| 回归用例 |  | regression | 否 |  | P0 |  |

<!-- CLASS_INITIALIZATION_ORDER_DETAILED_WATCH_V1 -->
# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
| --- | -------------------- | ---- | ---- | ------ | ---- | -- |
| 单个实例字段初始化后实例读取值正确 | Mixed | pass | 否 |  | P0 |  |
| 多个实例字段按声明顺序初始化并记录副作用顺序 | Mixed | pass | 否 |  | P0 |  |
| 字段初始化表达式引用前一个字段并读取已初始化值 | Mixed | pass | 否 |  | P0 |  |
| 字段初始化表达式使用字面量且类型正确 | Mixed | pass | 否 |  | P0 |  |
| 字段初始化表达式使用函数调用并记录调用顺序 | Mixed | pass | 否 |  | P0 |  |
| 字段初始化表达式使用 this.field，如 ArkTS 支持 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| 字段初始化表达式使用 this.method()，如 ArkTS 支持 | Mixed | pass | 否 |  | P0 |  |
| 字段初始化表达式访问 static field | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| 字段初始化表达式调用 static method | Mixed | pass | 否 |  | P0 |  |
| 字段声明处初始化后 constructor 读取字段 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| 字段声明处初始化后 constructor 再赋值 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| 字段无初始化值但 constructor 中赋值 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| constructor 中读取字段初始值 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| constructor 中调用方法读取字段 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| readonly 字段声明处初始化 | Mixed | pass | 否 |  | P0 |  |
| readonly 字段在 constructor 中初始化，如 ArkTS 支持 | Mixed | pass | 否 |  | P0 |  |
| 基类字段先于基类 constructor 初始化 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| 基类 constructor 读取基类字段 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| 基类 constructor 修改基类字段 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| 基类多字段按声明顺序初始化 | Mixed | pass | 否 |  | P0 |  |
| 派生类 constructor 调用 super() 后实例化通过 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| super() 后派生类字段初始化 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| 派生类字段初始化后执行派生类 constructor 剩余语句 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| 派生类 constructor 读取派生类字段 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| 派生类 constructor 读取并修改基类字段 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| Base field -> Base constructor -> Derived field -> Derived constructor body 顺序 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| 多层继承 A/B/C 初始化顺序 | Mixed | pass | 否 |  | P1 |  |
| Derived 字段与 Base 字段同名时分别初始化 | Mixed | pass | 否 |  | P1 |  |
| static field 单个初始化后通过 class name 读取 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| 多个 static field 按声明顺序初始化 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| static field 初始化表达式引用前序 static field | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| static field 初始化表达式调用 static method | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| static field 初始化只执行一次 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| Base static field 初始化先于 Derived static field | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| Derived static field 访问 Base static field | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| 字段初始化表达式类型错误，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| constructor 中字段赋值类型错误，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 字段无初始化值且 constructor 未赋值，如 ArkTS 要求 definite assignment 则报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly 字段 constructor 外赋值，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly 字段声明处初始化后 constructor 再赋值，如 ArkTS 禁止则报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 字段初始化表达式引用后序字段，如 ArkTS 禁止则报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 字段初始化表达式调用实例方法，如 ArkTS 禁止则报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 字段初始化表达式访问不存在成员，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 派生类 constructor 中 super() 前访问 this，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 派生类 constructor 中 super() 前访问 this.field，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 派生类 constructor 中 super() 前调用 this.method()，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| super() 参数类型不匹配，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| super() 参数个数不足，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 字段遮蔽类型不一致，如 ArkTS 禁止则报错 | Mixed | fail_compile | 否 |  | P0 |  |
| static field 初始化表达式类型错误，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| static field 初始化表达式访问 instance field，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| static block 中访问 instance field，checker 报错，如支持 static block | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| static block 不支持时使用 static block，parser/checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic T 字段初始化不满足约束，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic class constructor 初始化 T 字段类型错误，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly static field constructor/class 外赋值，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| static field 初始化表达式引用不存在 static member，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| Base constructor 参数传递类型错误，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| Derived constructor 中 super 参数传递类型错误，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P1 |  |
| module/circular import 静态可判定非法引用，如 ArkTS 支持则 checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P1 |  |
| constructor 中 return object/primitive 如 ArkTS 静态禁止则 checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P1 |  |
| 字段初始化表达式抛异常导致构造中断 | Mixed | fail_runtime | 否 |  | P0 |  |
| 字段初始化表达式调用方法时方法抛异常 | Mixed | fail_runtime | 否 |  | P0 |  |
| constructor 抛异常导致对象构造中断 | ES2022 / ArkTS-specific | fail_runtime | 否 |  | P0 |  |
| super() 内 base constructor 抛异常后 Derived field 不初始化 | ES2022 / ArkTS-specific | fail_runtime | 否 |  | P0 |  |
| this before super 未被静态拦截时运行时 ReferenceError | ES2022 / ArkTS-specific | fail_runtime | 否 |  | P0 |  |
| Derived field 初始化表达式抛异常后 constructor 剩余语句不执行 | ES2022 / ArkTS-specific | fail_runtime | 否 |  | P0 |  |
| static field 初始化表达式抛异常导致 class evaluation 失败 | ES2022 / ArkTS-specific | fail_runtime | 否 |  | P0 |  |
| static block 抛异常导致 class evaluation 失败，如支持 static block | ES2022 / ArkTS-specific | fail_runtime | 否 |  | P0 |  |
| Base static initializer 抛异常后 Derived static 不初始化 | Mixed | fail_runtime | 否 |  | P0 |  |
