# Generic Test Point Master

## 1. Purpose

本文件给出 `04_generic` 的规范驱动测试点全集。`GTP-*` 是本次审计使用的设计编号，不是正式 Coverage ID，不写入全局 Registry。后续只有经过评审、去重和 ownership 确认的测试点，才能分配正式 Coverage ID。

## 2. Normative Layers

| 标记 | 含义 |
|---|---|
| ArkTS | `文档/arkts-language-guide-generics.md` 中的官方 ArkTS 能力或限制 |
| TS | TypeScript 泛型语义参照 |
| ECMA | 泛型擦除后函数、类、对象、模块的 ECMAScript 2022 运行语义 |
| ABC | ETS/TS/JS 编译到 ABC 后的字节码和 Ark Runtime 可观察行为 |
| Interop | ETS、TS、JS 模块边界及类型信息跨语言传递 |

## 3. Summary

| 项目 | 数量 |
|---|---:|
| 测试点总数 | 144 |
| 当前代码完整覆盖 | 26 |
| 当前代码部分覆盖 | 23 |
| 当前缺失 | 95 |

“完整覆盖”仅表示现有源码真实包含该语义，不表示已经通过官方工具链验证。

## 4. Type Parameter Foundation

| Design ID | 测试点 | 类型 | P | 来源 | 当前证据 | 状态 |
|---|---|---|---|---|---|---|
| GTP-TP-001 | 泛型函数单类型参数声明与使用 | pass | P0 | ArkTS/TS | GEN-PASS-004 | covered |
| GTP-TP-002 | 泛型类单类型参数声明与使用 | pass | P0 | ArkTS/TS | GEN-PASS-002 | covered |
| GTP-TP-003 | 泛型接口单类型参数声明与使用 | pass | P0 | ArkTS/TS | GEN-PASS-008 | covered |
| GTP-TP-004 | 类中泛型方法独立类型参数 | pass | P0 | ArkTS/TS | GEN-PASS-011 | covered |
| GTP-TP-005 | 多类型参数声明及各参数独立使用 | pass | P0 | ArkTS/TS | GEN-PASS-007 | covered |
| GTP-TP-006 | 类型参数仅在其声明作用域可见 | fail_compile | P1 | TS | none | missing |
| GTP-TP-007 | 内外层同名类型参数遮蔽规则 | boundary | P1 | TS/ArkTS | none | missing |
| GTP-TP-008 | 同一参数列表重复类型参数名 | fail_compile | P0 | TS/ArkTS | none | missing |

## 5. Generic Function

| Design ID | 测试点 | 类型 | P | 来源 | 当前证据 | 状态 |
|---|---|---|---|---|---|---|
| GTP-GF-001 | identity 泛型函数保持参数和值类型 | pass | P0 | ArkTS/TS | GEN-PASS-004 | covered |
| GTP-GF-002 | 显式类型实参调用 | pass | P0 | ArkTS/TS | GEN-PASS-005 | covered |
| GTP-GF-003 | 从单个值参数推断类型实参 | pass | P0 | ArkTS/TS | GEN-PASS-006 | covered |
| GTP-GF-004 | 多类型参数泛型函数 | pass | P0 | ArkTS/TS | GEN-PASS-007 | covered |
| GTP-GF-005 | 泛型函数保存为泛型函数类型 | boundary | P1 | ArkTS/TS | none | missing |
| GTP-GF-006 | 高阶泛型函数接收并调用 callback | pass | P0 | ArkTS/TS/ECMA | none | missing |
| GTP-GF-007 | rest 参数中使用类型参数 | pass | P1 | ArkTS/TS | none | missing |
| GTP-GF-008 | optional/default value 参数与泛型结合 | pass | P1 | ArkTS/TS | none | missing |
| GTP-GF-009 | async 泛型函数返回 `Promise<T>` | integration | P0 | ArkTS/TS/ECMA | none | missing |
| GTP-GF-010 | 仅返回位置出现 T 时禁止无依据推断 | fail_compile | P0 | ArkTS rule | none | missing |
| GTP-GF-011 | 泛型箭头函数支持或禁止 | boundary/fail_compile | P0 | ArkTS compatibility | none | missing |
| GTP-GF-012 | 泛型函数不同实例化的运行时代码身份 | bytecode/runtime | P1 | ABC/ECMA | GEN-BOUND-011 | partial |

