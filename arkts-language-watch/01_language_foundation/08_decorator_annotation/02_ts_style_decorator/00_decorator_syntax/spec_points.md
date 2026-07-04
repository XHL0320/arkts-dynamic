# Spec Points

## Feature

00 Decorator Syntax

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

<!-- SYNTAX_DEEPENING_2026_07_03 -->

# Spec Points

## Feature

Decorator Syntax

## Baseline

ArkTS-specific / TS-compatible / Mixed

## Watch Points

| ID | 规则点 | 分类 | 优先级 | 说明 |
|---|---|---|---|---|
| DECORATOR-SYNTAX-SPEC-0001 | decorator 以 `@` 开始 | Basic Syntax | P0 | token entry |
| DECORATOR-SYNTAX-SPEC-0002 | decorator 后跟标识符 | Basic Syntax | P0 | identifier |
| DECORATOR-SYNTAX-SPEC-0003 | decorator 后跟 call expression | Basic Syntax | P0 | factory call |
| DECORATOR-SYNTAX-SPEC-0004 | decorator 后跟 member expression，如支持情况待确认 | Basic Syntax | P2 | Pending |
| DECORATOR-SYNTAX-SPEC-0005 | decorator 后跟 parenthesized expression，如支持情况待确认 | Basic Syntax | P2 | Pending |
| DECORATOR-SYNTAX-SPEC-0006 | decorator 表达式不能为空 | Basic Syntax | P0 | parser negative |
| DECORATOR-SYNTAX-SPEC-0007 | decorator 不能只有 `@` | Basic Syntax | P0 | parser negative |
| DECORATOR-SYNTAX-SPEC-0008 | decorator 与被修饰声明之间允许换行 | Basic Syntax | P1 | layout |
| DECORATOR-SYNTAX-SPEC-0009 | decorator 与被修饰声明之间允许注释 | Basic Syntax | P1 | layout |
| DECORATOR-SYNTAX-SPEC-0010 | decorator 与被修饰声明之间不应插入无关语句 | Basic Syntax | P0 | parser negative |
| DECORATOR-SYNTAX-SPEC-0011 | class declaration decorator | Supported Targets | P1 | Related: 01_class_decorator |
| DECORATOR-SYNTAX-SPEC-0012 | property declaration decorator | Supported Targets | P1 | Related: 02_property_decorator |
| DECORATOR-SYNTAX-SPEC-0013 | method declaration decorator | Supported Targets | P1 | Related: 03_method_decorator |
| DECORATOR-SYNTAX-SPEC-0014 | static property decorator | Supported Targets | P1 | Related: 02_property_decorator |
| DECORATOR-SYNTAX-SPEC-0015 | static method decorator | Supported Targets | P1 | Related: 03_method_decorator |
| DECORATOR-SYNTAX-SPEC-0016 | accessor decorator，如支持情况待确认 | Supported Targets | P2 | Pending |
| DECORATOR-SYNTAX-SPEC-0017 | parameter decorator，如支持情况待确认 | Supported Targets | P2 | Pending |
| DECORATOR-SYNTAX-SPEC-0018 | enum member decorator，如支持情况待确认 | Supported Targets | P2 | Pending |
| DECORATOR-SYNTAX-SPEC-0019 | interface member decorator，如支持情况待确认 | Supported Targets | P2 | Pending |
| DECORATOR-SYNTAX-SPEC-0020 | type alias decorator 如不支持应报错 | Supported Targets | P1 | fail_compile |
| DECORATOR-SYNTAX-SPEC-0021 | local variable 前使用 decorator | Invalid Positions | P0 | parser/checker negative |
| DECORATOR-SYNTAX-SPEC-0022 | function local statement 前使用 decorator | Invalid Positions | P0 | parser/checker negative |
| DECORATOR-SYNTAX-SPEC-0023 | expression statement 前使用 decorator | Invalid Positions | P0 | parser/checker negative |
| DECORATOR-SYNTAX-SPEC-0024 | import declaration 前使用 decorator，如不支持 | Invalid Positions | P1 | negative |
| DECORATOR-SYNTAX-SPEC-0025 | export statement 前使用 decorator 但无 declaration | Invalid Positions | P1 | negative |
| DECORATOR-SYNTAX-SPEC-0026 | type alias 前使用 decorator | Invalid Positions | P1 | negative |
| DECORATOR-SYNTAX-SPEC-0027 | interface declaration 前使用 decorator，如不支持 | Invalid Positions | P2 | Pending |
| DECORATOR-SYNTAX-SPEC-0028 | enum declaration 前使用 decorator，如不支持 | Invalid Positions | P2 | Pending |
| DECORATOR-SYNTAX-SPEC-0029 | enum member 前使用 decorator，如不支持 | Invalid Positions | P2 | Pending |
| DECORATOR-SYNTAX-SPEC-0030 | object literal property 前使用 decorator，如不支持 | Invalid Positions | P1 | negative |
| DECORATOR-SYNTAX-SPEC-0031 | function parameter decorator，如不支持 | Invalid Positions | P2 | Pending |
| DECORATOR-SYNTAX-SPEC-0032 | standalone `@decorator` 无声明 | Invalid Positions | P0 | parser negative |
| DECORATOR-SYNTAX-SPEC-0033 | decorator + export class | Modifier Order | P1 | export |
| DECORATOR-SYNTAX-SPEC-0034 | export + decorator + class 的顺序是否支持 | Modifier Order | P2 | Pending |
| DECORATOR-SYNTAX-SPEC-0035 | decorator + default export class | Modifier Order | P2 | Pending |
| DECORATOR-SYNTAX-SPEC-0036 | decorator 与 static 的相对位置 | Modifier Order | P1 | static |
| DECORATOR-SYNTAX-SPEC-0037 | decorator 与 readonly 的相对位置 | Modifier Order | P1 | readonly |
| DECORATOR-SYNTAX-SPEC-0038 | decorator 与 public/private/protected 的相对位置 | Modifier Order | P1 | visibility |
| DECORATOR-SYNTAX-SPEC-0039 | decorator 与 abstract 的相对位置 | Modifier Order | P2 | Pending |
| DECORATOR-SYNTAX-SPEC-0040 | decorator 与 override 的相对位置 | Modifier Order | P2 | Pending |
| DECORATOR-SYNTAX-SPEC-0041 | 多个修饰符组合的 parser 行为 | Modifier Order | P1 | parser |
| DECORATOR-SYNTAX-SPEC-0042 | unsupported order 记录 fail_compile 或 Pending | Modifier Order | P1 | negative |
| DECORATOR-SYNTAX-SPEC-0043 | 单个 decorator | Multiple Decorators | P1 | basic |
| DECORATOR-SYNTAX-SPEC-0044 | 多个 decorators 连续排列 | Multiple Decorators | P1 | multiple |
| DECORATOR-SYNTAX-SPEC-0045 | 多个 decorators 分行排列 | Multiple Decorators | P1 | layout |
| DECORATOR-SYNTAX-SPEC-0046 | 多个 decorators 中间有注释 | Multiple Decorators | P1 | layout |
| DECORATOR-SYNTAX-SPEC-0047 | 多个 decorators 中间有空行 | Multiple Decorators | P1 | layout |
| DECORATOR-SYNTAX-SPEC-0048 | 多个 decorators 与 factory 混合 | Multiple Decorators | P1 | Related: 04_decorator_factory |
| DECORATOR-SYNTAX-SPEC-0049 | 多个 decorators 语法顺序 | Multiple Decorators | P1 | syntax order |
| DECORATOR-SYNTAX-SPEC-0050 | 多个 decorators 中某个表达式非法 | Multiple Decorators | P0 | negative |
| DECORATOR-SYNTAX-SPEC-0051 | 多个 decorators 不应破坏声明解析 | Multiple Decorators | P1 | parser |
| DECORATOR-SYNTAX-SPEC-0052 | 多 decorator execution order 不在本目录展开，交给 `06_decorator_execution_order/` | Multiple Decorators | P2 | scope boundary |
| DECORATOR-SYNTAX-SPEC-0053 | identifier decorator | Decorator Expression Forms | P1 | identifier |
| DECORATOR-SYNTAX-SPEC-0054 | call expression decorator | Decorator Expression Forms | P1 | factory call |
| DECORATOR-SYNTAX-SPEC-0055 | nested call expression decorator | Decorator Expression Forms | P1 | factory |
| DECORATOR-SYNTAX-SPEC-0056 | member expression decorator，如支持情况待确认 | Decorator Expression Forms | P2 | Pending |
| DECORATOR-SYNTAX-SPEC-0057 | imported decorator identifier | Decorator Expression Forms | P1 | module |
| DECORATOR-SYNTAX-SPEC-0058 | decorator factory with literal args | Decorator Expression Forms | P1 | factory args |
| DECORATOR-SYNTAX-SPEC-0059 | decorator factory with function args | Decorator Expression Forms | P1 | factory args |
| DECORATOR-SYNTAX-SPEC-0060 | decorator factory with IIFE args | Decorator Expression Forms | P1 | factory args |
| DECORATOR-SYNTAX-SPEC-0061 | decorator expression type invalid | Decorator Expression Forms | P0 | checker negative |
| DECORATOR-SYNTAX-SPEC-0062 | decorator expression unresolved identifier | Decorator Expression Forms | P0 | checker negative |
| DECORATOR-SYNTAX-SPEC-0063 | decorator factory call syntax invalid | Decorator Expression Forms | P0 | parser negative |
| DECORATOR-SYNTAX-SPEC-0064 | decorator 参数列表语法错误 | Decorator Expression Forms | P0 | parser negative |
| DECORATOR-SYNTAX-SPEC-0065 | parser 应识别合法 decorator syntax | Parser / Checker Boundary | P0 | parser |
| DECORATOR-SYNTAX-SPEC-0066 | parser 应拒绝缺失声明的 decorator | Parser / Checker Boundary | P0 | parser |
| DECORATOR-SYNTAX-SPEC-0067 | parser 应拒绝错误位置 decorator | Parser / Checker Boundary | P0 | parser |
| DECORATOR-SYNTAX-SPEC-0068 | checker 应检查 decorator 表达式是否可调用 | Parser / Checker Boundary | P0 | checker |
| DECORATOR-SYNTAX-SPEC-0069 | checker 应检查 decorator factory 返回值或记录 Pending | Parser / Checker Boundary | P1 | checker/boundary |
| DECORATOR-SYNTAX-SPEC-0070 | checker 应保留字段/方法/class 原有类型检查 | Parser / Checker Boundary | P1 | semantic preservation |
| DECORATOR-SYNTAX-SPEC-0071 | unsupported target 应稳定报错 | Parser / Checker Boundary | P1 | negative |
| DECORATOR-SYNTAX-SPEC-0072 | syntax accepted but semantic invalid 的场景需区分 parser/checker | Parser / Checker Boundary | P1 | diagnostic boundary |
| DECORATOR-SYNTAX-SPEC-0073 | PR 10632 使用 property decorator syntax | Regression Reference | P1 | PR 10632 |
| DECORATOR-SYNTAX-SPEC-0074 | PR 10632 的核心不是 syntax，而是 transform/sendable/codegen | Regression Reference | P1 | boundary |
| DECORATOR-SYNTAX-SPEC-0075 | sendable-specific 展开归入 `07_decorator_with_sendable/` | Regression Reference | P1 | Related: 07_decorator_with_sendable |
| DECORATOR-SYNTAX-SPEC-0076 | property-specific 展开归入 `02_property_decorator/` | Regression Reference | P1 | Related: 02_property_decorator |
