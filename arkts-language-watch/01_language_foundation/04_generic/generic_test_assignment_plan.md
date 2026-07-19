# Generic Test Assignment Plan

## 1. Objective

本计划把 `generic_test_point_master.md` 转换为可直接分配给共建测试人员的工作包。本阶段只规划，不生成 `.ets`，不修改现有 Case ID、Coverage ID、Matrix 或 Registry。

## 2. General Delivery Contract

每个工作包交付时必须包含：

1. 设计点到拟新增 Coverage ID 的评审草案；
2. 每个文件只验证一个核心行为；
3. pass/integration 有真实断言；
4. fail_compile 保留真实非法代码且只有一个主要诊断；
5. boundary 写清官方文档结论、ArkTS Dynamic 待确认项和验证命令；
6. 编译命令、工具链版本、退出码、关键诊断；
7. runtime/ABC/interop 工作包额外提供运行或反汇编结果；
8. 元数据和 Registry 更新必须在代码审查通过后单独执行。

## 3. Recommended Execution Order

```text
WP-00 existing-case truth validation
  -> WP-01 core compile negatives
  -> WP-02 inference/constraint/default
  -> WP-03 inheritance/override/overload
  -> WP-04 variance
  -> WP-05 utility/advanced compatibility
  -> WP-06 runtime/ABC
  -> WP-07 ETS/TS/JS interop
  -> final matrix and registry migration
```

## 4. Work Package Summary

| WP | Topic | Design IDs | Suggested Cases | Priority | Assignee Profile |
|---|---|---|---:|---|---|
| WP-00 | 现有 28 用例真实编译/运行基线 | existing | 28 validation records | P0 | ArkTS toolchain tester |
| WP-01 | 核心编译负向 | TP/GC/GI/RT | 10-12 | P0 | parser/checker tester |
| WP-02 | 推断、constraint、default | IN/CO/DE | 16-20 | P0/P1 | type-system tester |
| WP-03 | inheritance、override、overload | IH/OV/OL | 18-22 | P0/P1 | class/function tester |
| WP-04 | variance | VA | 12-14 | P0/P1 | type compatibility tester |
| WP-05 | utility 和高级类型兼容 | UT | 14-18 | P0/P1 | TS compatibility tester |
| WP-06 | runtime erasure 和 ABC | GF/GC/RT | 8-12 | P0/P1 | ArkCompiler/bytecode tester |
| WP-07 | ETS/TS/JS interop | IO | 12-16 + helpers | P0/P1 | module/interop tester |

## 5. WP-00: Existing Case Truth Validation

### Scope

- 编译全部 28 个现有 `.ets`；
- 运行所有可编译文件；
- 不根据 boundary 标签预判结果；
- 对 9 个 wrong mapping 只记录事实，不在本工作包修改元数据。

### Required Output

| Output | Requirement |
|---|---|
| compile inventory | 文件、命令、版本、退出码、诊断 |
| runtime inventory | 文件、是否执行 main、断言结果 |
| reclassification proposal | pass / fail_compile / boundary / unsupported |
| wrong mapping confirmation | 逐项确认本次审计列出的 9 个映射 |

### Acceptance

- 28/28 有编译结果；
- 所有成功编译文件有运行结论；
- 不修改 Case ID 和 Registry；
- 不把“编译成功”写成“泛型语义完全验证”。

## 6. WP-01: Core Compile Negatives

| Design IDs | Suggested File | Main Diagnostic |
|---|---|---|
| GTP-TP-008 | `xts/fail_compile/generic_duplicate_type_parameter_fail_compile.ets` | duplicate type parameter |
| GTP-GC-007 | `xts/fail_compile/generic_static_class_type_parameter_fail_compile.ets` | static member references class T |
| GTP-GC-009 | `xts/fail_compile/generic_constructor_argument_mismatch_fail_compile.ets` | constructor value incompatible with T |
| GTP-GI-009 | `xts/fail_compile/generic_interface_implementation_mismatch_fail_compile.ets` | implements member mismatch |
| GTP-GF-010 | `xts/fail_compile/generic_return_only_inference_fail_compile.ets` | T cannot be inferred from return target |
| GTP-GF-011 | `xts/fail_compile/generic_arrow_function_support_fail_compile.ets` | generic lambda restriction, if confirmed |
| GTP-CO-003 | `xts/fail_compile/generic_constraint_violation_fail_compile.ets` | type argument violates constraint |
| GTP-DE-006 | `xts/fail_compile/generic_required_after_default_fail_compile.ets` | required type parameter follows optional |
| GTP-DE-008 | `xts/fail_compile/generic_default_constraint_violation_fail_compile.ets` | default violates constraint |
| GTP-RT-004 | `xts/fail_compile/generic_type_parameter_instanceof_fail_compile.ets` | T has no runtime constructor value |
| GTP-RT-006 | `xts/fail_compile/generic_type_parameter_typeof_fail_compile.ets` | T is not a value expression |

