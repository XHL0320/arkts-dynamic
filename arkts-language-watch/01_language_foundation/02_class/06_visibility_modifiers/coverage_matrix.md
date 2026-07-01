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

<!-- CLASS_VISIBILITY_DETAILED_WATCH_V1 -->
# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
| --- | -------------------- | ---- | ---- | ------ | ---- | -- |
| public field 外部可访问 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| public method 外部可调用 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| public static field 通过类名访问 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| public static method 通过类名调用 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| public 成员在子类中可访问 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| public 成员可被子类 override 并保持 public | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| public 成员满足 interface public property/method | ArkTS-specific | pass | 否 |  | P0 |  |
| 默认可见性与显式 public 等价，如 ArkTS 确认 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| private field 类内方法中可访问 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| private field constructor 中可访问 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| private method 类内可调用 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| private method 可访问 private field | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| private method 被 public method 间接调用 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| private static method 类内可调用 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| protected field 类内可访问 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| protected field 子类方法中可访问 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| protected method 子类可调用 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| protected method 在多层继承中可调用 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| protected method 被 public method 间接调用 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| protected method override 为 protected 通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| protected method override 为 public 的行为按 ArkTS 支持确认 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| protected static method 子类访问通过，如 ArkTS 支持 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| private constructor 类内 static factory 可调用，如 ArkTS 支持 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| protected constructor 子类可通过 super() 调用，如 ArkTS 支持 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| public getter/setter 外部读写通过，如 ArkTS 支持 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| getter public setter private 只读暴露模式通过，如 ArkTS 支持 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| export class with private field 后类内访问仍通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| import class 后子类可访问 protected field | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| private field 类外访问，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| private field 子类直接访问，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| private method 类外调用，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| private method 子类直接调用，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| private field 重复声明，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| private field 与 public field 同名冲突，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| private method 不能满足 interface public method，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| private field 不能满足 interface public property，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| private static method 外部访问，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| protected field 外部访问，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| protected method 外部调用，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| protected field 不能满足 interface public property，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| protected method 不能满足 interface public method，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| public method override 为 protected，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| public method override 为 private，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| protected method override 为 private，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 子类直接 override private method，如 ArkTS 禁止则 checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 实例访问 static private/protected/public member，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 外部访问 private static field，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 外部访问 protected static field，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| static override 中可见性收窄，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| private constructor 外部 new，checker 报错，如支持 constructor visibility | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| protected constructor 外部 new，checker 报错，如支持 constructor visibility | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| private constructor 继承边界非法时，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| private getter 外部读取，checker 报错，如支持 getter | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| private setter 外部写入，checker 报错，如支持 setter | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| protected getter/setter 外部访问，checker 报错，如支持 accessor | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| abstract public method 实现为 protected/private，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| abstract protected method 实现为 private，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| object literal 不能满足含 private 成员的 class type，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal 不能满足含 protected 成员的 class type，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 跨模块 import class 后外部访问 private field，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 跨模块 import class 后非子类访问 protected field，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P1 |  |
| class implements interface 时成员可见性不兼容，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P1 |  |
| 默认可见性是否等价 public 的 ArkTS 边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
| private method 是否允许 override 或仅遮蔽的边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
| 子类声明同名 private method 是否仅遮蔽的边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
