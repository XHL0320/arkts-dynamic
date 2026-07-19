# Generic Test Design Audit

## 1. Audit Objective

本次审查以实际代码为准，对 `04_generic` 的 28 个 `.ets`、91 行 Coverage Matrix、45 行 Candidate Index 和全局 Registry 做规范驱动复核。未把文件头元数据、Stage 报告或 generated 状态直接当作真实覆盖结论。

## 2. Inputs And Sources

| 来源 | 用途 |
|---|---|
| `文档/arkts-language-guide-generics.md` | ArkTS 泛型函数、类、接口、约束、默认参数、工具类型、变型及高级边界 |
| [TypeScript Generics](https://www.typescriptlang.org/docs/handbook/2/generics.html) | 推断、约束、默认参数、variance 参照 |
| [TypeScript Utility Types](https://www.typescriptlang.org/docs/handbook/utility-types.html) | Utility Types 语义参照 |
| [ECMAScript 2022](https://262.ecma-international.org/13.0/) | 泛型擦除后函数、类、对象、模块和异常的运行语义 |
| [OpenHarmony ArkTS introduction](https://gitee.com/openharmony/docs/blob/master/en/application-dev/quick-start/arkts-get-started.md) | ArkTS 静态类型、TS/JS 兼容定位 |
| [OpenHarmony Ark Runtime subsystem](https://gitee.com/openharmony/docs/blob/master/en/readme/ARK-Runtime-Subsystem.md) | ABC 与 Ark Runtime 执行边界 |

## 3. Normative Boundary

ECMAScript 没有泛型类型参数、constraint、default type parameter 或 variance 语法。它只规范泛型代码经前端处理后实际执行的函数、类、对象、Promise、Array、Map、模块和异常行为。

本次采用以下执行模型：

```text
ETS / TS / JS source
  -> parse / bind / type check / compatibility check
  -> ABC generation (可能包含类型元数据，但 T 不应成为普通运行时值)
  -> Ark Runtime load / link / execute
  -> ECMAScript observable values, identity, prototype, side effects and exceptions
```

因此必须拆分三类测试：

1. 编译期类型系统：泛型语法、推断、约束、默认参数、variance、overload；
2. ABC/擦除：是否生成按类型实参特化的可执行实体、类型参数是否有运行时值；
3. 运行时：具体值、函数和 class 的 ECMA 行为及 ETS/TS/JS 互操作。

## 4. Current Asset Baseline

| 项目 | 实际数量 |
|---|---:|
| `.ets` | 28 |
| pass | 13 |
| boundary | 14 |
| regression | 1 |
| fail_compile | 0 |
| fail_runtime | 0 |
| Coverage ID | 91 |
| Matrix generated/planned | 40 / 51 |
| Candidate generated/planned | 31 / 14 |
| 已真实编译验证 | 0 |
| 已真实运行验证 | 0 |

## 5. Code-Level Case Audit

| Case ID | 实际代码覆盖 | 元数据/设计判断 | 审查结论 | 后续动作 |
|---|---|---|---|---|
| GEN-PASS-001 | `Array<number/string>` 长度和索引 | GEN-ARR-001 基本匹配 | covered；但官方风格优先 `T[]` | 保留为语法对照，补 `T[]` 主路径 |
| GEN-PASS-002 | `Container<T>`、显式实例化、字段值 | GEN-CLASS-001/002 匹配 | covered | 编译运行验证 |
| GEN-PASS-003 | `Box<T>` 构造器、字段、getter，部分调用省略构造类型实参 | GEN-CLASS-003 匹配 | covered；构造推断仅 incidental | 单独补构造器推断矩阵 |
| GEN-PASS-004 | `identity<T>`，调用时省略类型实参 | GEN-FUNC-001/TYPEPARAM-004 匹配 | covered；同时隐含 inference | 保留，避免再重复 basic identity |
| GEN-PASS-005 | `identity<number/string>` | GEN-EXPL-001/FUNC-002 匹配 | covered | 编译运行验证 |
| GEN-PASS-006 | `wrap<T>` 从实参推断 T | GEN-FUNC-003/INFER-001 匹配 | covered | 补多候选、无候选和 callback 推断 |
| GEN-PASS-007 | `pair<K,V>` 并推断 tuple | FUNC-004/MULTI-002 基本匹配 | covered；也实际覆盖多参数声明和独立推断 | 后续正式映射时评估 MULTI-001/004 |
| GEN-PASS-008 | 泛型接口、implements、`Record<string,number>` 和索引访问 | IF-001/004 只描述接口 | partial；混入 Record/index signature 风险 | 拆成纯接口 implements 与 Record 边界 |
| GEN-PASS-009 | `Transformer<T,R>` 方法签名与具体实现 | GEN-IF-003 匹配 | covered | 编译运行验证 |
| GEN-PASS-010 | `Holder<T>` + object literal 结构赋值 | GEN-IF-002 基本匹配 | partial；结构赋值可能受 ArkTS 模式限制 | 工具链确认后决定 pass/boundary |
| GEN-PASS-011 | class 中泛型方法，全部显式类型实参 | METHOD-001/002 匹配 | covered；未覆盖 METHOD-003 inference | 补省略类型实参调用 |
| GEN-PASS-012 | 仅有 `number[][]`，没有类型参数 T | GEN-NEST-001 声称 `Array<Array<T>>` | wrong mapping | 设计真实泛型函数/class 返回嵌套 T |
| GEN-PASS-013 | `Pair<A,B>` 嵌套 `Pair<number,boolean>` | GEN-NEST-002 匹配 | covered | 编译运行验证 |
| GEN-REGR-001 | 重复 generic function/class/interface 基础路径 | 三个基础 Coverage | duplicate/partial；Regression Issue pending | 有真实缺陷编号前不作为有效 regression |
| GEN-BOUND-001 | 合法 `Wrapper<T>` 构造器与字段 | GEN-CLASS-004 | 类型匹配，但它是稳定正向形态 | 验证后转 pass，不应长期 boundary |
| GEN-BOUND-002 | static number 字段和实例 T 字段；非法 static T 仅在注释 | GEN-CLASS-005 静态成员边界 | partial | 新增真实 `static value: T` fail_compile |
| GEN-BOUND-003 | interface constraint 的合法调用；违规调用只在注释 | GEN-CONST-004/005 | partial + wrong mapping；没有运行时检查 | 拆 positive constraint 与真实 fail_compile；移除“运行时检查”结论 |
| GEN-BOUND-004 | 导出泛型函数/class，但仅在本文件本地调用 | GEN-MOD-001/002 | partial | 增加 importer helper，验证跨模块 ABC/link |
| GEN-BOUND-005 | `T extends HasLength`，string/array 正向 | GEN-CONST-001/002 匹配 | covered source shape；尚未验证 | 编译运行验证，另补 violation |
| GEN-BOUND-006 | 声明 `T=string`，但首个调用从参数推断 string | GEN-DEF-001/002 | syntax covered，default behavior 未触发 | 用无推断候选的 API 验证 default 生效 |
| GEN-BOUND-007 | 泛型 interface extends 并传递 T | GEN-IF-005 声称运行时擦除 | wrong mapping | 建立新的 inheritance Coverage；IF-005 另做 erasure |
| GEN-BOUND-008 | 对象字面量中泛型方法 | GEN-METHOD-004 匹配 | covered source shape；支持待确认 | 编译运行验证 |
| GEN-BOUND-009 | derived 以同签名 generic method override | GEN-METHOD-005 声称运行时擦除 | wrong/partial | 映射 override；用不同返回标记验证动态派发 |
| GEN-BOUND-010 | 自定义 string index signature，不是 `Record<K,V>` | GEN-ARR-002 Record 边界 | wrong mapping | 单独验证真实 Record；index signature 归兼容负向 |
| GEN-BOUND-011 | `typeof box === 'object'` 和字段值 | GEN-RT-001/005 | partial | 增加 constructor identity、prototype、ABC 检查 |
| GEN-BOUND-012 | 只执行 `instanceof GenericList`；`instanceof T` 被注释 | GEN-RT-003 声称 fail_compile | wrong mapping | 创建真实非法代码的 fail_compile；当前代码只算 concrete class control |
| GEN-BOUND-013 | 只执行 `typeof value`；`typeof T` 被注释 | GEN-RT-002 声称 typeof T | wrong mapping | 创建真实 `typeof T` 负向；当前代码映射 typeof value control |
| GEN-BOUND-014 | `T|null` 输入和 `T|undefined` 返回 | GEN-UNION-001/004，后者声称 optional property | partial + wrong mapping | 保留 nullability；optional property 另建用例 |

## 6. Wrong Mapping Findings

| Severity | Coverage ID | 当前 Case | 问题 |
|---|---|---|---|
| P0 | GEN-RT-003 | GEN-BOUND-012 | 核心非法表达式被注释，未覆盖 `instanceof T` |
| P0 | GEN-RT-002 | GEN-BOUND-013 | 实际覆盖 `typeof value`，不是 `typeof T` |
| P0 | GEN-CONST-005 | GEN-BOUND-003 | 泛型 constraint 是编译期限制，代码没有运行时结构检查 |
| P1 | GEN-NEST-001 | GEN-PASS-012 | `number[][]` 不含泛型参数，不能证明 `Array<Array<T>>` |
| P1 | GEN-IF-005 | GEN-BOUND-007 | 实际是泛型接口继承，不是运行时擦除 |
| P1 | GEN-METHOD-005 | GEN-BOUND-009 | 实际是 override 正向，不是泛型方法运行时擦除 |
| P1 | GEN-ARR-002 | GEN-BOUND-010 | 自定义 index signature 不等于 `Record<K,V>` utility type |
| P1 | GEN-UNION-004 | GEN-BOUND-014 | 代码没有 optional property |
| P1 | GEN-DEF-002 | GEN-BOUND-006 | 调用可从 value 推断 string，默认类型未实际参与选择 |

## 7. Duplicate And Low-Value Coverage

| Cluster | 文件 | 结论 |
|---|---|---|
| generic function basic | GEN-PASS-004、GEN-REGR-001 | regression 没有 issue，重复基础 identity |
| generic class basic | GEN-PASS-002、GEN-BOUND-001、GEN-REGR-001 | constructor happy path 重复，应保留一个主用例和必要对照 |
| generic interface basic | GEN-PASS-008、GEN-REGR-001 | regression 重复且混入 Map/Record 依赖 |
| array/nested array | GEN-PASS-001、GEN-PASS-012 | 后者只是二维数组，不构成独立泛型语义 |

## 8. Missing Capability Families

现有 91 个 Coverage ID 本身也未覆盖以下完整方向：

- generic inheritance 的 class/interface 参数传递和具体化；
- override 的不兼容签名、constraint 缩窄和动态派发；
- generic overload signatures 与单一实现函数；
- `in`、`out`、`in out` variance 全体系；
- `Partial`、`Required`、`Readonly` 及受限 `Record`；
- Pick/Omit、conditional、mapped、infer、keyof、indexed access 的 ArkTS 负向矩阵；
- default parameter 的合法顺序、constraint、推断优先级；
- constructor inference、callback/contextual inference、return-only inference failure；
- ABC 级擦除、constructor identity、无 specialization 可执行实体；
- ETS/TS/JS 双向泛型互操作和 `.d.ts` 契约；
- 真实 fail_compile 与 fail_runtime 资产。

完整列表见 `generic_test_point_master.md`。

## 9. Runtime Validation Requirements

当前 28 个 `.ets` 均未验证。由于 14 个 boundary 文件也包含 `main()` 和断言，不能只做静态文档审查：

| 验证层 | 对象 | 必须记录 |
|---|---|---|
| parser/checker | 28 个现有文件 + 后续负向文件 | 命令、版本、退出码、诊断 |
| positive runtime | 13 pass + 可编译 boundary + regression | 断言通过数和失败堆栈 |
| ABC | erasure、overload、variance、跨实例化 identity | ABC/反汇编检查点，不先造 expected |
| module/link | generic export/import | helper 路径、模块加载结果 |
| interop | ETS/TS/JS | producer/consumer 语言组合、值和异常 |

## 10. Final Assessment

当前资产适合作为“首批语法形态候选”，不适合作为“泛型语义已覆盖”的依据：

- 基础 generic function/class/interface 正向形态较完整；
- compile negative、variance、overload、utility、interop 基本空白；
- 14 个 boundary 中多数只测试合法控制路径；
- 9 个 Coverage 映射存在明显或实质性偏差；
- generated 只代表文件存在，不代表语义覆盖或验证完成；
- 下一轮应先纠正测试设计和分配任务，再生成代码和迁移元数据。