Acceptance: 每个文件只有一个非法点；不能把非法语句注释掉；实际诊断阶段和文本必须记录。

## 7. WP-02: Inference, Constraint And Default

| Subtask | Design IDs | Suggested Deliverables |
|---|---|---|
| inference-basic | GTP-IN-002..004, IN-006, IN-007 | multi/class/method/array/nested inference pass |
| inference-boundary | GTP-IN-005, IN-008, IN-010, IN-011 | literal/contextual/no-candidate/conflict boundary |
| constraint-positive | GTP-CO-004..008, CO-010, CO-011 | interface/class/dependent/composite/constructor/default constraints |
| constraint-runtime-control | GTP-CO-012 | checker constraint 与 runtime 无自动检查的对照 |
| default-basic | GTP-DE-002..005, DE-007, DE-009 | interface/class/multi/default-vs-inference cases |

### Required Differential Sets

1. inferred vs explicit type argument；
2. inference candidate vs default fallback；
3. constraint satisfied vs violation；
4. preserved concrete subtype vs widened constraint type；
5. single candidate vs conflicting candidates。

### Acceptance

- 默认参数用例必须让 T 无法从普通 value 参数推断，否则不能证明 default 生效；
- constraint runtime control 不得声称 Ark Runtime 自动验证 TypeScript 结构；
- 返回类型推断必须区分“函数返回类型由 body 推断”和“调用处只从目标类型推断 T”。

## 8. WP-03: Inheritance, Override And Overload

| Subtask | Design IDs | Suggested Case Family |
|---|---|---|
| interface inheritance | GTP-IH-001, IH-002, IH-006 | `generic_interface_extends_*` |
| class inheritance | GTP-IH-003..005, IH-007, IH-008 | `generic_class_inheritance_*` |
| cross-module inheritance | GTP-IH-009 | `modules/generic_base.ets` + integration case |
| override-positive | GTP-OV-001, OV-002, OV-007 | same signature, renamed T, dynamic dispatch |
| override-negative | GTP-OV-003..006 | return/constraint/specialized/generic mismatch |
| overload | GTP-OL-001..008 | signatures, inference, implementation errors, runtime body |

### Acceptance

- 动态派发测试中 base 和 derived body 必须返回不同 marker；
- overload 用例必须区分签名层与唯一 implementation body；
- runtime/ABC 检查不得假定 overload signature 形成独立函数；
- 继承用例不展开普通 class constructor/super 语义，保持 generic ownership。

## 9. WP-04: Variance

| Subtask | Design IDs | Deliverable |
|---|---|---|
| syntax | GTP-VA-001..003 | `out` / `in` / `in out` compile boundary |
| assignment-positive | GTP-VA-004, VA-006 | producer covariance and consumer contravariance |
| assignment-negative | GTP-VA-005, VA-007, VA-008 | reverse and invariant assignment diagnostics |
| declaration-negative | GTP-VA-009, VA-010 | type parameter used in incompatible position |
| inference/runtime | GTP-VA-011, VA-012 | inferred variance and runtime erasure |

### Required Type Fixture

使用具名 `Animal -> Cat -> Kitten` class hierarchy，避免 object literal structural comparison 干扰 variance 结论。

### Acceptance

- 明确区分同一泛型类型的实例化比较与结构比较；
- ArkTS 官方文档声称支持 variance 语法，但 ArkTS Dynamic 工具链结果必须单独记录；
- runtime case 只证明标注不改变对象值/identity，不把 variance 当运行时机制。