## 6. Generic Class

| Design ID | 测试点 | 类型 | P | 来源 | 当前证据 | 状态 |
|---|---|---|---|---|---|---|
| GTP-GC-001 | 泛型类基础声明 | pass | P0 | ArkTS/TS | GEN-PASS-002 | covered |
| GTP-GC-002 | 显式类型实参实例化 | pass | P0 | ArkTS/TS | GEN-PASS-002 | covered |
| GTP-GC-003 | 从构造器参数推断类类型实参 | pass/boundary | P0 | ArkTS/TS | GEN-PASS-003 | partial |
| GTP-GC-004 | 实例字段、getter/setter、方法使用 T | pass | P0 | ArkTS/TS | GEN-PASS-003 | covered |
| GTP-GC-005 | 多类型参数泛型类 | pass | P1 | ArkTS/TS | GEN-PASS-013 | covered |
| GTP-GC-006 | 泛型类中的独立泛型方法 | pass | P1 | ArkTS/TS | GEN-PASS-011 | covered |
| GTP-GC-007 | static 成员不得引用类类型参数 | fail_compile | P0 | ArkTS/TS | GEN-BOUND-002 | partial |
| GTP-GC-008 | static 泛型方法声明自己的类型参数 | pass | P1 | ArkTS/TS | none | missing |
| GTP-GC-009 | 构造器实参与显式类型实参不兼容 | fail_compile | P0 | ArkTS/TS | none | missing |
| GTP-GC-010 | `Box<number>` 与 `Box<string>` 共享同一运行时构造器 | runtime | P0 | ABC/ECMA | GEN-BOUND-011 | partial |
| GTP-GC-011 | 泛型工厂接收构造器并返回 T | boundary | P1 | TS/ArkTS | none | missing |
| GTP-GC-012 | 泛型类作为另一泛型类的类型实参 | pass | P1 | ArkTS/TS | GEN-PASS-013 | covered |

## 7. Generic Interface

| Design ID | 测试点 | 类型 | P | 来源 | 当前证据 | 状态 |
|---|---|---|---|---|---|---|
| GTP-GI-001 | 泛型接口基础声明 | pass | P0 | ArkTS/TS | GEN-PASS-008 | covered |
| GTP-GI-002 | 泛型接口属性使用 T | pass | P0 | ArkTS/TS | GEN-PASS-010 | covered |
| GTP-GI-003 | 泛型接口方法参数和返回值使用 T/R | pass | P0 | ArkTS/TS | GEN-PASS-009 | covered |
| GTP-GI-004 | class implements 泛型接口 | pass | P0 | ArkTS/TS | GEN-PASS-008 | partial |
| GTP-GI-005 | 非泛型接口声明泛型方法 | pass | P1 | ArkTS/TS | none | missing |
| GTP-GI-006 | 泛型 callback interface 约束调用 | integration | P1 | ArkTS official | none | missing |
| GTP-GI-007 | 泛型接口 extends 并传递 T | pass/boundary | P0 | ArkTS/TS | GEN-BOUND-007 | partial |
| GTP-GI-008 | 泛型接口默认类型参数实际生效 | boundary | P1 | ArkTS/TS | none | missing |
| GTP-GI-009 | implements 的具体成员类型不匹配 | fail_compile | P0 | ArkTS/TS | none | missing |

## 8. Type Inference

