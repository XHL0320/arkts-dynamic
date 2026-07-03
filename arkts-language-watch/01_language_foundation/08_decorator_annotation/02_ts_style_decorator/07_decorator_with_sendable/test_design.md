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

<!-- DECORATOR_ANNOTATION_WATCH_V1 -->

# Test Design

## Positive Cases

- non-sendable class property decorator contrast；
- sendable class base smoke where supported。

## Compile Negative Cases

- unsupported decorator targets should remain pending until support is confirmed。

## Runtime / Bytecode Cases

- bytecode expected is the primary regression method for PR 10632；
- XTS smoke is secondary.

## Boundary Cases

- class/method/static decorator with sendable class support range；
- private/protected field decorator target support。

## Integration Cases

- property decorator + sendable class + module import；
- property decorator + readonly/static/generic/inheritance。

## Regression Cases

- PR 10632 inSendable state pollution.

## Initial Test Points

| 编号 | 测试点 | 用例类型 | 优先级 | 备注 |
|---|---|---|---|---|
| 001 | sendable class 中 property decorator | integration | P0 | PR 10632 main path |
| 002 | property decorator 参数为 arrow function | bytecode regression | P0 | inSendable must be false outside class |
| 003 | property decorator 参数为 normal function | bytecode regression | P0 | function state reset |
| 004 | property decorator 参数引用 module import | bytecode regression | P0 | module scope + transform |
| 005 | decorator factory 返回 decorator function | bytecode regression | P0 | returned function state |
| 006 | decorator transform 外提 | bytecode regression | P0 | class outside call |
| 007 | decorator 中函数不应被标记 inSendable | bytecode regression | P0 | root regression |
| 008 | sendable class 本体不受影响 | bytecode regression | P0 | sendable class bytecode still correct |
| 009 | 普通 sendable 方法内部函数仍应是 sendable | integration | P1 | control case |
| 010 | 多 decorator 状态不互相污染 | regression | P0 | state isolation |
| 011 | static property decorator + sendable class | integration | P1 | static target |
| 012 | method decorator + sendable class boundary | boundary | P1 | target support pending |
| 013 | class decorator + sendable class boundary | boundary | P1 | target support pending |
| 014 | sendable class 中两个 property decorators 均含 arrow function | regression | P0 | multiple property state |
| 015 | decorator factory 参数 arrow function 引用 moduleVar | bytecode regression | P0 | PR 10632 module variant |
| 016 | decorator factory 参数 normal function 引用 moduleVar | bytecode regression | P0 | normal function variant |
| 017 | 非 sendable class property decorator 对照 | pass | P1 | contrast |
| 018 | sendable class field initializer 与 property decorator | integration | P1 | field initializer |
| 019 | readonly field property decorator + sendable class | integration | P1 | readonly |
| 020 | public field property decorator + sendable class | integration | P1 | visibility |
| 021 | protected/private field decorator support boundary | boundary | P1 | support pending |
| 022 | inherited sendable class property decorator boundary | boundary | P1 | inheritance |
| 023 | sendable class generic field property decorator | integration | P1 | generic |
| 024 | sendable class static field property decorator | integration | P1 | static |
| 025 | decorator transform 后原 AST 节点状态不污染转换节点 | bytecode regression | P0 | AST pointer state |
| 026 | decorator lowering 后 codegen 不生成 sendable function bytecode | bytecode regression | P0 | codegen expected |
| 027 | binder 对 class 外 decorator function 设置 inSendable false | bytecode regression | P0 | binder expected |
| 028 | binder 对 sendable class method local function 设置 inSendable true | integration | P1 | control expected |
| 029 | sendable class decorator 参数访问 imported function | boundary | P1 | module import |
| 030 | PR 10632 smoke XTS：编译运行不崩溃 | regression | P0 | XTS smoke |
| 031 | PR 10632 bytecode expected：无 sendable function 指令 | bytecode regression | P0 | bytecode expected |
| 032 | PR 10632 bytecode expected：sendable class 指令仍存在 | bytecode regression | P0 | bytecode expected |
