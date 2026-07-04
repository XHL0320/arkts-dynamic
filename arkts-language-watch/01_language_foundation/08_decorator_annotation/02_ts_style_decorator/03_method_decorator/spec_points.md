# Spec Points

## Feature

03 Method Decorator

## Baseline Status

ArkTS-specific / TS-compatible / Mixed / Pending

## Related Concepts

| 类别 | 关注点 | 备注 |
|---|---|---|
| Parser | decorator placement | target legality pending |
| Transformer | decorator lowering | Not from test262 |
| Binder | scope and sendable state | PR 10632 high risk |
| Checker | decorator function type and target | ArkTS behavior pending |
| CodeGen | decorator call and bytecode | bytecode regression |

## ArkTS Boundary

| 场景 | 预期分类 | 备注 |
|---|---|---|
| decorator target support | Pending | 需确认 ArkTS 支持范围 |
| decorator transform | ArkTS-specific | 编译链看护 |
| test262 mapping | Not applicable | 不是 ES2022 直接覆盖 |

<!-- METHOD_DEEPENING_2026_07_03 -->

# Spec Points

## Feature

Method Decorator

## Baseline

ArkTS-specific / TS-compatible / Mixed

## Watch Points

| ID | 规则点 | 分类 | 优先级 | 说明 |
|---|---|---|---|---|
| DECORATOR-METHOD-SPEC-0001 | instance method 前使用 method decorator | Basic Method Decorator | P0 | instance method |
| DECORATOR-METHOD-SPEC-0002 | static method 前使用 method decorator | Basic Method Decorator | P0 | static method |
| DECORATOR-METHOD-SPEC-0003 | method decorator 可为标识符 | Basic Method Decorator | P0 | identifier |
| DECORATOR-METHOD-SPEC-0004 | method decorator 可为调用表达式 | Basic Method Decorator | P0 | factory call |
| DECORATOR-METHOD-SPEC-0005 | method decorator 可携带参数 | Basic Method Decorator | P1 | argument |
| DECORATOR-METHOD-SPEC-0006 | method decorator 参数表达式应被正确解析 | Basic Method Decorator | P1 | parser/checker |
| DECORATOR-METHOD-SPEC-0007 | method decorator 不应破坏方法声明 | Basic Method Decorator | P0 | method declaration |
| DECORATOR-METHOD-SPEC-0008 | method decorator 不应破坏方法参数类型检查 | Basic Method Decorator | P0 | checker |
| DECORATOR-METHOD-SPEC-0009 | method decorator 不应破坏方法返回值类型检查 | Basic Method Decorator | P0 | checker |
| DECORATOR-METHOD-SPEC-0010 | method decorator 不应绕过 checker | Basic Method Decorator | P0 | negative still fails |
| DECORATOR-METHOD-SPEC-0011 | instance method decorator target 应与 prototype 或等价结构相关 | Target / Key / Descriptor | P0 | target |
| DECORATOR-METHOD-SPEC-0012 | static method decorator target 应与 class constructor 或等价结构相关 | Target / Key / Descriptor | P0 | target |
| DECORATOR-METHOD-SPEC-0013 | method key 应正确传递 | Target / Key / Descriptor | P0 | key |
| DECORATOR-METHOD-SPEC-0014 | string method key 应正确 | Target / Key / Descriptor | P0 | key |
| DECORATOR-METHOD-SPEC-0015 | computed method key 如支持需记录 Pending/Boundary | Target / Key / Descriptor | P2 | Pending |
| DECORATOR-METHOD-SPEC-0016 | symbol method key 如支持需记录 Pending/Boundary | Target / Key / Descriptor | P2 | Pending |
| DECORATOR-METHOD-SPEC-0017 | descriptor 或 ArkTS 等价结构需要记录实际行为 | Target / Key / Descriptor | P0 | descriptor |
| DECORATOR-METHOD-SPEC-0018 | method descriptor 的 value/get/set/enumerable/configurable/writable 行为待确认 | Target / Key / Descriptor | P2 | Pending |
| DECORATOR-METHOD-SPEC-0019 | target/key/descriptor 不应因 transform 错乱 | Target / Key / Descriptor | P0 | Related: 05_decorator_transform |
| DECORATOR-METHOD-SPEC-0020 | 多 method decorator 下 target/key 应分别正确 | Target / Key / Descriptor | P1 | multiple |
| DECORATOR-METHOD-SPEC-0021 | method key 不应错配到其他方法 | Target / Key / Descriptor | P0 | key isolation |
| DECORATOR-METHOD-SPEC-0022 | static target 不应误用 prototype | Target / Key / Descriptor | P0 | target |
| DECORATOR-METHOD-SPEC-0023 | instance target 不应误用 constructor | Target / Key / Descriptor | P0 | target |
| DECORATOR-METHOD-SPEC-0024 | method decorator 不应改变参数类型检查 | Method Type System | P1 | type system |
| DECORATOR-METHOD-SPEC-0025 | method decorator 不应改变返回值类型检查 | Method Type System | P1 | type system |
| DECORATOR-METHOD-SPEC-0026 | number 参数 method + decorator | Method Type System | P1 | parameter |
| DECORATOR-METHOD-SPEC-0027 | string 参数 method + decorator | Method Type System | P1 | parameter |
| DECORATOR-METHOD-SPEC-0028 | boolean 参数 method + decorator | Method Type System | P1 | parameter |
| DECORATOR-METHOD-SPEC-0029 | object 参数 method + decorator | Method Type System | P1 | parameter |
| DECORATOR-METHOD-SPEC-0030 | class type 参数 method + decorator | Method Type System | P1 | parameter |
| DECORATOR-METHOD-SPEC-0031 | array 参数 method + decorator | Method Type System | P1 | parameter |
| DECORATOR-METHOD-SPEC-0032 | nullable 参数 method + decorator | Method Type System | P1 | parameter |
| DECORATOR-METHOD-SPEC-0033 | generic 参数 method + decorator boundary | Method Type System | P2 | Pending |
| DECORATOR-METHOD-SPEC-0034 | method 返回 number + decorator | Method Type System | P1 | return |
| DECORATOR-METHOD-SPEC-0035 | method 返回 string + decorator | Method Type System | P1 | return |
| DECORATOR-METHOD-SPEC-0036 | method 返回 void + decorator | Method Type System | P1 | return |
| DECORATOR-METHOD-SPEC-0037 | method 返回 class type + decorator | Method Type System | P1 | return |
| DECORATOR-METHOD-SPEC-0038 | method 参数类型 mismatch + decorator 应仍报错 | Method Type System | P0 | fail_compile |
| DECORATOR-METHOD-SPEC-0039 | method 返回值 mismatch + decorator 应仍报错 | Method Type System | P0 | fail_compile |
| DECORATOR-METHOD-SPEC-0040 | static method + decorator | Static / Visibility / Override | P1 | static |
| DECORATOR-METHOD-SPEC-0041 | public method + decorator | Static / Visibility / Override | P1 | visibility |
| DECORATOR-METHOD-SPEC-0042 | private method + decorator，如支持情况待确认 | Static / Visibility / Override | P2 | Pending |
| DECORATOR-METHOD-SPEC-0043 | protected method + decorator，如支持情况待确认 | Static / Visibility / Override | P2 | Pending |
| DECORATOR-METHOD-SPEC-0044 | override method + decorator | Static / Visibility / Override | P1 | override |
| DECORATOR-METHOD-SPEC-0045 | decorated override method 仍应遵守 override 规则 | Static / Visibility / Override | P1 | override checker |
| DECORATOR-METHOD-SPEC-0046 | decorated method 不应绕过 visibility 访问规则 | Static / Visibility / Override | P1 | visibility checker |
| DECORATOR-METHOD-SPEC-0047 | static decorated method target 不应误用 prototype | Static / Visibility / Override | P0 | target |
| DECORATOR-METHOD-SPEC-0048 | instance decorated method target 不应误用 constructor | Static / Visibility / Override | P0 | target |
| DECORATOR-METHOD-SPEC-0049 | abstract method + decorator boundary | Static / Visibility / Override | P2 | Pending |
| DECORATOR-METHOD-SPEC-0050 | final/sealed 类似特性如存在则记录 Pending | Static / Visibility / Override | P3 | Pending |
| DECORATOR-METHOD-SPEC-0051 | method decorator factory 无参 | Decorator Factory | P1 | Related: 04_decorator_factory |
| DECORATOR-METHOD-SPEC-0052 | method decorator factory 单参数 | Decorator Factory | P1 | Related: 04_decorator_factory |
| DECORATOR-METHOD-SPEC-0053 | method decorator factory 多参数 | Decorator Factory | P1 | Related: 04_decorator_factory |
| DECORATOR-METHOD-SPEC-0054 | 参数为 string literal | Decorator Factory | P1 | argument |
| DECORATOR-METHOD-SPEC-0055 | 参数为 number literal | Decorator Factory | P1 | argument |
| DECORATOR-METHOD-SPEC-0056 | 参数为 boolean literal | Decorator Factory | P1 | argument |
| DECORATOR-METHOD-SPEC-0057 | 参数为 arrow function | Decorator Factory | P1 | argument |
| DECORATOR-METHOD-SPEC-0058 | 参数为 normal function | Decorator Factory | P1 | argument |
| DECORATOR-METHOD-SPEC-0059 | 参数为 IIFE | Decorator Factory | P1 | argument |
| DECORATOR-METHOD-SPEC-0060 | 参数为 imported binding | Decorator Factory | P1 | Related: 09_decorator_module_scope |
| DECORATOR-METHOD-SPEC-0061 | factory 返回 method decorator function | Decorator Factory | P1 | return function |
| DECORATOR-METHOD-SPEC-0062 | factory 返回闭包 method decorator function | Decorator Factory | P1 | closure |
| DECORATOR-METHOD-SPEC-0063 | factory 返回非函数时行为待确认 | Decorator Factory | P2 | Pending |
| DECORATOR-METHOD-SPEC-0064 | factory 抛异常时行为待确认 | Decorator Factory | P2 | Pending |
| DECORATOR-METHOD-SPEC-0065 | factory 求值顺序应稳定 | Decorator Factory | P1 | order |
| DECORATOR-METHOD-SPEC-0066 | method decorator 可能被 lowering 到 class 外部或 descriptor 处理逻辑中 | Transform / Lowering | P0 | Related: 05_decorator_transform |
| DECORATOR-METHOD-SPEC-0067 | lowering 后 decorator 调用应在 class 定义之后或 ArkTS 规定位置 | Transform / Lowering | P1 | lowering |
| DECORATOR-METHOD-SPEC-0068 | lowering 后 target/key/descriptor 参数应正确 | Transform / Lowering | P0 | target/key/descriptor |
| DECORATOR-METHOD-SPEC-0069 | lowering 后 method body 仍应正确 | Transform / Lowering | P1 | method body |
| DECORATOR-METHOD-SPEC-0070 | lowering 后 method 参数和返回值检查仍应正确 | Transform / Lowering | P1 | type system |
| DECORATOR-METHOD-SPEC-0071 | lowering 后 decorator 参数函数作用域应正确 | Transform / Lowering | P1 | scope |
| DECORATOR-METHOD-SPEC-0072 | lowering 后 decorator 参数 IIFE 应按普通表达式处理 | Transform / Lowering | P1 | IIFE |
| DECORATOR-METHOD-SPEC-0073 | lowering 后 imported binding 仍应正确 | Transform / Lowering | P1 | module |
| DECORATOR-METHOD-SPEC-0074 | lowering 后不应重复调用 decorator | Transform / Lowering | P0 | call count |
| DECORATOR-METHOD-SPEC-0075 | lowering 后不应遗漏 decorator | Transform / Lowering | P0 | call count |
| DECORATOR-METHOD-SPEC-0076 | lowering 后不应污染 AST 节点状态 | Transform / Lowering | P0 | AST state |
| DECORATOR-METHOD-SPEC-0077 | lowering 后不应污染 binder 上下文 | Transform / Lowering | P0 | binder context |
| DECORATOR-METHOD-SPEC-0078 | lowering 后 codegen 应使用正确上下文 | Transform / Lowering | P0 | codegen |
| DECORATOR-METHOD-SPEC-0079 | method decorator 是否存在类似 PR 10632 的 context pollution 风险需记录 | Transform / Lowering | P1 | PR 10632 reference only |
| DECORATOR-METHOD-SPEC-0080 | async method + decorator，如支持 | Method Feature Boundary | P2 | Pending |
| DECORATOR-METHOD-SPEC-0081 | generator method + decorator，如支持 | Method Feature Boundary | P2 | Pending |
| DECORATOR-METHOD-SPEC-0082 | overloaded method + decorator，如支持 | Method Feature Boundary | P2 | Pending |
| DECORATOR-METHOD-SPEC-0083 | generic method + decorator | Method Feature Boundary | P2 | Pending |
| DECORATOR-METHOD-SPEC-0084 | getter + decorator boundary | Method Feature Boundary | P2 | Pending |
| DECORATOR-METHOD-SPEC-0085 | setter + decorator boundary | Method Feature Boundary | P2 | Pending |
| DECORATOR-METHOD-SPEC-0086 | accessor decorator 与 method decorator 边界 | Method Feature Boundary | P2 | Pending |
| DECORATOR-METHOD-SPEC-0087 | constructor decorator invalid | Method Feature Boundary | P1 | fail_compile |
| DECORATOR-METHOD-SPEC-0088 | parameter decorator boundary | Method Feature Boundary | P2 | Pending |
| DECORATOR-METHOD-SPEC-0089 | method decorator 与 super.method | Method Feature Boundary | P1 | super |
| DECORATOR-METHOD-SPEC-0090 | method decorator 与 inheritance | Method Feature Boundary | P1 | inheritance |
| DECORATOR-METHOD-SPEC-0091 | method decorator 与 interface implements | Method Feature Boundary | P2 | boundary |
| DECORATOR-METHOD-SPEC-0092 | method decorator 从模块 import | Module Scope | P1 | module |
| DECORATOR-METHOD-SPEC-0093 | method decorator factory 从模块 import | Module Scope | P1 | module |
| DECORATOR-METHOD-SPEC-0094 | method decorator 参数引用 module import | Module Scope | P1 | module |
| DECORATOR-METHOD-SPEC-0095 | method decorator 参数函数捕获 import binding | Module Scope | P1 | module |
| DECORATOR-METHOD-SPEC-0096 | lowering 后 import binding 仍正确 | Module Scope | P1 | module |
| DECORATOR-METHOD-SPEC-0097 | export class + method decorator | Module Scope | P1 | export |
| DECORATOR-METHOD-SPEC-0098 | default export class + method decorator，如支持 | Module Scope | P2 | Pending |
| DECORATOR-METHOD-SPEC-0099 | circular import boundary | Module Scope | P2 | Pending |
| DECORATOR-METHOD-SPEC-0100 | module initialization order boundary | Module Scope | P2 | Pending |
| DECORATOR-METHOD-SPEC-0101 | decorator 名称未定义 | Negative and Boundary | P0 | fail_compile |
| DECORATOR-METHOD-SPEC-0102 | decorator 表达式类型错误 | Negative and Boundary | P0 | fail_compile |
| DECORATOR-METHOD-SPEC-0103 | decorator 放在不支持的位置 | Negative and Boundary | P0 | fail_compile |
| DECORATOR-METHOD-SPEC-0104 | decorator 放在 constructor 上 | Negative and Boundary | P1 | fail_compile |
| DECORATOR-METHOD-SPEC-0105 | decorator 放在 function declaration 上，如不支持 | Negative and Boundary | P1 | fail_compile |
| DECORATOR-METHOD-SPEC-0106 | decorator 放在 interface method 上，如不支持 | Negative and Boundary | P1 | fail_compile |
| DECORATOR-METHOD-SPEC-0107 | decorator 放在 object literal method 上，如不支持 | Negative and Boundary | P1 | fail_compile |
| DECORATOR-METHOD-SPEC-0108 | factory 返回 invalid value | Negative and Boundary | P2 | boundary |
| DECORATOR-METHOD-SPEC-0109 | decorator expression throw | Negative and Boundary | P2 | boundary |
| DECORATOR-METHOD-SPEC-0110 | unsupported method key 标记 Pending | Negative and Boundary | P2 | Pending |
| DECORATOR-METHOD-SPEC-0111 | PR 10632 不是 method decorator bug | Regression Reference | P1 | reference only |
| DECORATOR-METHOD-SPEC-0112 | method decorator 是否存在类似 transform/binder context pollution 风险需要记录 open question | Regression Reference | P1 | open question |
| DECORATOR-METHOD-SPEC-0113 | transform 相关风险归入 `05_decorator_transform/` | Regression Reference | P1 | Related: 05_decorator_transform |
| DECORATOR-METHOD-SPEC-0114 | sendable-specific 展开归入 `07_decorator_with_sendable/` | Regression Reference | P1 | Related: 07_decorator_with_sendable |
