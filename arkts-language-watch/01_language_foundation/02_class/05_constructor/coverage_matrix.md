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

<!-- CLASS_CONSTRUCTOR_DETAILED_WATCH_V1 -->

# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|
| 空类默认 constructor，new 实例化通过 | Mixed | pass | 否 |  | P0 |  |
| 显式无参 constructor，new 实例化通过 | Mixed | pass | 否 |  | P0 |  |
| 单 number 参数 constructor 调用通过 | Mixed | pass | 否 |  | P0 |  |
| 多参数 constructor 调用通过 | Mixed | pass | 否 |  | P0 |  |
| constructor 参数类型注解与实参一致通过 | ArkTS-specific | pass | 否 |  | P0 |  |
| constructor 中初始化 number 字段通过 | Mixed | pass | 否 |  | P0 |  |
| constructor 中初始化 string 字段通过 | Mixed | pass | 否 |  | P0 |  |
| constructor 中访问 this 字段通过 | Mixed | pass | 否 |  | P0 |  |
| constructor 中调用实例方法通过 | Mixed | pass | 否 |  | P0 |  |
| constructor 中访问 static 成员通过 | Mixed | pass | 否 |  | P0 |  |
| constructor 可选参数未传值通过 | Mixed | pass | 否 |  | P0 |  |
| constructor rest 参数接收多个值通过 | Mixed | pass | 否 |  | P0 |  |
| constructor 默认参数使用默认值通过 | Mixed | pass | 否 |  | P0 |  |
| constructor 参数为 class 类型并传入实例通过 | ArkTS-specific | pass | 否 |  | P0 |  |
| constructor 参数为 interface 类型并传入满足对象通过 | ArkTS-specific | pass | 否 |  | P0 |  |
| constructor 参数为 array 类型并传入同元素数组通过 | ArkTS-specific | pass | 否 |  | P0 |  |
| 字段声明处初始化并由 constructor 读取通过 | Mixed | pass | 否 |  | P0 |  |
| 字段在 constructor 中赋值覆盖默认值通过 | Mixed | pass | 否 |  | P0 |  |
| readonly 字段在 constructor 中赋值通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 子类无显式 constructor 默认调用基类 constructor | Mixed | pass | 否 |  | P0 |  |
| 子类显式 constructor 调用 super() 通过 | ES2022 | pass | 否 |  | P0 |  |
| super() 后访问 this 字段通过 | ES2022 | pass | 否 |  | P0 |  |
| 基类 constructor 参数由子类 super 传递通过 | ES2022 | pass | 否 |  | P0 |  |
| abstract class constructor 由子类 super 调用通过 | ES2022 | pass | 否 |  | P0 |  |
| generic class constructor 参数为 T 并初始化字段通过 | Mixed | pass | 否 |  | P0 |  |
| constructor 抛异常可被 catch 捕获 | Mixed | pass | 否 |  | P0 |  |
| new 调用参数类型不一致，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| new 调用参数个数不足，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| new 调用参数个数过多，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| constructor 参数默认值类型不匹配，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| rest 参数不是最后一个参数，parser/checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| constructor 标注返回类型，parser/checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| constructor 声明为 static，parser/checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| constructor 声明为 async/generator，parser/checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| constructor 中字段赋值类型错误，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| constructor 中访问未声明字段，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| readonly 字段 constructor 外赋值，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 派生类 constructor 未调用 super()，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| 派生类 constructor 中 this before super，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| super() 参数类型不匹配，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| super() 参数个数不匹配，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| super() 前访问 this.field，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| super() 前调用 this.method()，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| constructor overload 实现签名不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| new 调用无匹配 constructor overload，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| private constructor 外部 new，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| protected constructor 外部 new，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| abstract class 直接 new，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic constructor 参数不满足约束，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| class implements interface 时 constructor 不参与成员检查需确认 | Mixed | fail_compile | 否 |  | P0 |  |
| constructor 参数类型省略如 ArkTS 不允许则报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 派生类 constructor 中 super() 调用多次如可静态识别则报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| constructor 中使用 unsupported TS parameter property 如 ArkTS 不支持则报错 | Mixed | fail_compile | 否 |  | P0 |  |
| constructor 不写 return 的默认行为边界 | Mixed | boundary | 否 |  | P1 |  |
| constructor return 空值边界 | ES2022 | boundary | 否 |  | P1 |  |
