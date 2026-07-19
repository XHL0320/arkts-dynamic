# Generic Gap Analysis

## 1. Summary

| Gap Type | Count | Meaning |
|---|---:|---|
| Master test points | 144 | 规范驱动全集 |
| Covered by source shape | 26 | 代码真实包含核心语义，仍未验证 |
| Partial covered | 23 | 仅合法控制路径、混入其他语义或断言不足 |
| Missing | 95 | 当前没有对应实际代码 |
| P0 missing | 44 | 应优先补齐 |
| P1 missing | 50 | P0 后补齐 |
| P2 missing | 1 | 递归/F-bounded constraint |
| Wrong Coverage mapping | 9 | 元数据结论与代码不一致或不充分 |
| Duplicate clusters | 4 | 重复基础 happy path |
| Existing cases needing compile validation | 28 | 当前 verified 数为 0 |
| Existing cases needing runtime decision | 28 | 所有现有文件都有可执行 body |

## 2. Gaps By Capability Family

| Family | Total | Covered | Partial | Missing | P0 Missing | P1 Missing |
|---|---:|---:|---:|---:|---:|---:|
| Type parameter foundation | 8 | 5 | 0 | 3 | 1 | 2 |
| Generic function | 12 | 4 | 1 | 7 | 4 | 3 |
| Generic class | 12 | 6 | 3 | 3 | 1 | 2 |
| Generic interface | 9 | 3 | 2 | 4 | 1 | 3 |
| Type inference | 12 | 1 | 5 | 6 | 2 | 4 |
| Constraint | 12 | 3 | 2 | 7 | 1 | 5 |
| Default type parameter | 9 | 1 | 1 | 7 | 4 | 3 |
| Inheritance | 9 | 0 | 1 | 8 | 2 | 6 |
| Override | 7 | 1 | 1 | 5 | 2 | 3 |
| Overload | 8 | 0 | 0 | 8 | 4 | 4 |
| Variance | 12 | 0 | 0 | 12 | 8 | 4 |
| Utility/advanced types | 12 | 1 | 2 | 9 | 4 | 5 |
| Runtime/ABC | 10 | 1 | 3 | 6 | 4 | 2 |
| ETS/TS/JS interop | 12 | 0 | 2 | 10 | 6 | 4 |

## 3. P0 Missing Backlog

| Family | Design IDs | Required Work |
|---|---|---|
| type parameter | GTP-TP-008 | 真实重复类型参数 fail_compile |
| generic function | GTP-GF-006, GF-009, GF-010, GF-011 | callback、async、return-only inference、generic lambda 兼容 |
| generic class | GTP-GC-009 | 构造实参不兼容 fail_compile |
| generic interface | GTP-GI-009 | implements 具体成员类型不匹配 |
| inference | GTP-IN-010, IN-011 | 无候选返回推断、冲突候选/union 推断 |
| constraint | GTP-CO-003 | 约束违反真实 fail_compile |
| default | GTP-DE-002, DE-006, DE-008, DE-009 | interface default、参数顺序、constraint 失败、推断/默认优先级 |
| inheritance | GTP-IH-003, IH-004 | generic base 参数传递和具体化 |
| override | GTP-OV-003, OV-004 | 返回不兼容和 constraint 缩窄 |
| overload | GTP-OL-001, OL-004, OL-005, OL-006 | 基础 overload、推断、缺实现、实现不兼容 |
| variance | GTP-VA-001..008 | in/out/in out 语法、正向赋值和反向负向 |
| utility | GTP-UT-002, UT-005, UT-009, UT-010 | Promise、Partial、advanced type 负向、keyof/index/type-query |
| runtime | GTP-RT-002, RT-004, RT-006, RT-007 | 构造器身份、instanceof T、typeof T、interface erasure |
| interop | GTP-IO-004, IO-005, IO-006, IO-008, IO-011, IO-012 | ETS/TS 双向、JS 动态值、Promise、声明契约、异常/link |

## 4. P1 Missing Backlog

| Family | Design IDs | Required Work |
|---|---|---|
| type parameter | GTP-TP-006, TP-007 | 作用域与遮蔽 |
| generic function | GTP-GF-005, GF-007, GF-008 | 泛型函数类型、rest、optional/default value 参数 |
| generic class | GTP-GC-008, GC-011 | static generic method、generic factory |
| generic interface | GTP-GI-005, GI-006, GI-008 | 泛型方法、callback interface、default type |
| inference | GTP-IN-005..008 | literal、array、nested、callback contextual inference |
| constraint | GTP-CO-005, CO-007, CO-008, CO-010, CO-011 | class/dependent/composite/constructor/default constraints |
| default | GTP-DE-003, DE-005, DE-007 | class default、尾部省略、合法 constrained default |
| inheritance | GTP-IH-002, IH-005..009 | interface concrete、参数重排、多继承、runtime、assignability、module |
| override | GTP-OV-002, OV-005, OV-006 | 参数重命名、具体化 override、泛型/非泛型不匹配 |
| overload | GTP-OL-002, OL-003, OL-007, OL-008 | 混合 overload、显式实参、多实现负向、runtime erasure |
| variance | GTP-VA-009..012 | 位置违规、自动推断、runtime erasure |
| utility | GTP-UT-003, UT-006..008, UT-011 | Map、Required、Readonly、Pick/Omit、其他 utility |
| runtime | GTP-RT-009, RT-010 | ABC specialization 和运行时副作用/异常一致性 |
| interop | GTP-IO-003, IO-007, IO-009, IO-010 | type-only interface、JS 返回、容器、class identity |

