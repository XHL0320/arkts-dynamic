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

<!-- SENDABLE_DEEPENING_2026_07_03 -->

# Test Design

## Goal

围绕 sendable class 与 TS style decorator 的交叉语义建立系统性回归设计。

## Test Categories

- A. PR 10632 原始回归组
- B. Sendable 对照组
- C. Property decorator 变体组
- D. Decorator factory 组
- E. Multiple decorators 组
- F. Module scope 组
- G. Boundary 组
- H. Bytecode regression 组

## Test Matrix

| ID | 测试点 | 示例形态 | 用例类型 | 优先级 | 建议测试方式 | 关联 PR | 备注 |
|---|---|---|---|---|---|---|---|
| DWS-TD-0001 | sendable class + property decorator + arrow function 参数 + module import | property decorator in sendable class | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0002 | sendable class + property decorator + normal function 参数 + module import | property decorator in sendable class | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0003 | sendable class + property decorator + arrow function 参数 + local variable | property decorator in sendable class | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0004 | sendable class + property decorator + immediate invoked arrow function | property decorator in sendable class | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0005 | sendable class + property decorator + factory 返回 decorator function | property decorator in sendable class | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0006 | sendable class 本体仍生成 sendable class 字节码 | property decorator in sendable class | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0007 | decorator 外提后 class 外函数不生成 sendable function 字节码 | property decorator in sendable class | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0008 | 原始 AST 与 transform 节点共享指针时不污染 codegen | property decorator in sendable class | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0009 | 普通 sendable class 无 decorator | contrast sample | pass | P1 | compiler expected | PR 10632 related |  |
| DWS-TD-0010 | 普通 class + property decorator | contrast sample | pass | P1 | compiler expected | PR 10632 related |  |
| DWS-TD-0011 | 普通 class + decorator 参数 arrow function | contrast sample | pass | P1 | compiler expected | PR 10632 related |  |
| DWS-TD-0012 | sendable class 中普通 method 内 arrow function | contrast sample | pass | P1 | compiler expected | PR 10632 related |  |
| DWS-TD-0013 | sendable class 中 constructor 内 arrow function | contrast sample | pass | P1 | compiler expected | PR 10632 related |  |
| DWS-TD-0014 | sendable function 内 arrow function | contrast sample | pass | P1 | compiler expected | PR 10632 related |  |
| DWS-TD-0015 | sendable class 外部普通 function | contrast sample | pass | P1 | compiler expected | PR 10632 related |  |
| DWS-TD-0016 | decorator 外提函数与真正 sendable 内部函数对照 | contrast sample | regression | P0 | compiler expected | PR 10632 related |  |
| DWS-TD-0017 | instance property decorator + sendable class | property variant | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0018 | static property decorator + sendable class | property variant | bytecode regression | P0 | bytecode expected | PR 10632 related |  |
| DWS-TD-0019 | readonly property decorator + sendable class | property variant | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0020 | public property decorator + sendable class | property variant | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0021 | private property decorator + sendable class | property variant | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0022 | protected property decorator + sendable class | property variant | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0023 | property decorator + initializer + sendable class | property variant | bytecode regression | P0 | bytecode expected | PR 10632 related |  |
| DWS-TD-0024 | property decorator + no initializer + sendable class | property variant | bytecode regression | P0 | bytecode expected | PR 10632 related |  |
| DWS-TD-0025 | property decorator + number field + sendable class | property variant | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0026 | property decorator + string field + sendable class | property variant | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0027 | property decorator + class type field + sendable class | property variant | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0028 | property decorator + array field + sendable class | property variant | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0029 | 无参 decorator factory + sendable class | decorator factory | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0030 | 单参数 decorator factory + sendable class | decorator factory | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0031 | 多参数 decorator factory + sendable class | decorator factory | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0032 | decorator factory 参数为 string literal | decorator factory | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0033 | decorator factory 参数为 number literal | decorator factory | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0034 | decorator factory 参数为 boolean literal | decorator factory | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0035 | decorator factory 参数为 arrow function | decorator factory | bytecode regression | P0 | bytecode expected | PR 10632 related |  |
| DWS-TD-0036 | decorator factory 参数为 normal function | decorator factory | bytecode regression | P0 | bytecode expected | PR 10632 related |  |
| DWS-TD-0037 | decorator factory 参数为 IIFE | decorator factory | bytecode regression | P0 | bytecode expected | PR 10632 related |  |
| DWS-TD-0038 | decorator factory 参数引用 import binding | decorator factory | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0039 | decorator factory 返回 decorator function | decorator factory | bytecode regression | P0 | bytecode expected | PR 10632 related |  |
| DWS-TD-0040 | decorator factory 返回非函数 boundary | decorator factory | boundary | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0041 | 单字段多个 decorators + sendable class | multiple decorators | boundary | P1 | manual pending | PR 10632 related |  |
| DWS-TD-0042 | 多字段各自 decorators + sendable class | multiple decorators | boundary | P1 | manual pending | PR 10632 related |  |
| DWS-TD-0043 | static + instance decorators + sendable class | multiple decorators | boundary | P1 | manual pending | PR 10632 related |  |
| DWS-TD-0044 | property decorator + method decorator + sendable boundary | multiple decorators | boundary | P1 | manual pending | PR 10632 related |  |
| DWS-TD-0045 | class decorator + property decorator + sendable boundary | multiple decorators | boundary | P1 | manual pending | PR 10632 related |  |
| DWS-TD-0046 | 多 decorator 执行顺序 pending | multiple decorators | boundary | P1 | manual pending | PR 10632 related |  |
| DWS-TD-0047 | 多 decorator 中每个参数函数不应互相污染 | multiple decorators | regression | P0 | bytecode expected | PR 10632 related |  |
| DWS-TD-0048 | 多 decorator 中 PR 10632 形态重复出现 | multiple decorators | regression | P0 | bytecode expected | PR 10632 related |  |
| DWS-TD-0049 | decorator 从模块 import + sendable class | module scope | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0050 | decorator factory 从模块 import + sendable class | module scope | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0051 | decorator 参数引用 moduleVar | module scope | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0052 | decorator 参数 arrow function 引用 moduleVar | module scope | bytecode regression | P0 | bytecode expected | PR 10632 related |  |
| DWS-TD-0053 | decorator 参数 normal function 引用 moduleVar | module scope | bytecode regression | P0 | bytecode expected | PR 10632 related |  |
| DWS-TD-0054 | decorator 外提后仍能访问 module binding | module scope | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0055 | circular import + decorator + sendable boundary | module scope | boundary | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0056 | export sendable class + property decorator | module scope | integration | P1 | XTS smoke | PR 10632 related |  |
| DWS-TD-0057 | class decorator + sendable class | boundary | boundary | P2 | manual pending | PR 10632 related | Pending target support |
| DWS-TD-0058 | method decorator + sendable class | boundary | boundary | P2 | manual pending | PR 10632 related | Pending target support |
| DWS-TD-0059 | static method decorator + sendable class | boundary | boundary | P2 | manual pending | PR 10632 related | Pending target support |
| DWS-TD-0060 | accessor decorator + sendable class | boundary | boundary | P2 | manual pending | PR 10632 related | Pending target support |
| DWS-TD-0061 | parameter decorator + sendable class | boundary | boundary | P2 | manual pending | PR 10632 related | Pending target support |
| DWS-TD-0062 | generic sendable class + decorator | boundary | boundary | P2 | manual pending | PR 10632 related | Pending target support |
| DWS-TD-0063 | abstract sendable class + decorator | boundary | boundary | P2 | manual pending | PR 10632 related | Pending target support |
| DWS-TD-0064 | inheritance sendable class + decorator | boundary | boundary | P2 | manual pending | PR 10632 related | Pending target support |
| DWS-TD-0065 | decorator expression throw + sendable class | boundary | boundary | P2 | manual pending | PR 10632 related | Pending target support |
| DWS-TD-0066 | decorator factory throw + sendable class | boundary | boundary | P2 | manual pending | PR 10632 related | Pending target support |
| DWS-TD-0067 | decorator return invalid value + sendable class | boundary | boundary | P2 | manual pending | PR 10632 related | Pending target support |
| DWS-TD-0068 | unsupported decorator target pending | boundary | boundary | P2 | manual pending | PR 10632 related | Pending target support |
| DWS-TD-0069 | PR 10632 原始 bytecode expected | bytecode expected | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0070 | arrow function 参数不生成 sendable function 字节码 | bytecode expected | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0071 | normal function 参数不生成 sendable function 字节码 | bytecode expected | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0072 | decorator factory 返回函数不生成 sendable function 字节码 | bytecode expected | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0073 | sendable class 本体仍生成 sendable class 字节码 | bytecode expected | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0074 | static property decorator target 正确 | bytecode expected | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0075 | instance property decorator target 正确 | bytecode expected | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0076 | decorator 调用位置在 class definition 后 | bytecode expected | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0077 | 多 decorator 不污染 bytecode | bytecode expected | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0078 | sendable method 内真正函数仍按 sendable 生成 | bytecode expected | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0079 | IIFE 内部函数不生成 sendable function 字节码 | bytecode expected | bytecode regression | P0 | bytecode expected | PR 10632 |  |
| DWS-TD-0080 | module import binding 访问不改变 sendable 标记 | bytecode expected | bytecode regression | P0 | bytecode expected | PR 10632 |  |
