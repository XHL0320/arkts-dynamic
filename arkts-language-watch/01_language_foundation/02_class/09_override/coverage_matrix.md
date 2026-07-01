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

<!-- CLASS_OVERRIDE_DETAILED_WATCH_V1 -->
# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
| --- | -------------------- | ---- | ---- | ------ | ---- | -- |
| 子类方法与基类方法同名同参同返回类型，覆盖成功 | ArkTS-specific | pass | 否 |  | P0 |  |
| 子类方法体调用自身字段 | ArkTS-specific | pass | 否 |  | P0 |  |
| 子类方法体调用基类 public 方法 | ArkTS-specific | pass | 否 |  | P0 |  |
| 基类引用指向子类实例，调用子类覆盖方法 | ArkTS-specific | pass | 否 |  | P0 |  |
| 多层继承中最底层方法覆盖最上层方法 | ArkTS-specific | pass | 否 |  | P0 |  |
| 子类覆盖方法后通过 super.method() 调用基类方法 | ES2022 / Mixed | pass | 否 |  | P0 |  |
| 子类覆盖方法不调用 super.method() 的对照通过 | ES2022 / Mixed | pass | 否 |  | P0 |  |
| 子类新增方法不属于 override | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 覆盖方法参数类型完全一致 | ArkTS-specific | pass | 否 |  | P0 |  |
| 覆盖方法参数数量完全一致 | ArkTS-specific | pass | 否 |  | P0 |  |
| 覆盖方法返回类型完全一致 | ArkTS-specific | pass | 否 |  | P0 |  |
| 覆盖方法返回 void 与 void 一致 | ArkTS-specific | pass | 否 |  | P0 |  |
| 覆盖方法返回派生类类型覆盖基类返回基类类型，如协变支持 | ArkTS-specific | pass | 否 |  | P0 |  |
| public method 覆盖 public method | Mixed | pass | 否 |  | P0 |  |
| protected method 覆盖 protected method | Mixed | pass | 否 |  | P0 |  |
| concrete 子类实现 abstract method | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| abstract 子类可继续不实现 abstract method | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| abstract class 中 concrete method 被子类 override | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| class method 实现 interface method | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| class inherited method 满足 interface method | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| derived class override 后仍满足 interface method | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| 基类 overload method 被子类完整覆盖，如 ArkTS 支持 | Mixed | pass | 否 |  | P1 |  |
| 子类 static method 与基类 static method 同名并调用通过 | Mixed | pass | 否 |  | P1 |  |
| 子类 static method 调用 super.staticMethod()，如 ArkTS 支持 | Mixed | pass | 否 |  | P1 |  |
| 子类字段与基类字段同名遮蔽 | ArkTS-specific | pass | 否 |  | P1 |  |
| 子类字段类型与基类字段类型一致 | ArkTS-specific | pass | 否 |  | P1 |  |
| generic class 中方法覆盖 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| generic method 覆盖 generic method | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| override 方法返回 this / 多态 this，如 ArkTS 支持 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| export base class 后 import derived override 通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| override 修饰不存在的基类方法，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 覆盖基类方法但不写 override 是否报错，按 ArkTS 要求记录 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 覆盖方法参数类型不一致，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 覆盖方法参数数量减少，checker 报错或边界确认 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 覆盖方法参数数量增加，checker 报错或边界确认 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 覆盖方法可选参数与必选参数不兼容，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 覆盖方法 rest 参数不兼容，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 覆盖方法返回 string 覆盖 number，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 覆盖方法返回基类类型覆盖基类要求派生类类型，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 覆盖方法返回值缺失，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 覆盖方法部分控制流缺少返回值，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| override 修饰字段如 ArkTS 不支持，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| override 修饰 constructor，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| override 修饰 private method，checker 报错或边界记录 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| public method 覆盖为 protected，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| public method 覆盖为 private，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| protected method 覆盖为 private，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| abstract public method 实现为 protected/private，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| concrete 子类未实现 abstract method，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| abstract method 参数类型不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| abstract method 返回类型不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| interface method 参数类型不一致，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| interface method 返回类型不一致，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| protected/private method 不能满足 interface public method，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 子类遗漏部分 overload 签名，checker 报错或边界确认 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 子类 overload 实现签名不兼容，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static method 参数类型不兼容，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| static method 返回类型不兼容，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| instance method 不能 override static method，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| static method 不能 override instance method，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 子类字段类型与基类字段类型不一致，如 ArkTS 禁止则 checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 子类字段与基类方法同名，checker 报错或边界确认 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 子类方法与基类字段同名，checker 报错或边界确认 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| getter 返回类型不兼容，checker 报错，如支持 getter | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 普通方法覆盖 getter，checker 报错，如支持 getter | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| generic method 约束不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| super.method() 参数错误，checker 报错 | ES2022 / Mixed | fail_compile | 否 |  | P1 |  |
| super.missingMethod()，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P1 |  |
| super.method 不存在且未被静态拦截时运行时 TypeError | ES2022 / Mixed | fail_runtime | 否 |  | P1 |  |
| super.method 动态变为非 callable 时运行时 TypeError | ES2022 / Mixed | fail_runtime | 否 |  | P1 |  |
