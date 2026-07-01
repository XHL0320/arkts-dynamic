# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
|  |  |  | 待确认 | 待确认 |  |  |  |

<!-- CLASS_INHERITANCE_DETAILED_WATCH_V1 -->

# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
| class extends base class | ES2022 | ClassDefinitionEvaluation / extends | 待确认 | 待确认 |  | ArkTS 类型注解需适配 | 语法适配 |
| derived class default constructor | ES2022 | Derived default constructor | 待确认 | 待确认 |  | super(...args) 转发 | 适配 |
| prototype chain after extends | ES2022 | prototype chain | 待确认 | 待确认 |  | 运行时对照 | 适配 |
| instanceof with base and derived | ES2022 | OrdinaryHasInstance | 待确认 | 待确认 |  | 运行时对照 | 适配 |
| derived constructor super call | ES2022 | SuperCall | 待确认 | 待确认 |  | 构造交叉 | 适配 |
| this before super | ES2022 | GetThisBinding before super | 待确认 | 待确认 |  | ArkTS 可能静态前移 | 适配或差异 |
| extends non-constructor | ES2022 | extends evaluation | 待确认 | 待确认 |  | 如 ArkTS 禁止表达式 extends 则排除 | 记录差异或排除 |
| extends null | ES2022 | extends null | 待确认 | 待确认 |  | ArkTS 支持待确认 | 记录差异或排除 |
| method inheritance | ES2022 | prototype method lookup | 待确认 | 待确认 |  | 方法继承 | 适配 |
| method overriding runtime behavior | ES2022 | dynamic dispatch | 待确认 | 待确认 |  | 覆盖分派 | 适配 |
| static method inheritance | ES2022 | constructor [[Prototype]] | 待确认 | 待确认 |  | static side | 适配 |
| public fields with inheritance | ES2022 | InitializeInstanceElements | 待确认 | 待确认 |  | 字段初始化顺序 | 适配 |
| class fields initialization order | ES2022 | InitializeInstanceElements | 待确认 | 待确认 |  | Base/Derived 顺序 | 适配 |
| super property access | ES2022 | MakeSuperPropertyReference | 待确认 | 待确认 |  | super 交叉 | 适配 |
| derived class abrupt completion | ES2022 | abrupt completion | 待确认 | 待确认 |  | 异常传播 | 适配 |