## 10. WP-05: Utility And Advanced Compatibility

| Design IDs | Test Matrix |
|---|---|
| GTP-UT-002 | Promise<T> resolve, await, reject |
| GTP-UT-003 | Map<K,V> key/value and runtime identity |
| GTP-UT-004 | actual `Record<K,V>` positive/negative boundary |
| GTP-UT-005 | Partial<T> with class/interface and invalid primitive parameter |
| GTP-UT-006 | Required<T> omitted member negative |
| GTP-UT-007 | Readonly<T> compile-time write negative + runtime non-freeze control |
| GTP-UT-008 | Pick/Omit unsupported diagnostics |
| GTP-UT-009 | conditional/mapped/infer unsupported diagnostics |
| GTP-UT-010 | keyof/type-query/indexed-access compatibility diagnostics |
| GTP-UT-011 | Exclude/Extract/NonNullable/Parameters/ReturnType/Awaited/InstanceType matrix |
| GTP-UT-012 | T|null/undefined and null-safety ownership |

Acceptance: Utility Type 测试必须使用真实 utility syntax，不能用自定义 index signature 或显式接口替代后仍声称覆盖该 utility。

## 11. WP-06: Runtime Erasure And ABC

| Design IDs | Runtime/Bytecode Checkpoint |
|---|---|
| GTP-GF-012 | `identity<number>` 与 `identity<string>` 调用同一函数实体 |
| GTP-GC-010, RT-002 | 不同类型实参实例的 constructor 严格相等 |
| GTP-RT-001 | 字段实际值、对象 identity 不受类型实参影响 |
| GTP-RT-003 | concrete generic class 的 instanceof |
| GTP-RT-007 | generic interface 无 runtime constructor/prototype |
| GTP-RT-008 | 函数调用和副作用顺序不受类型实参影响 |
| GTP-RT-009 | ABC 不产生可观察的按类型实参复制执行体 |
| GTP-RT-010 | 异常和副作用与同构非泛型 control 一致 |
| GTP-OL-008 | overload 运行时只保留 implementation |
| GTP-VA-012 | variance annotation 不产生 runtime 分派 |

### Deliverables

- source candidate；
- bytecode checkpoint Markdown；
- 实际编译命令和 ABC 路径；
- 反汇编观察结果；
- 不生成未经确认的 `.expected.txt`。

## 12. WP-07: ETS / TS / JS Interop

建议目录：

```text
xts/integration/generic_interop/
  ets_producer.ets
  ets_consumer.ets
  ts_producer.ts
  ts_consumer.ts
  js_producer.js
  generic_interop_main.ets
```

| Matrix | Design IDs | Required Assertion |
|---|---|---|
| ETS -> ETS | GTP-IO-001..003 | import path、值、class identity、type-only interface |
| TS -> ETS | GTP-IO-004 | inferred/explicit generic call result |
| ETS -> TS | GTP-IO-005 | exported function/class contract |
| JS -> ETS | GTP-IO-006 | dynamic value crossing generic API boundary |
| ETS -> JS | GTP-IO-007 | value and object identity retained |
| Promise | GTP-IO-008 | resolve type/value and reject exception |
| containers | GTP-IO-009 | Array/Map values across boundary |
| class | GTP-IO-010 | constructor/prototype identity |
| declarations | GTP-IO-011 | `.d.ts` generic contract matches implementation |
| load/error | GTP-IO-012 | ABC link/module load and exception propagation |

Acceptance: 不允许用单文件 local call 替代 interop；所有 helper 必须记录 Used By；语言组合和扩展名必须真实存在。

## 13. Final Migration Package

所有工作包通过后，再单独执行元数据迁移：

1. 评审并分配正式 Coverage ID；
2. 为新文件分配 Case ID；
3. 修复本次发现的 9 个 wrong mapping；
4. 更新 Coverage Matrix 和 Candidate Index；
5. 更新 Case/Coverage Registry；
6. 保留旧 ID 的 legacy mapping；
7. 生成最终 traceability 和验证报告。

本计划本身不授权直接修改现有 ID 或 Registry。