| Design ID | 测试点 | 类型 | P | 来源 | 当前证据 | 状态 |
|---|---|---|---|---|---|---|
| GTP-IN-001 | 单参数推断 | pass | P0 | ArkTS/TS | GEN-PASS-006 | covered |
| GTP-IN-002 | 多类型参数独立推断 | pass | P0 | ArkTS/TS | GEN-PASS-007 | partial |
| GTP-IN-003 | 泛型类构造器推断 | pass/boundary | P0 | ArkTS/TS | GEN-PASS-003 | partial |
| GTP-IN-004 | 泛型方法推断 | pass | P1 | ArkTS/TS | GEN-PASS-011 | partial |
| GTP-IN-005 | 字面量推断与 widening | boundary | P1 | TS/ArkTS | none | missing |
| GTP-IN-006 | 从数组元素推断 T | pass | P1 | ArkTS/TS | none | missing |
| GTP-IN-007 | 从嵌套泛型参数推断 T | pass | P1 | ArkTS/TS | none | missing |
| GTP-IN-008 | callback 参数和返回值的上下文推断 | boundary | P1 | TS/ArkTS | none | missing |
| GTP-IN-009 | 约束参与推断并保留具体子类型 | pass | P1 | ArkTS/TS | GEN-BOUND-005 | partial |
| GTP-IN-010 | 无输入候选时不能只按目标返回类型推断 | fail_compile | P0 | ArkTS rule | none | missing |
| GTP-IN-011 | 多候选冲突、union 或共同超类型推断 | boundary | P0 | ArkTS/TS | none | missing |
| GTP-IN-012 | 显式类型实参与推断结果优先级 | pass/fail_compile | P1 | ArkTS/TS | GEN-BOUND-006 | partial |

## 9. Generic Constraints

| Design ID | 测试点 | 类型 | P | 来源 | 当前证据 | 状态 |
|---|---|---|---|---|---|---|
| GTP-CO-001 | `T extends Constraint` 声明 | pass | P0 | ArkTS/TS | GEN-BOUND-005 | covered |
| GTP-CO-002 | 满足结构/接口约束时调用成功 | pass | P0 | ArkTS/TS | GEN-BOUND-005 | covered |
| GTP-CO-003 | 不满足约束的显式或推断实参 | fail_compile | P0 | ArkTS/TS | none | missing |
| GTP-CO-004 | 约束到具名 interface 并保留子类型 | pass | P0 | ArkTS official | GEN-BOUND-003 | partial |
| GTP-CO-005 | 约束到具体 class 与其 subclass | pass/fail_compile | P1 | ArkTS/TS | none | missing |
| GTP-CO-006 | 泛型体内访问约束声明的成员 | pass | P0 | ArkTS/TS | GEN-BOUND-005 | covered |
| GTP-CO-007 | 后一类型参数受前一类型参数约束 | boundary | P1 | TS/ArkTS | none | missing |
| GTP-CO-008 | 具名 interface 组合多个约束 | pass | P1 | ArkTS official | none | missing |
| GTP-CO-009 | 递归/F-bounded 泛型约束 | boundary | P2 | TS/ArkTS | none | missing |
| GTP-CO-010 | 构造器类型约束和泛型工厂 | boundary | P1 | TS/ArkTS | none | missing |
| GTP-CO-011 | 默认类型参数满足 constraint | pass | P1 | ArkTS/TS | none | missing |
| GTP-CO-012 | 泛型约束不产生运行时自动结构检查 | runtime | P0 | ABC/ECMA | GEN-BOUND-003 | partial |

## 10. Default Type Parameters

| Design ID | 测试点 | 类型 | P | 来源 | 当前证据 | 状态 |
|---|---|---|---|---|---|---|
| GTP-DE-001 | 泛型函数默认类型参数语法 | boundary | P0 | ArkTS/TS | GEN-BOUND-006 | covered |
| GTP-DE-002 | 泛型接口默认类型参数 | boundary | P0 | ArkTS official | none | missing |
| GTP-DE-003 | 泛型类默认类型参数 | boundary | P1 | TS/ArkTS | none | missing |
| GTP-DE-004 | 显式类型实参覆盖默认类型 | pass/boundary | P1 | ArkTS/TS | GEN-BOUND-006 | partial |
| GTP-DE-005 | 多参数只省略尾部 optional 类型参数 | boundary | P1 | TS/ArkTS | none | missing |
| GTP-DE-006 | required 类型参数不得位于 default 参数之后 | fail_compile | P0 | TS/ArkTS | none | missing |
| GTP-DE-007 | 默认类型满足 constraint | pass | P1 | TS/ArkTS | none | missing |
| GTP-DE-008 | 默认类型违反 constraint | fail_compile | P0 | TS/ArkTS | none | missing |
| GTP-DE-009 | 有推断候选时使用推断、无候选时使用默认 | pass | P0 | TS/ArkTS | none | missing |

