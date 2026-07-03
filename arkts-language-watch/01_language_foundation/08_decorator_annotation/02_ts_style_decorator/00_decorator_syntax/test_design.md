# Test Design

## Positive Cases

- 合法 decorator 语法和目标；
- decorator factory 正常求值；
- transform/lowering 后运行或字节码行为符合预期。

## Compile Negative Cases

- decorator 位置错误；
- decorator 名称未定义；
- decorator 表达式类型错误；
- 不支持 target 使用时应被 parser/checker 拦截。

## Runtime / Bytecode Cases

- decorator 调用顺序；
- decorator target/property key 参数；
- transform 后 bytecode 形态；
- sendable 状态不污染 decorator 表达式函数。

## Boundary Cases

- ArkTS 支持范围待确认的 decorator target；
- sendable class 交叉；
- module/circular import boundary。

## Integration Cases

- decorator + class field/method/static/readonly/visibility/inheritance/generic/module。

## Regression Cases

- PR 10632 相关 transformer/binder/codegen 回归。
