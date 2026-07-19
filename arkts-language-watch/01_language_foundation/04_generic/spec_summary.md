# Generic Spec Summary

## 1. Scope And Sources

本摘要以仓库本地官方资料 `文档/arkts-language-guide-generics.md` 为 ArkTS 能力入口，以 TypeScript 泛型语义作为兼容参照，以 ECMAScript 2022 描述擦除后的运行行为，并结合 ETS/TS/JS 编译为 ABC、由 Ark Runtime 执行的架构确定验证层次。

| 层次 | 负责内容 |
|---|---|
| ArkTS 官方泛型规则 | 支持语法、限制、variance、Utility Types 和编译诊断 |
| TypeScript | 类型参数、推断、约束、默认参数、继承、重写及结构兼容参照 |
| ECMAScript 2022 | 擦除后的函数、类、对象、模块、异常和求值行为 |
| ArkCompiler / ABC | 前端降级结果、类型相关元数据和跨实例化代码形态 |
| Ark Runtime | ABC 执行后的值、identity、constructor、异常及互操作行为 |

ECMAScript 本身不定义泛型类型参数，因此不能直接从 ECMA 推导 ArkTS 泛型的编译期合法性。

## 2. Core Model

泛型允许声明以类型参数表示的函数、类、接口和方法。类型参数用于编译期检查，不应被当作普通运行时值。测试必须把以下层次分开：

1. parse/check：泛型语法、约束和类型兼容；
2. compile/ABC：类型参数如何擦除或记录为非运行时语义元数据；
3. runtime：擦除后普通函数、类和对象的可观察行为；
4. interop：ETS、TS、JS 生产者和消费者之间的声明与运行值行为。

“泛型擦除”不等于“不需要 ABC 检查”。运行时不应依赖具体 `T`，但编译器仍可能在 ABC 中保留调试或类型相关元数据。

## 3. Generic Functions And Methods

```ts
function identity<T>(value: T): T {
  return value
}

class Mapper {
  map<T, R>(value: T, convert: (input: T) => R): R {
    return convert(value)
  }
}
```

需要确认显式类型实参、实参推断、多类型参数、callback、rest、optional/default value 参数、async/`Promise<T>`、静态泛型方法、对象方法、函数类型赋值和不同实例化的运行时 identity。ArkTS 对泛型箭头函数的支持应由实际工具链确认。

## 4. Generic Classes And Interfaces

```ts
class Box<T> {
  value: T
  constructor(value: T) {
    this.value = value
  }
}

interface Store<K, V> {
  get(key: K): V
}
```

类的实例成员可使用类类型参数。静态成员不能直接引用类级类型参数，但静态方法可以声明自己的类型参数。接口仅提供编译期契约，不应产生可实例化的运行时接口对象。

重点覆盖构造器兼容、`implements`、interface `extends`、泛型类继承、父类具体化、多层继承、override 契约及不同类型实参实例的普通运行时构造器语义。

## 5. Inference

类型实参可以从值参数、数组元素、callback 上下文和约束关系中推断。测试不能只验证返回值，还应验证：

- 单参数和多参数独立推断；
- 字面量 widening；
- 约束参与推断后是否保留具体子类型；
- 冲突候选如何处理；
- 显式类型实参与推断结果的优先关系；
- 仅在返回位置出现的类型参数是否缺少有效推断来源。

推断是编译期语义，不应在运行时重新选择泛型实例。

## 6. Constraints

```ts
interface HasId {
  id: number
}

function readId<T extends HasId>(value: T): number {
  return value.id
}
```

`T extends U` 用于限制可接受的类型实参。约束满足或违反应由编译阶段验证；它不会自动生成运行时类型检查。

覆盖 interface、class、union/composite、dependent constraint、`K extends keyof T` 支持边界、约束下成员访问、单诊断负向、约束与默认类型组合，以及运行时无自动约束检查的对照。

## 7. Default Type Parameters

```ts
interface Result<T = string> {
  value: T
}
```

默认类型参数只在无法从显式类型实参或有效推断确定参数时使用。调用中传入字符串并推断出 `T = string`，不能证明默认参数已经生效。

