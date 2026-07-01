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

<!-- CLASS_METHOD_DETAILED_WATCH_V1 -->

# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|
| 空方法声明并调用通过 | Mixed | pass | 否 |  | P0 |  |
| 无参方法返回 void 通过 | Mixed | pass | 否 |  | P0 |  |
| 单 number 参数方法调用通过 | Mixed | pass | 否 |  | P0 |  |
| 多参数方法调用通过 | Mixed | pass | 否 |  | P0 |  |
| 返回 number 方法返回 number 通过 | Mixed | pass | 否 |  | P0 |  |
| 返回 string 方法返回 string 通过 | Mixed | pass | 否 |  | P0 |  |
| 返回 boolean 方法返回 boolean 通过 | Mixed | pass | 否 |  | P0 |  |
| 返回 bigint 方法返回 bigint 通过 | Mixed | pass | 否 |  | P0 |  |
| 返回 object 方法返回对象通过 | Mixed | pass | 否 |  | P0 |  |
| 返回 array 方法返回数组通过 | Mixed | pass | 否 |  | P0 |  |
| 方法显式返回类型与返回值一致通过 | ArkTS-specific | pass | 否 |  | P0 |  |
| 方法省略返回类型并由返回值推断通过 | ArkTS-specific | pass | 否 |  | P0 |  |
| 方法体访问实例字段通过 | Mixed | pass | 否 |  | P0 |  |
| 方法体调用其他实例方法通过 | Mixed | pass | 否 |  | P0 |  |
| constructor 中调用实例方法通过 | ES2022 | pass | 否 |  | P0 |  |
| 外部调用 public 方法通过 | Mixed | pass | 否 |  | P0 |  |
| 可选参数未传值调用通过 | Mixed | pass | 否 |  | P0 |  |
| rest 参数收集多个实参通过 | Mixed | pass | 否 |  | P0 |  |
| 默认参数未传值使用默认值通过 | Mixed | pass | 否 |  | P0 |  |
| 参数为 class 类型并传入实例通过 | ArkTS-specific | pass | 否 |  | P0 |  |
| 参数为 interface 类型并传入满足对象通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 参数为 array 类型并传入同元素数组通过 | ArkTS-specific | pass | 否 |  | P0 |  |
| 方法返回 this 支持链式调用 | Mixed | pass | 否 |  | P0 |  |
| static method 通过 class 名调用通过 | ES2022 | pass | 否 |  | P0 |  |
| protected method 在子类中调用通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| number 参数传入 string，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| string 参数传入 boolean，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 参数个数不足，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 参数个数过多，checker 报错或按 ArkTS 规则记录 | Mixed | fail_compile | 否 |  | P0 |  |
| 非 optional 参数位于 optional 参数之后，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| rest 参数不是最后一个参数，parser/checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 默认参数初始化值与参数类型不匹配，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 返回 number 方法返回 string，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 返回 class 类型方法返回无关对象，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 返回 interface 类型方法缺少成员，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 非 void 方法缺少 return，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 部分控制流路径缺少 return，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 未声明方法调用，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| private method 外部访问，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| protected method 外部访问，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| static method 通过实例访问，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| instance method 通过 class 名访问，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| static method 访问 instance field，checker 报错 | ES2022 | fail_compile | 否 |  | P0 |  |
| 方法与字段同名，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 重复方法声明冲突，checker 报错或记录差异 | Mixed | fail_compile | 否 |  | P0 |  |
| getter 带参数，parser/checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| setter 参数个数不是一个，parser/checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| overload 实现签名不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| overload 调用无匹配签名，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 覆盖方法返回类型不兼容，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
