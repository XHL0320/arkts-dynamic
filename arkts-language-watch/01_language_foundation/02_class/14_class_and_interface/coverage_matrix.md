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

<!-- CLASS_INTERFACE_DETAILED_WATCH_V1 -->
# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
| --- | -------------------- | ---- | ---- | ------ | ---- | -- |
| class implements 空 interface，编译通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| class implements 单个 interface 并实现 required property 和 method | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| class implements 多个不冲突 interface 并全部实现 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| class implements interface 且包含额外 public 成员，编译通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| class implements interface 后实例赋值给 interface 类型变量 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| interface 类型变量调用 class 实现的方法并返回正确值 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| interface 类型变量访问 class 实现的属性并返回正确值 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| class public field 实现 interface property | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| class field 类型与 interface property 类型一致 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| class public method 实现 interface method | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| class method 参数类型与 interface method 一致 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| class method 返回类型与 interface method 一致 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| inherited public field 满足 interface property | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| inherited public method 满足 interface method | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| class extends base class and implements interface，base 成员满足 interface | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| derived class 覆盖 base method 后仍满足 interface | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| interface A extends B 后 class implements A 并实现全部成员 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| interface 多继承后 class implements 派生 interface 并实现全部成员 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| abstract class implements interface 并完整实现成员 | ArkTS-specific | pass | 否 |  | P0 |  |
| abstract class 声明 abstract method 对应 interface method，concrete subclass 最终实现 | ArkTS-specific | pass | 否 |  | P0 |  |
| abstract class concrete field 满足 interface property | ArkTS-specific | pass | 否 |  | P1 |  |
| abstract class concrete method 满足 interface method | ArkTS-specific | pass | 否 |  | P1 |  |
| generic class implements generic interface<T> | ArkTS-specific | pass | 否 |  | P1 |  |
| generic class implements instantiated interface<number> | ArkTS-specific | pass | 否 |  | P1 |  |
| generic class field 类型 T 满足 interface property T | ArkTS-specific | pass | 否 |  | P1 |  |
| generic class method 参数和返回 T 满足 interface method | ArkTS-specific | pass | 否 |  | P1 |  |
| interface function property 由 class function-typed field 实现，如 ArkTS 支持 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| export interface 后 class implements 通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| import interface 后 class implements 通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| factory method 返回 interface 类型并返回 class instance | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| implements interface 名称不存在，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| implements 非 interface 类型，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| class 缺少 interface property，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| class 缺少 interface method，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| class field 类型与 interface property 类型不一致，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| class method 参数类型与 interface method 不一致，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| class method 返回类型与 interface method 不一致，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| class method 参数个数不足导致签名不兼容，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| class method 参数个数过多导致签名不兼容，checker 报错或记录差异 | Mixed | fail_compile | 否 |  | P0 |  |
| private field 不能满足 interface public property，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| protected field 不能满足 interface public property，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| private method 不能满足 interface public method，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| protected method 不能满足 interface public method，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| static field 不能满足 instance interface property，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| static method 不能满足 instance interface method，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| class implements 多 interface 时缺少其中一个成员，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 两个 interface 同名 property 类型冲突，class 同时 implements 时报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 两个 interface 同名 method 签名冲突，class 同时 implements 时报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| interface extends interface 后 class 缺少 base interface 成员，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| derived class 覆盖 base method 后签名不兼容 interface，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| protected/private inherited 成员不能满足 public interface 成员，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| abstract class implements interface 但 concrete 子类未最终实现，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| abstract protected method 不能满足 public interface method，checker 报错或边界记录 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| generic class implements instantiated interface 时字段类型实参错误，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| generic class method 返回 T 不满足 interface 返回类型，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| generic method in interface 由 class generic method 实现时约束不兼容，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| readonly interface property 与 class field 兼容规则不满足时 checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| optional property 不满足 ArkTS 规则时 checker 报错，如支持 optional | Mixed | fail_compile | 否 |  | P0 |  |
| index signature 不支持时 class implements 带 index signature interface，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| constructor signature 不支持时 class implements 构造器接口，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| interface 继承 class 不支持时 checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| interface 类型在运行时值位置使用，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| instanceof interface 不适用，checker 报错或记录差异 | ES2022 | fail_compile | 否 |  | P0 |  |
| class constructor 被错误用于满足 instance interface，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 跨文件 interface 成员新增后 class implements 缺少成员，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal 赋值给 interface 类型缺少 required member，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 未声明 implements 但结构满足 interface 的赋值若 ArkTS 不允许则 checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P1 |  |
| default export class implements imported interface 但缺少成员，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P1 |  |
| class 未声明 implements 但结构满足 interface 是否可赋值的 ArkTS 边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
| object literal 与 class instance 均满足 interface 时兼容差异边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