需要分别验证函数、类和接口默认参数；省略实参时默认值真实生效；显式实参覆盖；推断优先级；多默认参数；必选参数顺序限制；默认类型满足约束。

## 8. Inheritance, Override And Overload

- 父类类型参数原样传递或具体化；
- 子类增加自己的类型参数；
- 泛型接口 `extends` 和 class `implements`；
- 泛型方法重写时类型参数名可不同，但契约必须兼容；
- 参数、返回值或约束不兼容应形成编译负向；
- overload signatures 只参与编译期选择，运行时调用唯一实现函数。

不要把 overload 测试写成运行时存在多个泛型实现体。

## 9. Variance

官方资料将 `out`、`in` 和 `in out` 列为 ArkTS variance 能力。测试必须通过实际编译器确认支持版本和语法位置，而不是仅依据 TypeScript 的默认结构兼容行为。

至少覆盖 covariance producer、contravariance consumer、invariance、正反向赋值、annotation 与成员位置冲突、未显式标注时的推断，以及运行时擦除。

## 10. Utility And Advanced Types

本地官方资料列出的支持范围应逐项验证。当前设计基线将 `Partial`、`Required`、`Readonly`、`Record` 作为支持候选，将 `Pick`、`Omit` 及更多高级 Utility Types 作为限制或负向候选。

必须区分：

- 实际 `Record<K, V>` 与手写索引签名；
- `Readonly<T>` 的编译期写限制与运行时对象是否冻结；
- `Partial<T>`、`Required<T>` 的成员可选性；
- `keyof`、type query、indexed access、conditional、mapped、`infer` 的具体支持状态；
- 不支持能力应验证稳定诊断，不用注释掉的非法代码冒充覆盖。

## 11. Runtime And ABC Semantics

运行时验证关注擦除后的普通 ECMAScript 行为：

- 泛型函数不同类型实参调用的函数 identity；
- 泛型类不同实例化的 constructor identity 和 `instanceof`；
- 接口和类型参数不存在可直接观察的运行时值；
- `typeof T`、`instanceof T` 中的 `T` 是非法值引用，不是运行时泛型检查；
- 类型参数不改变属性、方法、异常和模块加载语义；
- ABC 检查不预设 expected，应先记录编译器版本、指令和元数据观察点。

## 12. ETS/TS/JS Interop

| Producer | Consumer | 重点 |
|---|---|---|
| ETS | ETS | 泛型声明导入、推断和运行值 |
| ETS | TS | 声明可见性与类型实参兼容 |
| TS | ETS | TS 泛型声明被 ArkTS 消费 |
| JS | ETS | 无泛型元数据输入时的边界 |
| ETS | JS | 擦除后的普通导出值和异常 |

跨模块测试必须记录 helper 路径、编译阶段、链接结果和运行断言。单文件 `export` 只能证明导出语法，不能证明 import/interop 已覆盖。

## 13. Compile Negative Conditions

优先建立以下单错误点：

- 重复类型参数名和类型参数超出作用域；
- 约束违反；
- static 成员引用类类型参数；
- 构造器实参与类型实参不兼容；
- implements 或 override 契约不兼容；
- 默认类型参数顺序或约束非法；
- overload 缺少实现或存在多个实现；
- 类型参数被当作 `typeof` / `instanceof` 的值；
- 当前 ArkTS 明确不支持的 Utility/高级类型语法。

## 14. Validation Status

当前 28 个 `.ets` 仅代表候选资产，尚未形成完整工具链验证基线。状态必须来自真实编译和运行记录：

- pass：编译通过且断言执行通过；
- fail_compile：编译失败且主要诊断符合设计；
- boundary：支持状态或规范归属尚未确认；
- regression：必须关联真实 issue 或明确历史缺陷；
- ABC/interop：必须记录编译器、运行时和模块组合。

详细测试点、现有证据和缺口见：

- `generic_test_point_master.md`
- `generic_test_design_audit.md`
- `generic_gap_analysis.md`
- `generic_test_assignment_plan.md`

