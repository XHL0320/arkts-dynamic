# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
|  |  |  | 待确认 | 待确认 |  |  |  |

<!-- CLASS_CONSTRUCTOR_DETAILED_WATCH_V1 -->

# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
| class constructor definition | ES2022 | ClassDefinitionEvaluation | 待确认 | 待确认 |  | ArkTS 类型注解需适配 | 语法适配 |
| default constructor | ES2022 | DefaultConstructor | 待确认 | 待确认 |  | 基础运行时语义 | 适配 |
| derived class default constructor | ES2022 | Derived default constructor | 待确认 | 待确认 |  | super(...args) 转发 | 适配 |
| constructor cannot be called without new | ES2022 | Class constructor call | 待确认 | 待确认 |  | 运行时 TypeError | 适配 |
| derived constructor super call | ES2022 | SuperCall | 待确认 | 待确认 |  | 派生类初始化 | 适配 |
| this before super | ES2022 | GetThisBinding before super | 待确认 | 待确认 |  | ArkTS 可能静态前移 | 适配或差异 |
| super() called twice | ES2022 | SuperCall twice | 待确认 | 待确认 |  | 运行时异常类型需确认 | 适配 |
| constructor return object | ES2022 | Constructor return object | 待确认 | 待确认 |  | ArkTS 行为待确认 | 适配 |
| constructor return primitive | ES2022 | Constructor return primitive | 待确认 | 待确认 |  | base/derived 差异 | 适配 |
| new.target in constructor | ES2022 | NewTarget | 待确认 | 待确认 |  | 如 ArkTS 不支持需排除 | 记录差异或排除 |
| Reflect.construct with class constructor | ES2022 | Reflect.construct | 待确认 | 待确认 |  | 支持情况待确认 | 记录差异或适配 |
| constructor property | ES2022 | constructor property | 待确认 | 待确认 |  | 运行时 prototype 对照 | 适配 |
| prototype constructor property | ES2022 | prototype.constructor | 待确认 | 待确认 |  | prototype 对照 | 适配 |
| base constructor and derived fields initialization order | ES2022 | InitializeInstanceElements | 待确认 | 待确认 |  | 初始化顺序 | 适配 |
| constructor throwing abrupt completion | ES2022 | abrupt completion | 待确认 | 待确认 |  | 对象未完成初始化 | 适配 |
