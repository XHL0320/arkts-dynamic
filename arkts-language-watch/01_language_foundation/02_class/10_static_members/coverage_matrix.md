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

<!-- CLASS_STATIC_MEMBERS_DETAILED_WATCH_V1 -->
# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
| --- | -------------------- | ---- | ---- | ------ | ---- | -- |
| 声明 static number field 并通过 class name 读取 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| 声明 static string field 并通过 class name 读取 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| 声明 static boolean field 并通过 class name 读取 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| 声明 static bigint field 并通过 class name 读取，如 ArkTS 支持 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| 声明 static object field 并访问对象属性 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| 声明 static array field 并读取数组元素 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| static field 带类型注解且初始化值匹配 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| static field 省略类型并依赖初始化值推断 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| static field 无初始化值的默认值边界 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| static field 外部赋值类型正确 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| 声明无参 static method 并通过 class name 调用 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| 声明带参 static method 并传入正确参数 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| static method 返回 void | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| static method 返回 number/string/object | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| static method 调用同类 static method | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| static method 访问同类 static field | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| instance method 中通过 class name 访问 static field | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| instance method 中通过 class name 调用 static method | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| static method 中使用 this 访问 static field | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| static method 中使用 this 调用 static method | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| derived class 访问 inherited static field | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| derived class 调用 inherited static method | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| derived class 遮蔽 base static field | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| derived class 覆盖/遮蔽 base static method | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| derived static method 中调用 super.staticMethod()，如 ArkTS 支持 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| public static field 外部可访问 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| private static field 类内可访问 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| protected static field 子类可访问 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| readonly static field 初始化后外部读取 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| abstract class 中声明 static method 并由子类继承 | ArkTS-specific | pass | 否 |  | P1 |  |
| factory static method 返回 interface type | ArkTS-specific | pass | 否 |  | P1 |  |
| export class with static field 后 import 访问通过 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| export class with static method 后 import 调用通过 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| static field 初始化值与类型不一致，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static field 外部赋值类型错误，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static method 参数类型错误，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static method 参数个数不足，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static method 参数个数过多，checker 报错或记录差异 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static method 返回值类型错误，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static field 通过 instance 访问，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static method 通过 instance 调用，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| instance method 通过 class name 直接调用，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| instance field 通过 class name 直接访问，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| static method 中访问 instance field，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static method 中调用 instance method，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static method 中 this 访问 instance field，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static method 覆盖参数类型不兼容，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static method 覆盖返回类型不兼容，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| super.staticMethod() 参数类型错误，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static method 中错误调用 super()，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| private static field 外部访问，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| private static method 外部调用，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| protected static field 外部访问，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| protected static method 外部调用，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| readonly static field 外部赋值，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| generic class static member 直接使用类类型参数 T，checker 报错或边界记录 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| Box<number>.staticMember 这类实例化类型访问 static，checker 报错或边界记录 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static member 不能满足 instance interface property，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static method 不能满足 instance interface method，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| abstract static member 不支持时声明，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static block 不支持时使用 static block，parser/checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| static block 中访问 instance field，checker 报错，如支持 static block | ES2022 | fail_compile | 否 |  | P0 |  |
| 跨模块访问 static private/protected，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P1 |  |
| constructor/static-side interface 不支持时使用，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P1 |  |
| static block 支持与否的 ArkTS 边界 | ES2022 | boundary | 否 |  | P1 |  |
