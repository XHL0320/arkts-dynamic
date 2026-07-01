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

<!-- CLASS_SUPER_DETAILED_WATCH_V1 -->
# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
| --- | -------------------- | ---- | ---- | ------ | ---- | -- |
| 派生类 constructor 中调用 super() 后实例化通过 | ES2022 | pass | 否 |  | P0 |  |
| super() 向基类 constructor 传递 number 参数并初始化基类字段 | ES2022 | pass | 否 |  | P0 |  |
| super() 向基类 constructor 传递 string 参数并初始化基类字段 | ES2022 | pass | 否 |  | P0 |  |
| super() 参数类型与基类 constructor 完全匹配 | ES2022 | pass | 否 |  | P0 |  |
| 派生类无显式 constructor 时默认调用基类 constructor | ES2022 | pass | 否 |  | P0 |  |
| 多层继承中 C constructor 调用 B super，B 调用 A super | ES2022 | pass | 否 |  | P0 |  |
| super() 后访问 this.field 并赋值通过 | ES2022 | pass | 否 |  | P0 |  |
| super() 后调用 this.method() 通过 | ES2022 | pass | 否 |  | P0 |  |
| super() 后初始化派生类字段通过 | ES2022 | pass | 否 |  | P0 |  |
| constructor 中只调用一次 super() 通过 | ES2022 | pass | 否 |  | P0 |  |
| 子类方法中调用基类实例方法 super.method() 通过 | ES2022 | pass | 否 |  | P0 |  |
| 覆盖方法中调用 super.method() 后追加派生类逻辑 | ES2022 | pass | 否 |  | P0 |  |
| super.method() 返回 number 并被派生类方法返回 | ES2022 | pass | 否 |  | P0 |  |
| super.method() 返回 string 并被派生类方法返回 | ES2022 | pass | 否 |  | P0 |  |
| super.method() 返回 object 并访问对象字段 | ES2022 | pass | 否 |  | P0 |  |
| super.method() 参数类型正确时调用通过 | ES2022 | pass | 否 |  | P0 |  |
| 子类方法中调用基类 protected 方法，按 ArkTS 支持情况通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| abstract class 中 concrete method 被子类通过 super.method() 调用 | ES2022 | pass | 否 |  | P0 |  |
| 子类实现 interface method 时复用基类同名 public 方法 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| generic base constructor 参数通过 super(value) 传递 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| generic base method 通过 super.method(value) 调用 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| super.method() 返回泛型 T 并赋值给 T 类型变量 | ES2022 | pass | 否 |  | P1 |  |
| 派生类 static method 中调用 super.staticMethod() 通过 | ES2022 | pass | 否 |  | P1 |  |
| 多层 static 继承中 super.staticMethod() 逐层调用通过 | ES2022 | pass | 否 |  | P1 |  |
| static method 中 super.staticMethod() 的 this 绑定为派生类 constructor | ES2022 | pass | 否 |  | P1 |  |
| 方法内 arrow function 捕获 super.method() 并调用通过，如 ArkTS 支持 | ES2022 | pass | 否 |  | P1 |  |
| constructor 内 arrow function 在 super() 后捕获 super.method()，如 ArkTS 支持 | ES2022 | pass | 否 |  | P1 |  |
| super 访问基类 getter 读取值，如 ArkTS 支持 getter | ES2022 | pass | 否 |  | P1 |  |
| super 调用基类 setter 写入值，如 ArkTS 支持 setter | ES2022 | pass | 否 |  | P1 |  |
| 非派生类 constructor 中调用 super()，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| 普通实例方法中调用 super() 作为函数，parser/checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| static method 中调用 super() 作为函数，parser/checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| class 外部作用域使用 super，parser 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| 普通嵌套 function 中使用 super.method()，parser/checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| 派生类 constructor 中 super() 前访问 this，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| 派生类 constructor 中 super() 前访问 this.field，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| 派生类 constructor 中 super() 前给 this.field 赋值，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| 派生类 constructor 中 super() 前调用 this.method()，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| 派生类 constructor 中部分控制流路径未调用 super()，checker 报错或差异记录 | ES2022 | fail_compile | 否 |  | P0 |  |
| super() 参数类型与基类 constructor 不匹配，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| super() 参数个数不足，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| super() 参数个数过多且 ArkTS 不允许多余参数，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| constructor 中静态可判定调用两次 super()，checker 报错或运行时边界记录 | ES2022 | fail_compile | 否 |  | P0 |  |
| loop 中调用 super() 导致初始化次数不确定，checker 报错或差异记录 | ES2022 | fail_compile | 否 |  | P0 |  |
| super.method() 参数类型不匹配，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| super.method() 参数个数不足，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| super.method() 参数个数过多且 ArkTS 不允许多余参数，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| super.missingMethod() 调用不存在基类方法，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| 实例方法中通过 super 访问基类 static method，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| static method 中通过 super 访问基类实例方法，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| super 访问基类 private method，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| super 访问基类 private field，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| super 写 readonly 字段，checker 报错，如支持 super field | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 子类调用 super.abstractMethod() 但基类只有 abstract 声明无实现，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| interface method 中误用 super 访问 interface 成员，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic base constructor super(value) 传入不满足约束的值，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P1 |  |
| generic base method super.method(value) 参数不满足 T 约束，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P1 |  |
| 非派生类实例方法中使用 super.method()，checker 报错 | ES2022 | fail_compile | 否 |  | P1 |  |
| super 访问字段能力不支持时，super.field 作为 Unsupported/fail_compile 记录 | ES2022 | fail_compile | 否 |  | P1 |  |
| 派生类 constructor 中 return 前是否必须已调用 super() 的边界 | ES2022 | boundary | 否 |  | P1 |  |
