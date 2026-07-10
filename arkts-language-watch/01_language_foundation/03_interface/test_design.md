# Interface Test Design

## 1. Positive Syntax Cases

正向用例验证 interface 语法在合法位置的使用。

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| 空接口声明 | 编译通过 | pass | `03_interface/xts/pass/` |
| interface 带必选属性 | 编译通过 | pass | `03_interface/xts/pass/` |
| interface 带可选属性 | 编译通过 | pass | `03_interface/xts/pass/` |
| interface 带 readonly 属性 | 编译通过 | pass | `03_interface/xts/pass/` |
| interface 带方法签名 | 编译通过 | pass | `03_interface/xts/pass/` |
| interface 带可选方法 | 编译通过 | pass | `03_interface/xts/pass/` |
| interface extends 单继承 | 编译通过 | pass | `03_interface/xts/pass/` |
| interface extends 多继承 | 编译通过 | pass | `03_interface/xts/pass/` |
| class implements interface | 编译通过 | pass | `03_interface/xts/pass/` |
| object literal 赋值给 interface 类型 | 编译通过 | pass | `03_interface/xts/pass/` |
| interface 导出 | 编译通过 | integration | `../06_module/xts/integration/` |

## 2. Compile Negative Cases

编译负向用例验证 interface 非法语法。

| 测试点 | 预期错误 | 用例类型 | 建议路径 |
|---|---|---|---|
| class 缺少必选成员 | compile error | fail_compile | `03_interface/xts/fail_compile/` |
| interface 同名不同类型成员 | compile error | fail_compile | `03_interface/xts/fail_compile/` |
| object literal 缺少必选属性 | compile error | fail_compile | `03_interface/xts/fail_compile/` |
| object literal 多余属性 | compile error | fail_compile | `03_interface/xts/fail_compile/` |
| readonly 属性重新赋值 | compile error | fail_compile | `03_interface/xts/fail_compile/` |
| typeof interface | compile error | fail_compile | `03_interface/xts/fail_compile/` |
| instanceof interface | compile error | fail_compile | `03_interface/xts/fail_compile/` |

## 3. Runtime Boundary Cases

运行时边界用例验证 interface 运行时擦除和行为。

| 测试点 | 边界原因 | 用例类型 | 建议路径 |
|---|---|---|---|
| interface 运行时擦除验证 | interface 是否产生运行时代码 | boundary | `03_interface/xts/boundary/` |
| typeof interface 行为 | interface 无运行时对象 | boundary | `03_interface/xts/boundary/` |
| instanceof interface 行为 | interface 无运行时原型链 | boundary | `03_interface/xts/boundary/` |
| interface 名作为运行时值 | interface 是否可作运行时值 | boundary | `03_interface/xts/boundary/` |
| object literal 运行时结构检查 | 结构兼容是否在运行时检查 | boundary | `03_interface/xts/boundary/` |

## 4. Structural Compatibility Cases

结构兼容用例验证 object literal 与 interface 的结构匹配。

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| object literal 精确匹配 | 编译通过 | pass | `03_interface/xts/pass/` |
| object literal 缺少必选属性 | compile error | fail_compile | `03_interface/xts/fail_compile/` |
| object literal 多余属性 | compile error | fail_compile | `03_interface/xts/fail_compile/` |
| object literal 可选属性省略 | 编译通过 | pass | `03_interface/xts/pass/` |
| object literal 类型不匹配 | compile error | fail_compile | `03_interface/xts/fail_compile/` |

## 5. Class Implements Cases

class implements 用例验证 class 实现 interface 的语法和校验。

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| class 完整实现 interface | 编译通过 | pass | `03_interface/xts/pass/` |
| class 缺少必选成员 | compile error | fail_compile | `03_interface/xts/fail_compile/` |
| class 实现可选成员 | 编译通过 | pass | `03_interface/xts/pass/` |
| class implements 多个 interface | 编译通过 | pass | `03_interface/xts/pass/` |
| class 方法签名不匹配 | compile error | fail_compile | `03_interface/xts/fail_compile/` |