## 5. Partial Coverage Requiring Redesign

| Design ID | Current Case | Partial Reason |
|---|---|---|
| GTP-GF-012 | GEN-BOUND-011 | 只检查 generic class object，不检查泛型函数身份/ABC |
| GTP-GC-003 | GEN-PASS-003 | 目标类型可能参与推断，缺少无上下文 constructor inference |
| GTP-GC-007 | GEN-BOUND-002 | 非法 static T 只在注释中 |
| GTP-GC-010 | GEN-BOUND-011 | 没有比较不同实例化的 constructor identity |
| GTP-GI-004 | GEN-PASS-008 | 混入 Record/index access，失败无法归因 |
| GTP-GI-007 | GEN-BOUND-007 | 源码有 extends，但错误映射到 erasure |
| GTP-IN-002 | GEN-PASS-007 | 仅一组简单候选，未检查独立推断边界 |
| GTP-IN-003 | GEN-PASS-003 | 缺无目标类型的构造器推断对照 |
| GTP-IN-004 | GEN-PASS-011 | 当前全部显式传入类型实参 |
| GTP-IN-009 | GEN-BOUND-005 | 约束正向存在，但未证明保留具体子类型 |
| GTP-IN-012 | GEN-BOUND-006 | 没有形成显式实参、推断和 default 的三方对照 |
| GTP-CO-004 | GEN-BOUND-003 | 只有合法 class，实现约束失败未执行 |
| GTP-CO-012 | GEN-BOUND-003 | 没有构造绕过 checker 的运行时对照 |
| GTP-DE-004 | GEN-BOUND-006 | 显式 number 存在，但 default 从未实际生效 |
| GTP-IH-001 | GEN-BOUND-007 | 仅单层 interface extends，未验证类型错误 |
| GTP-OV-007 | GEN-BOUND-009 | base/derived body 相同，无法证明动态派发 |
| GTP-UT-004 | GEN-BOUND-010 | 自定义 index signature，不是 `Record<K,V>` |
| GTP-UT-012 | GEN-BOUND-014 | 覆盖 nullish union，但未覆盖 optional property |
| GTP-RT-001 | GEN-BOUND-011 | `typeof object` 不能单独证明 type erasure |
| GTP-RT-003 | GEN-BOUND-012 | 只测 concrete class instanceof |
| GTP-RT-008 | GEN-BOUND-011 | 未比较不同函数类型实参调用路径 |
| GTP-IO-001 | GEN-BOUND-004 | 有 export，无 importer |
| GTP-IO-002 | GEN-BOUND-004 | 有 export，无跨模块实例化和 identity 验证 |

## 6. Wrong Mapping

| Coverage ID | Case ID | Actual Code | Required Correction Later |
|---|---|---|---|
| GEN-NEST-001 | GEN-PASS-012 | 二维 number 数组 | 另建真正 `T[][]` 泛型 API |
| GEN-IF-005 | GEN-BOUND-007 | generic interface extends | IF erasure 另建；当前应映射 inheritance |
| GEN-METHOD-005 | GEN-BOUND-009 | generic override happy path | method erasure 另建；当前映射 override |
| GEN-CONST-005 | GEN-BOUND-003 | constraint 正向调用 | 不应声称“运行时 constraint 检查” |
| GEN-DEF-002 | GEN-BOUND-006 | T 从 value 推断为 string | default 未生效 |
| GEN-ARR-002 | GEN-BOUND-010 | custom index signature | 另测真实 `Record<K,V>` |
| GEN-RT-002 | GEN-BOUND-013 | `typeof value` | `typeof T` 非法代码必须实际存在于负向文件 |
| GEN-RT-003 | GEN-BOUND-012 | `instanceof GenericList` | `instanceof T` 非法代码必须实际存在于负向文件 |
| GEN-UNION-004 | GEN-BOUND-014 | null/undefined union | optional property 另建用例 |

## 7. Duplicate Clusters

| Cluster | Cases | Recommendation |
|---|---|---|
| function basic | GEN-PASS-004, GEN-REGR-001 | 保留 PASS；Regression 有 issue 后再决定 |
| class basic/constructor | GEN-PASS-002, GEN-BOUND-001, GEN-REGR-001 | 保留一个基础 pass，另建 mismatch negative |
| interface basic | GEN-PASS-008, GEN-REGR-001 | 回归用例去掉重复或绑定真实 issue |
| array nesting | GEN-PASS-001, GEN-PASS-012 | 后者改为真正泛型嵌套，不保留纯二维数组重复 |

## 8. Validation Gap

| Validation Item | Current | Required |
|---|---:|---:|
| official compile verified | 0 | 28 existing + new cases |
| runtime verified | 0 | 所有可编译正向/边界 |
| fail_compile verified | 0 | P0 负向优先 |
| fail_runtime verified | 0 | interop/runtime exceptions |
| ABC inspected | 0 | erasure/overload/variance/interop |
| multi-file interop verified | 0 | ETS/TS/JS matrix |

## 9. Gap Closure Rule

不得通过以下方式关闭缺口：

- 用注释中的非法代码替代真实 fail_compile；
- 用 `typeof object` 单点断言替代泛型擦除和 ABC 检查；
- 用本文件内的 export + local call 替代跨模块 import；
- 用自定义 index signature 替代 `Record<K,V>`；
- 用“文件 generated”替代编译/运行验证；
- 将 TypeScript 结论直接标为 ArkTS Dynamic 已支持。
