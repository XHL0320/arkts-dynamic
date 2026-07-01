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

<!-- CLASS_ABSTRACT_DETAILED_WATCH_V1 -->
# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
| --- | -------------------- | ---- | ---- | ------ | ---- | -- |
| 声明空 abstract class，编译通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| abstract class 中声明普通字段并由子类实例继承 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| abstract class 中声明普通方法并由子类实例调用 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| abstract class 中声明无参 constructor，子类 super() 调用通过 | Mixed | pass | 否 |  | P0 |  |
| abstract class 中声明带参 constructor，子类 super(value) 调用通过 | Mixed | pass | 否 |  | P0 |  |
| abstract class 中声明单个 abstract method，普通子类实现后通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| abstract class 中声明多个 abstract method，普通子类全部实现后通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| abstract class 同时包含 abstract method 和 concrete method，子类实现抽象方法后通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| abstract class 同时包含 abstract method 和 concrete field，子类继承字段并实现方法 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| abstract class 作为变量类型接收子类实例 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| abstract class 作为函数参数类型接收子类实例 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| abstract class 作为返回值类型返回子类实例 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| abstract class 数组类型保存多个子类实例 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 通过抽象类引用调用 concrete method | Mixed | pass | 否 |  | P0 |  |
| 通过抽象类引用调用子类实现的 abstract method | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 子类实例 instanceof abstract base class 行为正确 | Mixed | pass | 否 |  | P0 |  |
| abstract class 继承普通 class 并继承其 concrete method | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| abstract class 继承 abstract class 并保留未实现抽象方法 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 中间 abstract 子类实现部分 abstract method 后继续为 abstract | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| 最终 concrete 子类实现多层继承中的全部 abstract method | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| abstract class constructor 初始化字段，子类实例读取字段通过 | Mixed | pass | 否 |  | P1 |  |
| abstract class concrete method 调用自身字段通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| abstract class implements interface 并用 concrete method 满足 interface method | ArkTS-specific | pass | 否 |  | P1 |  |
| abstract class abstract method 对应 interface method，concrete 子类最终实现 | ArkTS-specific | pass | 否 |  | P1 |  |
| generic abstract class 以 T 作为字段类型并由子类指定实参 | ArkTS-specific | pass | 否 |  | P1 |  |
| abstract method 使用泛型 T，子类实现返回具体 T | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| generic abstract class constructor 参数为 T 并初始化字段 | Mixed | pass | 否 |  | P1 |  |
| module export/import abstract class 后由子类继承并实例化通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| 直接 new abstract class，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| abstract method 带方法体，parser/checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 非 abstract class 中声明 abstract method，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 普通子类未实现 abstract method，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 普通子类只实现部分 abstract method，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 子类实现 abstract method 参数类型不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 子类实现 abstract method 返回类型不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 子类实现 public abstract method 时可见性收窄为 protected，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 子类实现 public abstract method 时可见性收窄为 private，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| private abstract method 如 ArkTS 禁止，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| abstract method 与 concrete method 同名冲突，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| abstract method 重复声明且非合法 overload，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| abstract method overload 实现签名不兼容，checker 报错，如支持 overload | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| abstract field 语法不支持时声明 abstract field，parser/checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| abstract field 实现类型不兼容，checker 报错，如支持 abstract field | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| abstract accessor 语法不支持时声明 abstract accessor，parser/checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| abstract static method 不支持时声明 abstract static method，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| abstract base constructor super() 参数类型错误，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| abstract base constructor super() 参数个数不足，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| abstract base constructor super() 参数个数过多且 ArkTS 不允许，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| abstract class implements interface 但 concrete 子类未最终实现 interface method，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| interface method 与 abstract method 签名不兼容，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| generic abstract method 实现违反泛型约束，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| generic abstract class 子类指定不满足约束的类型实参，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| abstract class 继承链循环，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| abstract class 继承非 class / 非 constructor，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| object literal 赋值给 abstract class 类型不满足 ArkTS 规则，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| public abstract method 未保持 public 实现，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P1 |  |
| protected abstract method 实现为 private，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P1 |  |
| 子类声明为 concrete 但遗漏多层基类中的抽象方法，checker 报错 | Mixed | fail_compile | 否 |  | P1 |  |
| abstract class 中 constructor 标注返回类型，如 ArkTS 禁止则 checker 报错 | Mixed | fail_compile | 否 |  | P1 |  |
| abstract class private constructor 阻止子类 super()，如支持 constructor visibility 则 checker 报错 | Mixed | fail_compile | 否 |  | P1 |  |
