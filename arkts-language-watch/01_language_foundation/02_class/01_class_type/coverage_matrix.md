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

<!-- CLASS_TYPE_DETAILED_WATCH_V1 -->
# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
| --- | -------------------- | ---- | ---- | ------ | ---- | -- |
| let a: A = new A() 使用 class 作为实例类型通过 | Mixed | pass | 否 |  | P0 |  |
| 函数参数类型为 class instance type，传入 new A() 通过 | Mixed | pass | 否 |  | P0 |  |
| 函数返回值类型为 class instance type，返回 new A() 通过 | Mixed | pass | 否 |  | P0 |  |
| Array<A> 保存多个 A 实例通过 | Mixed | pass | 否 |  | P0 |  |
| nullable class type A | null 接收 new A() 和 null，如 ArkTS 支持 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| union class type A | B 接收 A/B 实例，如 ArkTS 支持 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| class type 字段保存另一个 class 实例 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| interface property 类型为 class type，并由 class instance 赋值 | ArkTS-specific | pass | 否 |  | P0 |  |
| class type 作为 generic type argument，例如 Box<A> | ArkTS-specific | pass | 否 |  | P0 |  |
| class 名作为 constructor value 赋给变量 | Mixed | pass | 否 |  | P0 |  |
| class value 作为函数参数传递 | Mixed | pass | 否 |  | P0 |  |
| class value 作为函数返回值返回 | Mixed | pass | 否 |  | P0 |  |
| class value 通过 new 创建实例 | Mixed | pass | 否 |  | P0 |  |
| class export/import 后作为类型使用 | Mixed | pass | 否 |  | P0 |  |
| class export/import 后作为值 new 使用 | Mixed | pass | 否 |  | P0 |  |
| instance type 可访问实例字段 | Mixed | pass | 否 |  | P0 |  |
| instance type 可访问实例方法 | Mixed | pass | 否 |  | P0 |  |
| class value 可访问 static field | Mixed | pass | 否 |  | P0 |  |
| class value 可访问 static method | Mixed | pass | 否 |  | P1 |  |
| derived instance 赋值给 base class type | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| class instance 赋值给 interface type，如 ArkTS 允许 | ArkTS-specific | pass | 否 |  | P1 |  |
| abstract class type 接收 concrete subclass instance | ArkTS-specific | pass | 否 |  | P1 |  |
| generic class instance type Box<number> 读写 number 字段 | ArkTS-specific | pass | 否 |  | P1 |  |
| generic class type 作为函数参数 | ArkTS-specific | pass | 否 |  | P1 |  |
| generic class type 作为返回值 | ArkTS-specific | pass | 否 |  | P1 |  |
| instanceof class 运行时返回 true | ES2022 | pass | 否 |  | P1 |  |
| instance constructor property 指向 class constructor 的运行时边界 | Mixed | pass | 否 |  | P1 |  |
| let ctor: typeof A = A 并 new ctor()，如 ArkTS 支持 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| 未实例化 class value 赋给 instance type，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| class value 与 instance value 混用，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| class value 与普通 object value 混用，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| class value 不能当普通函数调用，checker 报错或运行时边界记录 | Mixed | fail_compile | 否 |  | P0 |  |
| instance type 不能访问 static field，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| instance type 不能访问 static method，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| class value 不能直接访问 instance field，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| class value 不能直接访问 instance method，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| base instance 赋给 derived class type，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 两个不兼容 class instance 互赋，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| private 成员导致两个 class type 不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| protected 成员导致两个 class type 不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal 缺少 class public field 时赋给 class type，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal 不能满足 class private/protected 成员，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| interface type 不能直接 new，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| interface type 与 class value 混用，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| generic class type 参数不匹配，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| generic class type 实参违反约束，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| abstract class 直接 new，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| constructor type 构造参数不匹配，checker 报错，如支持 typeof Class | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| instance member 被当作 constructor type 成员访问，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| constructor type 不支持时使用 typeof Class 类型，记录 Unsupported/fail_compile | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| class expression 不支持时使用 class expression，parser/checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| anonymous class 类型不支持时使用，parser/checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| import class type/value 混用导致 checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P1 |  |
| instance value 当函数调用，checker 报错 | Mixed | fail_compile | 否 |  | P1 |  |
| typeof Class 构造器类型是否支持的 ArkTS 边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
