# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
|  |  |  | 待确认 | 待确认 |  |  |  |

<!-- CLASS_INITIALIZATION_ORDER_DETAILED_WATCH_V1 -->
# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
| ---------- | -------------------- | ------- | ---------- | ------ | ------ | ---- | ---- |
| public instance fields initialization order | ES2022 | PublicFieldDefinition evaluation | 待确认 | 需要适配 |  | ArkTS 字段语法和类型限制需适配 | 运行时交叉验证 |
| field initializer evaluation order | ES2022 | FieldDefinition evaluation order | 待确认 | 需要适配 |  | 副作用顺序 | 运行时交叉验证 |
| field initializer using this | ES2022 | Instance field initializer this | 待确认 | 待确认 |  | ArkTS this 支持范围待确认 | 记录差异或适配 |
| field initializer abrupt completion | ES2022 | Abrupt completion | 待确认 | 需要适配 |  | 运行时异常传播 | 运行时交叉验证 |
| base class instance fields initialization | ES2022 | Base class construction | 待确认 | 需要适配 |  | base fields before constructor | 运行时交叉验证 |
| derived class instance fields initialization | ES2022 | Derived class construction | 待确认 | 需要适配 |  | derived fields after super | 运行时交叉验证 |
| derived constructor super call order | ES2022 | SuperCall | 待确认 | 需要适配 |  | ArkTS 可能前移部分错误 | 静态/运行时分流 |
| this before super | ES2022 | Derived this binding | 待确认 | 待确认 |  | ArkTS 可能 checker 报错 | 静态/运行时分流 |
| base constructor before derived fields | ES2022 | Derived construction order | 待确认 | 需要适配 |  | 核心顺序 | 运行时交叉验证 |
| constructor abrupt completion | ES2022 | Constructor abrupt completion | 待确认 | 需要适配 |  | 运行时异常 | 运行时交叉验证 |
| static fields initialization order | ES2022 | Static field evaluation | 待确认 | 需要适配 |  | static order | 运行时交叉验证 |
| static field initializer abrupt completion | ES2022 | ClassEvaluation abrupt completion | 待确认 | 需要适配 |  | class evaluation failure | 运行时交叉验证 |
| static block order, only if ArkTS supports static block | ES2022 | StaticBlock | 待确认 | 待确认 |  | ArkTS static block 支持未确认 | 记录差异或排除 |
| static block abrupt completion, only if ArkTS supports static block | ES2022 | StaticBlock abrupt completion | 待确认 | 待确认 |  | 仅支持 static block 时纳入 | 记录差异或排除 |
| base static before derived static | ES2022 | ClassDefinitionEvaluation / extends | 待确认 | 需要适配 |  | static inheritance | 运行时交叉验证 |
| class evaluation order | ES2022 | ClassEvaluation | 待确认 | 需要适配 |  | class evaluation | 运行时交叉验证 |
| method call during construction | ES2022 | Constructor execution / method dispatch | 待确认 | 需要适配 |  | override method 边界 | 运行时交叉验证 |
| constructor return object/primitive boundary | ES2022 | Constructor return semantics | 待确认 | 待确认 |  | ArkTS 支持边界待确认 | 记录差异或适配 |
| super() abrupt completion | ES2022 | SuperCall abrupt completion | 待确认 | 需要适配 |  | derived fields 不应继续 | 运行时交叉验证 |
| TypeScript/ArkTS definite assignment checking is not from test262 | ArkTS-specific / TS-compatible | ArkTS checker | 是 | 不适用 test262 |  | test262 不覆盖 definite assignment | 使用 ArkTS spec/checker 用例设计 |
