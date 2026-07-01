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

<!-- CLASS_INHERITANCE_DETAILED_WATCH_V1 -->

# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|
| 普通 class 继承普通 class 并实例化通过 | Mixed | pass | 否 |  | P0 |  |
| 派生类实例访问基类 public 字段通过 | Mixed | pass | 否 |  | P0 |  |
| 派生类实例访问基类 public 方法通过 | Mixed | pass | 否 |  | P0 |  |
| 子类新增字段并访问通过 | Mixed | pass | 否 |  | P0 |  |
| 子类新增方法并调用通过 | Mixed | pass | 否 |  | P0 |  |
| 三层继承链实例化通过 | Mixed | pass | 否 |  | P0 |  |
| 空基类继承通过 | Mixed | pass | 否 |  | P0 |  |
| 空派生类继承通过 | Mixed | pass | 否 |  | P0 |  |
| 继承链实例化后访问祖先方法通过 | Mixed | pass | 否 |  | P0 |  |
| 派生类实例 instanceof 派生类为 true | ES2022 | pass | 否 |  | P0 |  |
| 派生类实例 instanceof 基类为 true | ES2022 | pass | 否 |  | P0 |  |
| 子类继承基类字段并在方法中访问通过 | Mixed | pass | 否 |  | P0 |  |
| 子类继承基类方法并调用通过 | Mixed | pass | 否 |  | P0 |  |
| 子类覆盖基类方法并调用派生实现通过 | Mixed | pass | 否 |  | P0 |  |
| 覆盖方法参数类型一致通过 | Mixed | pass | 否 |  | P0 |  |
| 覆盖方法返回类型一致通过 | Mixed | pass | 否 |  | P0 |  |
| protected 成员在子类中访问通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly 字段继承后读取通过 | Mixed | pass | 否 |  | P0 |  |
| static 字段通过派生类名访问通过 | Mixed | pass | 否 |  | P0 |  |
| static method 通过派生类名调用通过 | Mixed | pass | 否 |  | P0 |  |
| 派生类无显式 constructor 默认调用基类 constructor | ES2022 | pass | 否 |  | P0 |  |
| 派生类显式 constructor 调用 super() 通过 | ES2022 | pass | 否 |  | P0 |  |
| super() 参数类型与基类 constructor 匹配通过 | ES2022 | pass | 否 |  | P0 |  |
| 基类 constructor 初始化字段后派生类读取通过 | ES2022 | pass | 否 |  | P0 |  |
| 抽象类由普通子类继承并实现抽象方法通过 | Mixed | pass | 否 |  | P0 |  |
| generic class 继承普通 class 通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 普通 class 继承 generic class 实例化类型通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 派生类传递泛型参数给基类通过 | Mixed | pass | 否 |  | P0 |  |
| 多继承语法，parser/checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| class 继承自身，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 循环继承，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| extends 非 class / 非 constructor，如静态可识别则报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| 基类实例赋值给派生类类型，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 派生类直接访问基类 private 字段，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 外部访问 protected 成员，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 字段遮蔽类型不兼容，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 覆盖方法参数类型不兼容，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 覆盖方法返回类型不兼容，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 覆盖方法可见性收窄，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| static 与 instance method 覆盖冲突，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 派生类 constructor 未调用 super()，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| 派生类 constructor 中 this before super，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| super() 参数类型不匹配，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| super() 参数个数不足，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| super() 参数个数过多，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| 普通类继承 abstract class 未实现 abstract method，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| abstract method 实现签名不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| private/protected 成员不能满足 public interface 成员，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic 继承中类型参数不满足约束，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic override 签名不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 实例访问 static member，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 外部访问 private/protected inherited method，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 派生类把 public 覆盖为 protected/private，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 派生类把 protected 覆盖为 private，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| class 继承 null 如 ArkTS 不支持则报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 继承表达式如 ArkTS 不支持则报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 派生类重复声明不兼容继承关系，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| extends null 支持情况边界 | ES2022 | boundary | 否 |  | P1 |  |
| 继承表达式支持情况边界 | Mixed | boundary | 否 |  | P1 |  |
| 字段遮蔽类型一致与不一致边界 | Mixed | boundary | 否 |  | P1 |  |
