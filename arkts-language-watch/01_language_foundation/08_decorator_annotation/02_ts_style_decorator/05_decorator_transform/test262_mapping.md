# test262 Mapping

| 方向 | Baseline Status | test262 是否覆盖 | ArkTS 是否适用 | 处理方式 | 备注 |
|---|---|---|---|---|---|
| TS style decorator | ArkTS-specific / TS-compatible | 否 | 待确认 | ArkTS compiler regression / XTS smoke | Not from test262 |

<!-- TRANSFORM_DEEPENING_2026_07_03 -->

# test262 Mapping

## Conclusion

Decorator transform/lowering is not directly covered by ECMAScript 2022 test262.

## Mapping Table

| 测试方向 | Baseline Status | test262 是否覆盖 | 原因 | 替代测试方式 |
|---|---|---|---|---|
| property decorator transform | ArkTS-specific / TS-compatible | 否 | TS style decorator lowering 不属于 ES2022 test262 | compiler expected / bytecode expected |
| method decorator transform | ArkTS-specific / TS-compatible | 否 | method decorator descriptor lowering 是 ArkTS/TS 编译链行为 | compiler expected |
| class decorator transform | ArkTS-specific / TS-compatible | 否 | class decorator 调用外提不是 test262 runtime 覆盖范围 | compiler expected |
| decorator factory lowering | ArkTS-specific / TS-compatible | 否 | factory 求值和 lowering 属于编译链行为 | compiler expected / XTS smoke |
| decorator target 参数 | ArkTS-specific / TS-compatible | 否 | target 形态依赖 ArkTS lowering | compiler expected |
| decorator key 参数 | ArkTS-specific / TS-compatible | 否 | key 传递依赖 ArkTS lowering | compiler expected |
| AST shared pointer / shallow copy | ArkTS-specific | 否 | 编译器 AST 内部实现细节 | compiler expected / transform dump |
| binder context pollution | ArkTS-specific | 否 | binder 状态不是 ECMAScript 语义 | bytecode expected |
| sendable bytecode regression | ArkTS-specific | 否 | sendable 和字节码生成均为 ArkTS-specific | bytecode expected |
| PR 10632 | ArkTS-specific | 否 | transformer + binder + codegen regression | compiler expected / bytecode expected / XTS smoke |

PR 10632 belongs to ArkTS-specific compiler pipeline regression and should be covered by compiler expected / bytecode expected / XTS smoke, not test262.