## 11. Generic Inheritance

| Design ID | 测试点 | 类型 | P | 来源 | 当前证据 | 状态 |
|---|---|---|---|---|---|---|
| GTP-IH-001 | 泛型接口 extends 并原样传递 T | pass/boundary | P0 | ArkTS/TS | GEN-BOUND-007 | partial |
| GTP-IH-002 | 泛型接口 extends 并将父参数具体化 | pass | P1 | ArkTS/TS | none | missing |
| GTP-IH-003 | 泛型 class extends 泛型 base 并传递 T | pass | P0 | ArkTS/TS | none | missing |
| GTP-IH-004 | 非泛型 subclass 继承具体化 generic base | pass | P0 | ArkTS/TS | none | missing |
| GTP-IH-005 | subclass 引入新类型参数并重排父参数 | boundary | P1 | TS/ArkTS | none | missing |
| GTP-IH-006 | 泛型接口多继承及冲突诊断 | pass/fail_compile | P1 | ArkTS/TS | none | missing |
| GTP-IH-007 | 继承的泛型方法保持具体类型 | runtime | P1 | ECMA/ArkTS | none | missing |
| GTP-IH-008 | 父子泛型实例赋值兼容边界 | boundary | P1 | TS/ArkTS | none | missing |
| GTP-IH-009 | 泛型继承跨模块导出导入 | integration | P1 | ArkTS/Interop | none | missing |

## 12. Generic Override

| Design ID | 测试点 | 类型 | P | 来源 | 当前证据 | 状态 |
|---|---|---|---|---|---|---|
| GTP-OV-001 | 子类以相同泛型签名 override | pass/boundary | P0 | ArkTS/TS | GEN-BOUND-009 | covered |
| GTP-OV-002 | override 中重命名等价类型参数 | pass | P1 | TS/ArkTS | none | missing |
| GTP-OV-003 | override 返回类型不兼容 | fail_compile | P0 | ArkTS/TS | none | missing |
| GTP-OV-004 | override 缩窄泛型 constraint | fail_compile/boundary | P0 | ArkTS/TS | none | missing |
| GTP-OV-005 | 以具体类型方法 override 泛型方法 | boundary | P1 | TS/ArkTS | none | missing |
| GTP-OV-006 | 泛型/非泛型方法签名不匹配 | fail_compile | P1 | ArkTS/TS | none | missing |
| GTP-OV-007 | base reference 调用 derived override 的动态派发 | runtime | P0 | ECMA/ABC | GEN-BOUND-009 | partial |

## 13. Generic Overload

| Design ID | 测试点 | 类型 | P | 来源 | 当前证据 | 状态 |
|---|---|---|---|---|---|---|
| GTP-OL-001 | 多个泛型 overload signature + 单实现 | boundary | P0 | TS/ArkTS | none | missing |
| GTP-OL-002 | 泛型与非泛型 overload 共存 | boundary | P1 | TS/ArkTS | none | missing |
| GTP-OL-003 | overload 调用时显式类型实参 | boundary | P1 | TS/ArkTS | none | missing |
| GTP-OL-004 | overload 调用时类型推断选择签名 | boundary | P0 | TS/ArkTS | none | missing |
| GTP-OL-005 | overload signature 无实现 | fail_compile | P0 | TS/ArkTS | none | missing |
| GTP-OL-006 | overload signature 与实现不兼容 | fail_compile | P0 | TS/ArkTS | none | missing |
| GTP-OL-007 | 多个 implementation body 非法 | fail_compile | P1 | TS/ArkTS | none | missing |
| GTP-OL-008 | 运行时只存在实现函数、无 overload 分派实体 | runtime/bytecode | P1 | ABC/ECMA | none | missing |

