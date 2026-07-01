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

<!-- CLASS_THIS_IN_CLASS_DETAILED_WATCH_V1 -->
# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
| --- | -------------------- | ---- | ---- | ------ | ---- | -- |
| constructor 中使用 this.field 初始化实例字段 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| constructor 中读取字段默认值 | Mixed | pass | 否 |  | P0 |  |
| constructor 中调用 this.method() | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| constructor 中访问 public/private/protected field | Mixed | pass | 否 |  | P0 |  |
| constructor 中初始化 readonly field | Mixed | pass | 否 |  | P0 |  |
| constructor 中 this 类型为当前 class instance type | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| constructor 中 this 作为参数传递 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| derived constructor 中 super() 后访问 this | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| derived constructor 中 super() 后访问 this.field | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| derived constructor 中 super() 后调用 this.method() | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| instance method 中读取 this.field | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| instance method 中写入 this.field | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| instance method 中调用 this.method() | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| instance method 中访问 private/protected/public member | Mixed | pass | 否 |  | P0 |  |
| instance method 返回 this | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| instance method 将 this 作为参数传递 | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| static method 中 this 访问 static field | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| static method 中 this 调用 static method | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| static method 中访问 private/protected static field | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| derived class 调用 inherited static method 时 this 指向 derived class | ES2022 / ArkTS-specific | pass | 否 |  | P0 |  |
| field initializer 使用 this.field，如 ArkTS 支持 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| field initializer 调用 this.method()，如 ArkTS 支持 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| method 返回 this 实现 fluent API，如 ArkTS 支持 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| instance method 内 arrow function 捕获 this.field | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| constructor 内 arrow function 捕获 this.field | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| static method 内 arrow function 访问 this.staticField | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| base method 被 derived instance 调用时 this 指向 derived instance | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| super.method() 内部 this 仍为 derived instance | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| generic class method 中 this 访问 T 字段 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| export/import class 后 method 使用 this 正常 | ES2022 / ArkTS-specific | pass | 否 |  | P1 |  |
| constructor 中 this 访问不存在字段，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| constructor 中 this.method() 参数错误，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| constructor 中通过 this 访问 static member，checker 报错或边界记录 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| derived constructor 中 super() 前访问 this，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| derived constructor 中 super() 前访问 this.field，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| derived constructor 中 super() 前调用 this.method()，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| derived constructor 部分路径未调用 super 后使用 this，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| instance method 中 this 访问不存在字段，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| instance method 中 this.method() 参数错误，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| instance method 中修改 readonly field，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| instance method 中 this.staticField 如 ArkTS 禁止，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static method 中 this 访问 instance field，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static method 中 this 调用 instance method，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| field initializer 中 this 访问后序字段，如 ArkTS 禁止则报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| field initializer 中 this.method() 如 ArkTS 禁止则报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| field initializer 中通过 this 访问 static field，如 ArkTS 禁止则报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| method 返回 this 但声明返回不兼容类型，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 多态 this 类型不支持时标注 this，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| normal nested function 中 this.field 如 ArkTS 禁止，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| method extraction 未绑定引用如 ArkTS 拦截，checker 报错 | ES2022 / Mixed | fail_compile | 否 |  | P0 |  |
| callback 函数类型 this 参数不兼容，checker 报错或边界记录 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| static generic method 中 this 误用 class type parameter T，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal 赋给 class method type 时 this 不兼容，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| interface method 返回 this 不支持时声明，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| this 访问 private static member 的非法实例侧访问，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| derived constructor 中 super() 前创建并调用 arrow 捕获 this，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| method 中 this 访问 protected member 于非法上下文，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| cross-module method this 类型丢失导致调用不兼容，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| call/apply/bind 不支持时使用，checker 报错或边界记录 | Mixed | fail_compile | 否 |  | P0 |  |
| this 作为返回值赋给不兼容 class type，checker 报错 | ES2022 / ArkTS-specific | fail_compile | 否 |  | P0 |  |
| generic class method this 与 T 类型不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| method extraction 后 this 为 undefined 导致 TypeError | ES2022 / Mixed | fail_runtime | 否 |  | P1 |  |
| derived constructor this before super 未被静态拦截时 ReferenceError | ES2022 / Mixed | fail_runtime | 否 |  | P1 |  |
| this.method 动态变为非 callable 后 TypeError | ES2022 / Mixed | fail_runtime | 否 |  | P1 |  |
| callback 中 this 丢失导致 TypeError | ES2022 / Mixed | fail_runtime | 否 |  | P1 |  |
| 非法 receiver 调用方法导致 this 类型不匹配 | ES2022 / ArkTS-specific | fail_runtime | 否 |  | P1 |  |
| static method 提取后 this 丢失导致 static field 访问失败 | ES2022 / Mixed | fail_runtime | 否 |  | P1 |  |
| field initializer 中 this.method 抛异常导致初始化中断 | ES2022 / ArkTS-specific | fail_runtime | 否 |  | P1 |  |
| super.method 内部 this 为错误 receiver 的动态边界 | ES2022 / ArkTS-specific | fail_runtime | 否 |  | P1 |  |
| object literal method this 丢失运行时对照 | ES2022 / Mixed | fail_runtime | 否 |  | P1 |  |
