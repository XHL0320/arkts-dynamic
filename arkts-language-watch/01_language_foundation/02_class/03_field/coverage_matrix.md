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

<!-- CLASS_FIELD_DETAILED_WATCH_V1 -->

# Coverage Matrix

| 测试点 | ECMA Baseline Status | 用例类型 | 是否已有 | XTS 路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|
| 空类声明并实例化通过 | Mixed | pass | 否 |  | P0 |  |
| 单个 number 字段带类型注解和初始化值通过 | ArkTS-specific | pass | 否 |  | P0 |  |
| 多个字段 number/string/boolean 同时声明通过 | Mixed | pass | 否 |  | P0 |  |
| bigint 字段初始化为 bigint literal 通过 | Mixed | pass | 否 |  | P0 |  |
| object 字段初始化为对象实例通过 | Mixed | pass | 否 |  | P0 |  |
| array 字段初始化为 number[] 通过 | Mixed | pass | 否 |  | P0 |  |
| 字段不带类型注解并从初始化值推断类型通过 | ArkTS-specific | pass | 否 |  | P0 |  |
| 字段有初始化值且 constructor 不再赋值通过 | Mixed | pass | 否 |  | P0 |  |
| 字段无初始化但 constructor 中赋值通过 | Mixed | pass | 否 |  | P0 |  |
| nullable 字段初始化为 null 通过 | Mixed | pass | 否 |  | P0 |  |
| union 字段分别赋值 union 成员通过 | Mixed | pass | 否 |  | P0 |  |
| class 类型字段初始化为对应 class 实例通过 | ArkTS-specific | pass | 否 |  | P0 |  |
| interface 类型字段初始化为满足 interface 的对象通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 方法内读取实例字段通过 | Mixed | pass | 否 |  | P0 |  |
| constructor 内读取和写入实例字段通过 | Mixed | pass | 否 |  | P0 |  |
| 外部访问 public 字段通过 | Mixed | pass | 否 |  | P0 |  |
| static 字段通过类名访问通过 | ES2022 | pass | 否 |  | P0 |  |
| readonly 字段在声明处初始化通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| readonly 字段在 constructor 中初始化通过 | ArkTS-specific / TS-compatible | pass | 否 |  | P0 |  |
| 子类继承并访问基类 public 字段通过 | Mixed | pass | 否 |  | P0 |  |
| 字段初始化表达式引用前面字段通过 | Mixed | pass | 否 |  | P0 |  |
| generic class 字段类型为 T 并赋值 T 通过 | ArkTS-specific | pass | 否 |  | P0 |  |
| number 字段初始化为 string，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| string 字段赋值 boolean，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| array 字段赋值非数组，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| number[] 字段写入 string[]，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| class 类型字段赋值无关 class 实例，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| interface 类型字段缺少必需属性，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| 字段重复声明，checker/parser 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 字段与方法同名，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 字段与 getter 同名，checker 报错或记录差异 | Mixed | fail_compile | 否 |  | P0 |  |
| 未声明字段访问，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 动态属性访问字段 a['x']，如 ArkTS 禁止则报错 | Mixed | fail_compile | 否 |  | P0 |  |
| readonly 字段 constructor 外赋值，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| private 字段外部访问，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| protected 字段外部访问，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| static 字段通过实例访问，checker 报错或记录差异 | ES2022 | fail_compile | 否 |  | P0 |  |
| instance 字段通过类名访问，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| class implements interface 时字段类型不兼容，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| class implements interface 时缺少字段，checker 报错 | ArkTS-specific / TS-compatible | fail_compile | 否 |  | P0 |  |
| generic class 字段赋值不满足 T，checker 报错 | Mixed | fail_compile | 否 |  | P0 |  |
| 字段类型使用 ArkTS 不支持的 TS 类型语法，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 字段初始化表达式类型与声明类型不匹配，checker 报错 | ArkTS-specific | fail_compile | 否 |  | P0 |  |
| 字段初始化表达式读取后面字段的行为边界 | Mixed | boundary | 否 |  | P1 |  |
| 字段无初始化时默认值或编译期要求边界 | Mixed | boundary | 否 |  | P1 |  |