## 14. Variance (`in` / `out` / `in out`)

| Design ID | 测试点 | 类型 | P | 来源 | 当前证据 | 状态 |
|---|---|---|---|---|---|---|
| GTP-VA-001 | `out T` 协变语法接受 | boundary | P0 | ArkTS official/TS | none | missing |
| GTP-VA-002 | `in T` 逆变语法接受 | boundary | P0 | ArkTS official/TS | none | missing |
| GTP-VA-003 | `in out T` 不变语法接受 | boundary | P0 | ArkTS official | none | missing |
| GTP-VA-004 | Producer<Sub> 到 Producer<Base> 协变赋值 | pass/boundary | P0 | ArkTS/TS | none | missing |
| GTP-VA-005 | 协变反方向赋值被拒绝 | fail_compile | P0 | ArkTS/TS | none | missing |
| GTP-VA-006 | Consumer<Base> 到 Consumer<Sub> 逆变赋值 | pass/boundary | P0 | ArkTS/TS | none | missing |
| GTP-VA-007 | 逆变反方向赋值被拒绝 | fail_compile | P0 | ArkTS/TS | none | missing |
| GTP-VA-008 | in out 两个方向均不兼容 | fail_compile | P0 | ArkTS official | none | missing |
| GTP-VA-009 | out 参数用于输入位置的诊断 | fail_compile | P1 | ArkTS/TS | none | missing |
| GTP-VA-010 | in 参数用于输出位置的诊断 | fail_compile | P1 | ArkTS/TS | none | missing |
| GTP-VA-011 | 自动推断 variance 与显式标注一致性 | boundary | P1 | ArkTS/TS | none | missing |
| GTP-VA-012 | variance 标注运行时擦除、对象行为不变 | runtime/bytecode | P1 | ABC/ECMA | none | missing |

## 15. Utility And Advanced Generic Types

| Design ID | 测试点 | 类型 | P | 来源 | 当前证据 | 状态 |
|---|---|---|---|---|---|---|
| GTP-UT-001 | `T[]` / `Array<T>` 基础泛型容器 | pass | P0 | ArkTS | GEN-PASS-001 | covered |
| GTP-UT-002 | `Promise<T>` resolve/await 类型和值 | integration | P0 | ArkTS/ECMA | none | missing |
| GTP-UT-003 | `Map<K,V>` 泛型键值与运行时对象 | pass | P1 | ArkTS/ECMA | none | missing |
| GTP-UT-004 | `Record<K,V>` 实际 utility type 支持范围 | boundary | P0 | ArkTS official | GEN-BOUND-010 | partial |
| GTP-UT-005 | `Partial<T>` 仅允许 class/interface 参数及赋值规则 | boundary | P0 | ArkTS official | none | missing |
| GTP-UT-006 | `Required<T>` 可选成员转必选 | boundary | P1 | ArkTS official | none | missing |
| GTP-UT-007 | `Readonly<T>` 只读检查与运行时非冻结 | boundary/runtime | P1 | ArkTS official/ECMA | none | missing |
| GTP-UT-008 | `Pick<T,K>` / `Omit<T,K>` 不支持诊断 | fail_compile | P1 | ArkTS official | none | missing |
| GTP-UT-009 | conditional/mapped/infer 不支持诊断 | fail_compile | P0 | ArkTS official | none | missing |
| GTP-UT-010 | keyof、类型查询、索引访问类型兼容边界 | fail_compile/boundary | P0 | ArkTS official | none | missing |
| GTP-UT-011 | Exclude/Extract/NonNullable/Parameters/ReturnType 等支持矩阵 | boundary | P1 | ArkTS official/TS | none | missing |
| GTP-UT-012 | `T \| null \| undefined` 的泛型返回值 | boundary | P0 | ArkTS/null_safety | GEN-BOUND-014 | partial |

## 16. Generic Runtime And ABC

