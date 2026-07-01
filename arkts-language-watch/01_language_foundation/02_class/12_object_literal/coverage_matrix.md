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

<!-- CLASS_OBJECT_LITERAL_DETAILED_WATCH_V1 -->
# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
| --- | -------------------- | ---- | ---- | ------ | ---- | -- |
| 空 object literal 赋值给 object 类型 | Mixed | pass | 否 |  | P0 |  |
| 单属性 object literal 赋值给 object 类型 | Mixed | pass | 否 |  | P0 |  |
| 多属性 object literal 赋值给 object 类型 | Mixed | pass | 否 |  | P0 |  |
| number/string/boolean 属性 object literal | Mixed | pass | 否 |  | P0 |  |
| bigint 属性 object literal，如 ArkTS 支持 | Mixed | pass | 否 |  | P0 |  |
| object 属性 object literal | Mixed | pass | 否 |  | P0 |  |
| array 属性 object literal | Mixed | pass | 否 |  | P0 |  |
| nested object 属性 object literal | Mixed | pass | 否 |  | P0 |  |
| function property object literal | Mixed | pass | 否 |  | P0 |  |
| method shorthand object literal，如 ArkTS 支持 | Mixed | pass | 否 |  | P0 |  |
| object literal 赋值给 interface 类型 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| object literal 属性完全匹配 interface | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| object literal 方法匹配 interface method | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| object literal function property 匹配 interface method | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| nested object literal 匹配 nested interface | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| object literal array property 匹配 interface array property | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| object literal 属性完全匹配 class public fields，如 ArkTS 允许 class type assignment | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| object literal 方法完全匹配 class public methods，如 ArkTS 允许 class type assignment | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| object literal 可满足仅 public 成员的 class/interface | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| object literal 属性赋值给 interface readonly property，如支持 readonly | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| optional property 缺省时通过，如 ArkTS 支持 | ArkTS-specific | pass | 否 |  | P1 |  |
| object literal 赋值给 generic interface<T> | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| generic function 接收满足约束的 object literal | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| object literal 满足 generic constraint | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| export interface 后 object literal 赋值 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| import interface 后 object literal 赋值 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| object literal property access 运行时读取成功 | Mixed | pass | 否 |  | P1 |  |
| object literal method 中 this 访问自身属性 | ES2022 / Mixed | pass | 否 |  | P1 |  |
| object literal function property 作为 factory method 返回 class instance | Mixed | pass | 否 |  | P1 |  |
| object literal 赋给 interface 类型后调用方法 | ArkTS-specific / TS-compatible | pass | 否 |  | P1 |  |
| object literal 缺少 interface 必需属性，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal 缺少 interface 必需方法，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal 属性类型与 interface 不一致，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal 方法参数与 interface method 不一致，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal 方法返回类型与 interface method 不一致，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal 多余属性如 ArkTS 启用 excess property check，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| nested object literal 缺少 nested interface 属性，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal array property 元素类型不匹配，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| object literal 缺少 class public field，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| object literal 缺少 class public method，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| object literal 属性类型与 class field 不一致，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| object literal 方法参数与 class method 不一致，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| object literal 方法返回值与 class method 不一致，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| object literal 不能满足含 private field 的 class type，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal 不能满足含 private method 的 class type，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal 不能满足含 protected field 的 class type，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal 不能满足含 protected method 的 class type，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 通过 readonly interface 引用修改属性，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal readonly property 类型不匹配，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| optional property 类型不匹配，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| generic constraint 要求 object literal 具备属性但缺失，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal 不满足 generic constraint，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal 不能满足 abstract class private/protected 成员，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal 缺少 derived class 新增字段，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| object literal 缺少 derived class 新增方法，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| object literal 被当作 class value 使用，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| object literal 不能直接 new，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| object literal 赋给 constructor type 不满足 construct signature，checker 报错或边界记录 | Mixed | fail_compile | 否 |  | P0 |  |
| index signature 属性类型不一致，checker 报错，如支持 index signature | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 动态新增属性不允许时对 object literal 新增属性，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 跨模块 object literal 赋值缺少 imported interface 成员，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 跨模块 private/protected class type 与 object literal 兼容错误，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| object literal function property 参数/返回不匹配目标 method，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| object literal 缺少 inherited public member，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| object literal 赋值给 generic class type Box<T> 不满足字段 T，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| fresh object literal 多余属性传给函数参数，checker 报错或边界记录 | Mixed | fail_compile | 否 |  | P0 |  |
| object literal 赋值给 class type 是否允许边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
| object literal 赋值给 abstract class type 是否允许边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
| object literal 赋值给 generic class type 是否允许边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
| excess property check 是否存在边界 | ArkTS-specific | boundary | 否 |  | P1 |  |
| freshness 规则是否存在边界 | ArkTS-specific | boundary | 否 |  | P1 |  |
| 先赋值给变量再赋值给 interface 是否放宽边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
| 先赋值给变量再赋值给 class type 是否放宽边界 | ArkTS-specific / TS-compatible | boundary | 否 |  | P1 |  |
| ordinary property 是否满足 readonly property 边界 | ArkTS-specific | boundary | 否 |  | P1 |  |
| object literal method 与 function property 匹配 method 边界 | Mixed | boundary | 否 |  | P1 |  |
