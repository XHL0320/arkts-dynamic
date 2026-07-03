# Class Boundary and Pending Examples

本文件记录 ArkTS Class 示例集中暂不写入正向 `.ets` 示例的特性。

## Pending Features

| 特性 | 原因 | 建议后续验证方式 |
|---|---|---|
| class expression | 当前正向示例只采用 class declaration，避免引入未确认语法 | 查 ArkTS class 规范并用最小编译样例确认 |
| getter/setter | accessor 支持和语法细节需要确认 | 查 ArkTS class/accessor 规范 |
| constructor overload | overload 是否支持及实现签名规则需要确认 | 先生成 boundary/fail_compile XTS |
| private/protected constructor | constructor 可见性支持情况需要确认 | 查 ArkTS accessibility 规范 |
| override keyword | 是否支持或是否强制使用需要确认 | 查 ArkTS override 规则 |
| static block | static block 是否纳入 ArkTS 默认支持需要确认 | 查 ArkTS ES2022 class 支持说明 |
| ECMAScript `#private` | ArkTS `private` 与 ECMAScript `#private` 不应混同 | 查 ArkTS private field 规则 |
| field initializer 调用 `this.method()` | 初始化顺序和 checker 规则需要确认 | 用最小运行/编译样例确认 |
| generic default type parameter | default type argument 支持范围需要确认 | 查 ArkTS generics 规范 |
| object literal excess property check | 属于类型兼容/checker 行为，不适合作为 class 正向全集基础示例 | 放入 object literal compatibility watch |
| index signature | index signature 支持情况和 class/interface 交叉需要确认 | 查 interface/type 规范 |
| prototype mutation | 过度动态 JavaScript 风格，不适合作为 ArkTS 静态正向示例 | 仅作为 runtime boundary |
| call/apply/bind | 动态 this 绑定能力不作为默认正向写法 | 仅作为 runtime boundary |
| explicit this parameter | ArkTS 是否支持显式 this 参数需要确认 | 查 function/method 规范 |
| polymorphic this type | 是否支持 `this` type 或多态 this 需要确认 | 查 class type 规范 |
| method extraction this 丢失 | 属于运行时/边界行为，不是正向规范写法 | 放入 fail_runtime 或 boundary XTS |
| super() 重复调用 | 负向语义，不写入正向示例 | 放入 fail_compile/fail_runtime XTS |
| this before super | 负向语义，不写入正向示例 | 放入 fail_compile/fail_runtime XTS |
| object literal 赋值给 class type | ArkTS class type 兼容规则需要确认 | 放入 boundary 或 class type watch |
| dynamic / ESObject 边界 | 动态边界不属于静态 Class 正向规范示例 | 放入 interop/dynamic boundary |

## Suggested Boundary Directions

| 方向 | 示例说明 | 推荐放置位置 |
|---|---|---|
| accessor support | getter/setter 正负向最小样例 | Class Method boundary / XTS |
| constructor overload | overload 签名匹配和不匹配 | Constructor boundary / XTS |
| static block | static 初始化顺序和异常 | Static Members boundary / XTS |
| `#private` | ECMAScript private brand check | Visibility boundary / XTS |
| field initializer this call | 字段初始化期间调用实例方法 | Initialization Order boundary / XTS |
| generic defaults | 默认类型参数和约束 | Generic Class boundary / XTS |
| object literal to class | object literal 与 class type 兼容 | Object Literal Compatibility boundary / XTS |
| method extraction | 未绑定方法 this 丢失 | This in Class fail_runtime / boundary |

## 不纳入正向示例的原因

1. 正向示例目录只放可编译、可运行、规范写法；
2. 负向场景应放入 XTS fail_compile / fail_runtime；
3. ArkTS 支持情况不确定的特性应先进入 boundary；
4. 动态 JS 风格能力不适合作为 ArkTS 静态语言正向规范示例。