## 6. Interface Extends Cases

interface extends 用例验证继承行为。

| 测试点 | 预期行为 | 用例类型 | 建议路径 |
|---|---|---|---|
| interface extends 单继承 | 编译通过 | pass | `03_interface/xts/pass/` |
| interface extends 多继承 | 编译通过 | pass | `03_interface/xts/pass/` |
| interface extends 冲突成员 | compile error | fail_compile | `03_interface/xts/fail_compile/` |
| interface 继承链多层 | 编译通过 | pass | `03_interface/xts/pass/` |
| interface extends 自身 | compile error | fail_compile | `03_interface/xts/fail_compile/` |

## 7. TypeScript Compatibility Boundary Cases

TypeScript interface 兼容边界用例。

| 测试点 | 边界原因 | 用例类型 | 建议路径 |
|---|---|---|---|
| index signature 支持 | 支持状态待确认 | boundary | `03_interface/xts/boundary/` |
| call signature 支持 | 支持状态待确认 | boundary | `03_interface/xts/boundary/` |
| construct signature 支持 | 支持状态待确认 | boundary | `03_interface/xts/boundary/` |
| interface merging 支持 | 支持状态待确认 | boundary | `03_interface/xts/boundary/` |
| generic interface 支持 | 支持状态待确认 | boundary | `03_interface/xts/boundary/` |

## 8. Cross Feature Cases

跨特性组合用例验证 interface 与其他语言特性的交互。

| 测试点 | 关联特性 | 用例类型 | 建议路径 |
|---|---|---|---|
| interface + class 继承 | interface + class | integration | `03_interface/xts/integration/` |
| interface + function type | interface + function | integration | `03_interface/xts/integration/` |
| interface + generic 参数 | interface + generic | integration | `03_interface/xts/integration/` |
| interface + module export/import | interface + module | integration | `../06_module/xts/integration/` |
| interface + enum 类型 | interface + types | integration | `03_interface/xts/integration/` |

## 9. Regression Cases

回归用例用于记录和验证历史缺陷或兼容差异。

| 测试点 | 回归来源 | 用例类型 | 建议路径 |
|---|---|---|---|
| interface 运行时擦除验证 | 规范行为验证 | regression | `03_interface/xts/regression/` |
| class implements 校验行为 | 兼容差异验证 | regression | `03_interface/xts/regression/` |
| interface merging 行为 | 兼容差异验证 | regression | `03_interface/xts/regression/` |
| object literal 结构兼容 | 规范行为验证 | regression | `03_interface/xts/regression/` |

## 10. Test262 Mapping Direction

interface 不直接来自 ECMAScript 规范，test262 中没有直接对应的测试目录。后续映射重点是 TypeScript / ArkTS 兼容说明：

| 映射方向 | 说明 |
|---|---|
| TypeScript interface 规范 | TypeScript 官方文档中 interface 部分 |
| ArkTS interface 规范 | ArkTS 官方文档中 interface 部分 |
| test262 结构类型行为 | test262 中与对象结构相关的间接测试 |

策略：interface 的规范映射以 TypeScript/ArkTS 兼容说明为主，test262 间接覆盖为辅。

## 11. XTS Migration Strategy

| 步骤 | 内容 |
|---|---|
| 1 | 确认 TypeScript interface 语法在动态 ArkTS 中的支持范围 |
| 2 | 使用 XTS / ohosTest 验证 interface 运行时擦除行为 |
| 3 | 使用 fail_compile 验证 class implements 缺少成员和结构不匹配 |
| 4 | 使用 boundary 确认 index/call/construct signature 和 merging 支持边界 |
| 5 | 使用 regression 记录鸿蒙动态 ArkTS interface 实现差异 |