| Design ID | 测试点 | 类型 | P | 来源 | 当前证据 | 状态 |
|---|---|---|---|---|---|---|
| GTP-RT-001 | 类型实参不改变对象字段实际值 | runtime | P0 | ABC/ECMA | GEN-BOUND-011 | partial |
| GTP-RT-002 | 不同类型实参共享 generic class 构造器身份 | runtime | P0 | ABC/ECMA | none | missing |
| GTP-RT-003 | generic class 实例可对 concrete class 做 instanceof | runtime | P0 | ECMA | GEN-BOUND-012 | partial |
| GTP-RT-004 | 类型参数 T 不可作为 instanceof RHS | fail_compile | P0 | ArkTS/TS | none | missing |
| GTP-RT-005 | `typeof value` 在泛型函数内按实际值执行 | runtime | P0 | ECMA | GEN-BOUND-013 | covered |
| GTP-RT-006 | `typeof T` 类型参数无运行时值 | fail_compile | P0 | ArkTS/TS | none | missing |
| GTP-RT-007 | 泛型 interface 不产生运行时构造器或原型 | runtime/boundary | P0 | ABC/ECMA | none | missing |
| GTP-RT-008 | 泛型函数类型实参不改变函数可观察行为 | runtime | P1 | ABC/ECMA | GEN-BOUND-011 | partial |
| GTP-RT-009 | ABC 中无按类型实参复制的可执行 specialization | bytecode candidate | P1 | ABC | none | missing |
| GTP-RT-010 | 异常、对象身份和副作用顺序与具体类型实参无关 | runtime | P1 | ECMA/ABC | none | missing |

## 17. ETS / TS / JS Interop

| Design ID | 测试点 | 类型 | P | 来源 | 当前证据 | 状态 |
|---|---|---|---|---|---|---|
| GTP-IO-001 | ETS 导出泛型函数并由另一 ETS 模块导入 | integration | P0 | ArkTS/Module | GEN-BOUND-004 | partial |
| GTP-IO-002 | ETS 导出泛型类并跨模块保持实例行为 | integration | P0 | ArkTS/Module | GEN-BOUND-004 | partial |
| GTP-IO-003 | ETS 导出泛型接口/type-only contract | integration | P1 | ArkTS/Module | none | missing |
| GTP-IO-004 | ETS 调用 TS 导出的泛型函数 | integration | P0 | Interop | none | missing |
| GTP-IO-005 | TS 调用 ETS 导出的泛型函数/类 | integration | P0 | Interop | none | missing |
| GTP-IO-006 | ETS 泛型函数接收 JS 动态值 | integration/boundary | P0 | Interop | none | missing |
| GTP-IO-007 | ETS 泛型返回值传给 JS 后保持实际值和身份 | integration | P1 | Interop/ECMA | none | missing |
| GTP-IO-008 | 跨语言 `Promise<T>` resolve/reject | integration | P0 | Interop/ECMA | none | missing |
| GTP-IO-009 | 跨语言 `Array<T>` / `Map<K,V>` 读写 | integration | P1 | Interop/ECMA | none | missing |
| GTP-IO-010 | generic class 实例跨语言后 constructor/prototype 身份 | integration | P1 | Interop/ABC | none | missing |
| GTP-IO-011 | `.d.ts`/声明文件泛型约束与实际 JS 导出一致性 | fail_compile/integration | P0 | Interop/TS | none | missing |
| GTP-IO-012 | 跨语言异常传播、模块链接和 ABC 加载 | integration/fail_runtime | P0 | Interop/ABC/ECMA | none | missing |

## 18. Completion Rule

一个测试点只有同时满足以下条件才可从 `missing/partial` 转为 validated：

1. 源码只验证该测试点的核心行为；
2. compile negative 保留真实非法代码，不能仅写在注释中；
3. runtime 用例有真实断言；
4. interop 用例包含实际 helper module 和真实 import；
5. runtime erasure 不能只用 `typeof object` 代替 ABC/identity 检查；
6. 已在官方 ArkTS 工具链上记录命令、版本、退出码和关键诊断；
7. Case ID、Coverage ID 和 Registry 的更新在后续独立迁移任务中完成。
