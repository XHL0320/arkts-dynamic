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

<!-- CLASS_GENERIC_CLASS_DETAILED_WATCH_V1 -->
# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
| --- | -------------------- | ---- | ---- | ------ | ---- | -- |
| 声明单类型参数泛型类 Box<T> | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 声明多类型参数泛型类 Pair<K, V> | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 类型参数用于字段类型 value:T | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 类型参数用于 constructor 参数类型 | Mixed | pass | 否 |  | P0 |  |
| 类型参数用于 method 参数类型 | Mixed | pass | 否 |  | P0 |  |
| 类型参数用于 method 返回类型 | Mixed | pass | 否 |  | P0 |  |
| 类型参数用于数组类型 T[] | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 类型参数用于 nullable / union 类型，如 ArkTS 支持 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 显式类型实参 new Box<number>(1) | Mixed | pass | 否 |  | P0 |  |
| 显式类型实参 new Box<string>('x') | Mixed | pass | 否 |  | P0 |  |
| 类型实参与 constructor 参数一致 | Mixed | pass | 否 |  | P0 |  |
| 类型实参为 class type | Mixed | pass | 否 |  | P0 |  |
| 类型实参为 interface type | ArkTS-specific | pass | 否 |  | P0 |  |
| 类型实参为 array type | Mixed | pass | 否 |  | P0 |  |
| 类型实参为 generic class type | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 类型实参推断，如 ArkTS 支持 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| constructor 中初始化 T 字段 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 方法中读取 T 字段并返回 T | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 方法中写入与 T 一致的值 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly value:T 由 constructor 初始化 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| private value:T 类内访问 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| protected value:T 子类访问 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| generic class 中 generic method 使用 U | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| method 同时使用 class T 和 method U | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| T extends interface 后访问 interface 成员 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| T extends class 后访问 base public 成员 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| 默认类型参数省略时使用默认类型，如 ArkTS 支持 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| generic class extends ordinary class | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| ordinary class extends instantiated generic class | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| generic class extends generic class 并传递 T | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| generic class implements generic interface<T> | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| generic abstract class 由 concrete subclass 指定 T 实现 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| export generic class 后 import 并实例化 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| 类型实参与 constructor 参数不一致，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 类型实参个数不足，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 类型实参个数过多，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 写入与 T 不一致的值，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| T[] 字段写入不兼容元素，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly T field 外部赋值，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| static value:T 如 ArkTS 禁止，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| static method 直接使用 class T，如 ArkTS 禁止，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 未约束 T 访问成员，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 类型实参不满足 class 约束，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 类型实参不满足 interface 约束，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 默认类型参数不满足约束，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 必选类型参数出现在默认类型参数之后，如 ArkTS 禁止则报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| method 类型参数与 class 类型参数同名，如 ArkTS 禁止则报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic method 类型实参不满足约束，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| Box<string> 不能赋给 Box<number>，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| Box<Derived> 与 Box<Base> 不满足 ArkTS variance 规则，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic class implements generic interface 缺少成员，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic class implements instantiated interface 成员类型不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| ordinary class extends instantiated generic class 时 super 参数错误，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic class extends generic class 传递类型参数错误，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic override 参数类型不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic override 返回类型不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic abstract method 实现参数类型不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic abstract class 直接 new，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 类型参数在运行时值位置使用，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| Box<number>.staticMember 语法不支持时使用，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| object literal 赋给 generic class type 不满足规则，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 跨模块 generic class 类型实参错误，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic constructor overload 与 T 不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| ESObject/dynamic 传入静态可见的不兼容值，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| generic interface 约束与 class 约束不一致，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic readonly field 初始化不满足 T，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic static field 使用 T，checker 报错或边界记录 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic method 返回 T 但返回不兼容值，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic class 缺少 interface member，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic class 类型实参推断支持边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
| 类型参数命名与普通变量同名边界 | Mixed | boundary | 否 |  | P1 |  |
| 未使用的类型参数是否允许边界 | Mixed | boundary | 否 |  | P1 |  |
| nested type / local function 中 T 作用域边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
| union/object 约束支持边界 | Mixed | boundary | 否 |  | P1 |  |
| 默认类型参数支持边界 | Mixed | boundary | 否 |  | P1 |  |
