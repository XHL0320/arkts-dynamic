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

<!-- CLASS_READONLY_MEMBERS_DETAILED_WATCH_V1 -->
# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
| --- | -------------------- | ---- | ---- | ------ | ---- | -- |
| readonly number field 声明处初始化并外部读取 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly string field 声明处初始化并外部读取 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly boolean field 声明处初始化并外部读取 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly bigint field 声明处初始化，如 ArkTS 支持 bigint | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly object field 声明处初始化并读取引用 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly array field 声明处初始化并读取引用 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly class type field 声明处初始化 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly interface type field 声明处初始化 | ArkTS-specific | pass | 否 |  | P0 |  |
| readonly 字段省略类型并依赖初始化值推断 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly 字段类型注解与初始化值一致 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly 字段外部读取通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly 字段在 constructor 中初始化 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly 字段声明处不初始化但 constructor 中初始化 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly 字段由 constructor 参数赋值 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly 字段所有 constructor 分支均赋值 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly 字段初始化顺序与普通字段一致 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly object field 内部普通属性修改，如 ArkTS 允许 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly array field 元素修改，如 ArkTS 允许 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly static field 声明处初始化并通过 class name 读取 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| public readonly field 外部可读不可写 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| private readonly field 类内可读 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| protected readonly field 子类可读 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| 子类继承基类 readonly field 并读取 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| class readonly field 满足 interface readonly property，如支持 interface readonly | ArkTS-specific | pass | 否 |  | P1 |  |
| generic class readonly field 类型为 T 并由 constructor 初始化 | ArkTS-specific | pass | 否 |  | P1 |  |
| export class with readonly field 后 import 读取 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| readonly 字段类型注解与初始化值不一致，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly 字段 constructor 赋值类型错误，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly 字段部分 constructor 分支未赋值，checker 报错或边界记录 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly 字段声明处初始化后 constructor 再赋值，checker 报错或边界记录 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly 字段 constructor 中重复赋值，checker 报错或边界记录 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly 字段 constructor 外赋值，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly 字段实例方法中赋值，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly 字段 static method 中赋值，checker 报错或边界记录 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 外部对 readonly 字段赋值，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 通过对象别名对 readonly 字段赋值，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 通过 class type 引用对 readonly 字段赋值，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 通过 interface readonly property 引用赋值，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| readonly 字段自增，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly 字段复合赋值，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly object field 引用重新赋值，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly array field 引用重新赋值，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly static field 外部赋值，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly static field 类内 static method 赋值，checker 报错或边界记录 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| private readonly field 外部读取或写入，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| protected readonly field 外部读取或写入，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 子类方法修改继承 readonly field，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 派生类 constructor 直接初始化基类 readonly field，checker 报错或边界记录 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 子类普通字段遮蔽基类 readonly field，如 ArkTS 禁止则报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| class readonly field 类型与 interface readonly property 不一致，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| protected/private readonly field 不能满足 public interface property，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| abstract readonly field 不支持时声明，parser/checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| generic readonly field 初始化不满足约束，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| import class 后写 readonly field，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly static field import 后写入，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal 赋给含 readonly field class type 不满足规则，checker 报错或边界记录 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| union 类型引用下写 readonly field，checker 报错或边界记录 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| readonly 是否纯编译期限制边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
| readonly 是否影响 runtime property writable descriptor 边界 | ES2022 / Mixed | boundary | 否 |  | P1 |  |
| readonly 字段 constructor 多分支 definite assignment 边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
| readonly object field 内部属性可变性边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
| readonly object field 嵌套属性可变性边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
| readonly array field 元素修改边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
| readonly array field push/pop 边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
| readonly 与 deep readonly 不等价边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
