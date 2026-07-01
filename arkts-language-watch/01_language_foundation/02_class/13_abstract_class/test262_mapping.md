# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|---|---|
|  |  |  | 待确认 | 待确认 |  |  |  |

<!-- CLASS_ABSTRACT_DETAILED_WATCH_V1 -->
# test262 Mapping

| test262 方向 | ECMA Baseline Status | ECMA 入口 | ArkTS 是否适用 | 是否需要适配 | XTS 路径 | 差异原因 | 处理方式 |
| ---------- | -------------------- | ------- | ---------- | ------ | ------ | ---- | ---- |
| class inheritance runtime behavior | ES2022 | ClassDefinition / extends | 待确认 | 需要适配 |  | 仅映射运行时继承，不覆盖 abstract checker | 用于 runtime 交叉验证 |
| derived constructor super call | ES2022 | Derived Constructor / SuperCall | 待确认 | 需要适配 |  | abstract base constructor 仅 ArkTS 静态层不同 | 语法适配 |
| prototype chain | ES2022 | Class prototype chain | 待确认 | 需要适配 |  | 验证子类实例与 abstract base runtime prototype | 运行时对照 |
| instanceof with base and derived | ES2022 | RelationalExpression instanceof | 待确认 | 需要适配 |  | abstract base 作为运行时 constructor 边界待确认 | 运行时对照 |
| method inheritance | ES2022 | MethodDefinition / inheritance | 待确认 | 需要适配 |  | 仅验证 concrete method 继承 | 运行时对照 |
| method overriding runtime behavior | ES2022 | Prototype method dispatch | 待确认 | 需要适配 |  | 不覆盖 abstract method checker | 运行时对照 |
| field initialization order | ES2022 | Class fields initialization | 待确认 | 需要适配 |  | 验证 abstract base concrete field 初始化 | 语法适配 |
| constructor property | ES2022 | prototype.constructor | 待确认 | 需要适配 |  | 运行时对象结构对照 | 运行时对照 |
| abstract-specific behavior is ArkTS-specific, not from test262 | ArkTS-specific / TS-compatible | ArkTS checker abstract rules | 是 | 不适用 test262 |  | test262 不覆盖 abstract 语义 | 使用 ArkTS spec/checker 用例设计 |
| TypeScript abstract compatibility reference, not test262 | ArkTS-specific / TS-compatible | TS-compatible reference | 是 | 不适用 test262 |  | TS 仅作兼容参考，不能替代 ArkTS 规范 | 使用 ArkTS spec/checker 用例设计 |
| abstract class direct new negative | ArkTS-specific / TS-compatible | ArkTS checker | 是 | 不适用 test262 |  | ECMA 无 abstract direct new 限制 | 使用 fail_compile 用例 |
| abstract method implementation signature | ArkTS-specific / TS-compatible | ArkTS checker | 是 | 不适用 test262 |  | 静态类型规则 | 使用 fail_compile/pass 用例 |
| abstract class implements interface | ArkTS-specific | ArkTS checker / interfaces | 是 | 不适用 test262 |  | interface/abstract 交叉非 ECMA | 使用 ArkTS spec/checker 用例设计 |
| generic abstract class | ArkTS-specific | ArkTS generics / checker | 是 | 不适用 test262 |  | generic abstract 非 test262 覆盖点 | 使用 ArkTS spec/checker 用例设计 |
