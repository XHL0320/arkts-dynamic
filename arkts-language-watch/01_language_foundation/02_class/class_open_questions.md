<!-- CLASS_WATCH_CONSOLIDATION_V1 -->

# Class Open Questions

## Summary

| 指标 | 数量 |
|---|---|
| 原始 Open Questions 数量 | 244 |
| 去重后 Open Questions 数量 | 162 |
| P0 待确认数量 | 73 |
| P1 待确认数量 | 69 |
| P2 待确认数量 | 20 |

## Open Questions Table

| ID | 问题 | 涉及目录 | 优先级 | 分类 | 建议确认方式 | 备注 |
|---|---|---|---|---|---|---|
| CLASS-OQ-0001 | ArkTS abstract class 与 object literal 的兼容规则是什么？ | 13_abstract_class | P0 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0002 | ArkTS class 与 interface 是完全结构兼容，还是存在名义限制？ | 14_class_and_interface | P0 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0003 | ArkTS 字段遮蔽类型不一致时是允许、报错还是按结构兼容处理？ | 07_inheritance | P0 | ArkTS checker behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0004 | ArkTS 是否允许 abstract class implements interface 后延迟到 concrete 子类实现？ | 13_abstract_class | P0 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0005 | ArkTS 是否允许 constructor 中存在分支 super() 并进行路径完整性分析？ | 08_super | P0 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0006 | ArkTS 是否允许 constructor 参数省略类型？ | 05_constructor | P0 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0007 | ArkTS 是否允许 private abstract method？ | 13_abstract_class | P0 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0008 | ArkTS 是否允许 protected abstract method 被 public 方法实现？ | 13_abstract_class | P0 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0009 | ArkTS 是否允许动态修改 prototype 并影响 super.method() 查找？ | 08_super | P0 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0010 | ArkTS 是否完整支持 abstract class 作为值使用但禁止直接 new？ | 13_abstract_class | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0011 | ArkTS 是否完整支持 method overload 声明和实现签名？ | 04_method | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0012 | ArkTS 是否将所有 this-before-super 场景前移为编译期错误？ | 08_super | P0 | ArkTS checker behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0013 | ArkTS 是否支持 ECMAScript #private field，还是仅支持 private 关键字？ | 03_field | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0014 | ArkTS 是否支持 ECMAScript #private method，还是仅支持 private 关键字？ | 04_method | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0015 | ArkTS 是否支持 ECMAScript computed public field name？ | 03_field | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0016 | ArkTS 是否支持 abstract accessor？ | 13_abstract_class | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0017 | ArkTS 是否支持 abstract field / abstract property？ | 13_abstract_class | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0018 | ArkTS 是否支持 abstract static member，或明确禁止？ | 13_abstract_class | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0019 | ArkTS 是否支持 arrow function 中词法捕获 super？ | 08_super | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0020 | ArkTS 是否支持 async method 和 generator method？ | 04_method | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0021 | ArkTS 是否支持 computed method name？ | 04_method | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0022 | ArkTS 是否支持 constructor overload？ | 05_constructor | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0023 | ArkTS 是否支持 constructor rest/default/optional 参数的全部组合？ | 05_constructor | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0024 | ArkTS 是否支持 extends expression？ | 07_inheritance | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0025 | ArkTS 是否支持 extends null？ | 07_inheritance | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0026 | ArkTS 是否支持 getter/setter，并允许通过 super 访问 accessor？ | 08_super | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0027 | ArkTS 是否支持 getter/setter，若支持类型规则是否与 TS 一致？ | 04_method | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0028 | ArkTS 是否支持 private/protected constructor？ | 05_constructor | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0029 | ArkTS 是否支持 static super property 和 static super method 的完整 ECMA 行为？ | 08_super | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0030 | ArkTS 是否支持 super.field 读写，还是只支持 super.method()？ | 08_super | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0031 | ArkTS 是否禁止 constructor 返回类型标注？ | 05_constructor | P0 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0032 | ArkTS 是否要求所有非可空实例字段在声明处或 constructor 中初始化？ | 03_field | P0 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0033 | Base constructor 中调用 Derived override 方法时字段初始化顺序是否与 ES2022 一致？ | 07_inheritance | P0 | ES2022 compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0034 | abstract class constructor 与子类 super 调用规则是否与 TS 一致？ | 05_constructor | P0 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0035 | abstract class implements interface 时是否允许延迟到 concrete 子类实现？ | 14_class_and_interface | P0 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0036 | abstract class 与 inheritance 的 constructor/super 规则是否与 TS 一致？ | 07_inheritance | P0 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0037 | abstract class 跨模块 export/import 后 checker 与 runtime 行为是否一致？ | 13_abstract_class | P0 | ArkTS runtime behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0038 | constructor return object/primitive 是否完全按 ES2022 执行？ | 05_constructor | P0 | ES2022 compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0039 | declaration merging 是否支持，是否纳入看护范围？ | 14_class_and_interface | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0040 | derived constructor return object / primitive 的行为是否与 ECMAScript 一致？ | 08_super | P0 | ES2022 compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0041 | generic abstract class 的约束在子类实现中是否完全保留？ | 13_abstract_class | P0 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0042 | generic inheritance 中类型参数约束错误是否全部前移为 checker 错误？ | 07_inheritance | P0 | ArkTS checker behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0043 | interface constructor signature 或 static side interface 是否支持？ | 14_class_and_interface | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0044 | interface optional property、readonly property、index signature 的 ArkTS 支持范围是什么？ | 14_class_and_interface | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0045 | interface 在运行时是否完全不可作为值使用？ | 14_class_and_interface | P0 | ArkTS runtime behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0046 | interface 继承 class 类型是否支持？ | 14_class_and_interface | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0047 | new.target 和 Reflect.construct 是否在 ArkTS 中支持？ | 05_constructor | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0048 | object literal 与 class instance 满足 interface 的检查规则是否一致？ | 14_class_and_interface | P0 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0049 | object literal 是否可以赋值给含实例字段的 class 类型？ | 03_field | P0 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0050 | override 关键字是否支持或是否要求？ | 04_method, 07_inheritance | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0051 | private/protected method 是否影响 class 结构兼容？ | 04_method | P0 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0052 | private/protected 字段是否影响 class 之间的结构兼容？ | 03_field | P0 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0053 | private/protected 成员是否严格不能满足 interface public 成员？ | 14_class_and_interface | P0 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0054 | private/protected 成员是否影响派生类与基类之间的赋值兼容？ | 07_inheritance | P0 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0055 | readonly field 是纯编译期限制还是运行时也有属性描述符约束？ | 03_field | P0 | ArkTS runtime behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0056 | rest/default/optional 参数组合在 class method 中的限制是什么？ | 04_method | P0 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0057 | static block 与 static field 初始化顺序是否完整支持 ES2022？ | 03_field | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0058 | static method 中 this 的类型是否表示 constructor/static side？ | 04_method | P0 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0059 | static side 的继承类型检查是否与 instance side 分离？ | 07_inheritance | P0 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0060 | super() 调用多次是否能被 checker 静态识别？ | 05_constructor | P0 | ArkTS checker behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0061 | super() 重复调用在 ArkRuntime 中的具体异常类型是什么？ | 08_super | P0 | ArkTS runtime behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0062 | test262 中哪些 super 用例因 ArkTS 静态语法限制需要改写或排除？ | 08_super | P0 | test262 adaptation | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0063 | 字段初始化表达式引用后序字段时 checker 是否报错？ | 03_field | P0 | ArkTS checker behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0064 | 字段初始化表达式是否允许调用实例方法和访问 this？ | 03_field | P0 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0065 | 当前 ArkTS 是否支持该能力？ | 00_class_declaration, 01_class_type, 02_class_instantiation, 03_field, 04_method, 05_constructor, 06_visibility_modifiers, 07_inheritance, 08_super, 09_override, 10_static_members, 11_readonly_members, 12_object_literal, 13_abstract_class, 14_class_and_interface, 15_generic_class, 16_this_in_class, 17_class_scope, 18_class_initialization_order, 19_class_runtime_behavior, 99_mapping_and_regression | P0 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0066 | 循环继承由 parser/checker 报错还是运行时错误？ | 07_inheritance | P0 | ArkTS runtime behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0067 | 方法提取后 this 丢失是否会被 checker 前移拦截？ | 04_method | P0 | ArkTS checker behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0068 | 是否存在 ArkTS 与 TS/ECMA 差异？ | 00_class_declaration, 01_class_type, 02_class_instantiation, 03_field, 04_method, 05_constructor, 06_visibility_modifiers, 07_inheritance, 08_super, 09_override, 10_static_members, 11_readonly_members, 12_object_literal, 13_abstract_class, 14_class_and_interface, 15_generic_class, 16_this_in_class, 17_class_scope, 18_class_initialization_order, 19_class_runtime_behavior, 99_mapping_and_regression | P0 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0069 | 是否需要 test262 对照？ | 00_class_declaration, 01_class_type, 02_class_instantiation, 03_field, 04_method, 05_constructor, 06_visibility_modifiers, 07_inheritance, 08_super, 09_override, 10_static_members, 11_readonly_members, 12_object_literal, 13_abstract_class, 14_class_and_interface, 15_generic_class, 16_this_in_class, 17_class_scope, 18_class_initialization_order, 19_class_runtime_behavior, 99_mapping_and_regression | P0 | test262 adaptation | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0070 | 未初始化字段在 ArkRuntime 中是否会默认得到 undefined，还是被 checker 前移拦截？ | 03_field | P0 | ArkTS runtime behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0071 | 未声明 implements 但结构满足 interface 的 class instance 是否可赋值给 interface 类型？ | 14_class_and_interface | P0 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0072 | 派生类 this before super 是 checker 报错还是运行时异常？ | 05_constructor | P0 | ArkTS runtime behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0073 | 该能力是编译期检查还是运行时行为？ | 00_class_declaration, 01_class_type, 02_class_instantiation, 03_field, 04_method, 05_constructor, 06_visibility_modifiers, 07_inheritance, 08_super, 09_override, 10_static_members, 11_readonly_members, 12_object_literal, 13_abstract_class, 14_class_and_interface, 15_generic_class, 16_this_in_class, 17_class_scope, 18_class_initialization_order, 19_class_runtime_behavior, 99_mapping_and_regression | P0 | ArkTS runtime behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0074 | ArkTS `private` 是 TypeScript 风格静态 private，还是支持 ECMAScript `#private`？ | 06_visibility_modifiers | P1 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0075 | ArkTS class type compatibility 是结构兼容、名义兼容还是混合规则？ | 01_class_type | P1 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0076 | ArkTS static 初始化时机是否与 ES2022 class evaluation 一致？ | 18_class_initialization_order | P1 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0077 | ArkTS 字段初始化顺序是否完全与 ES2022 class fields 一致？ | 18_class_initialization_order | P1 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0078 | ArkTS 是否允许 field initializer 使用 this？ | 16_this_in_class | P1 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0079 | ArkTS 是否允许 field initializer 调用 this.method()？ | 16_this_in_class | P1 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0080 | ArkTS 是否允许字段初始化表达式引用后序字段，还是 checker 拦截？ | 18_class_initialization_order | P1 | ArkTS checker behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0081 | ArkTS 是否允许字段初始化表达式访问 `this`？ | 18_class_initialization_order | P1 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0082 | ArkTS 是否允许字段初始化表达式调用实例方法？ | 18_class_initialization_order | P1 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0083 | ArkTS 是否在 checker 阶段拦截 definite assignment 和部分初始化顺序风险？ | 18_class_initialization_order | P1 | ArkTS checker behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0084 | ArkTS 是否在 checker 阶段拦截 method extraction 的 this 丢失？ | 16_this_in_class | P1 | ArkTS checker behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0085 | ArkTS 是否强制要求覆盖基类方法时写 override？ | 09_override | P1 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0086 | ArkTS 是否支持 ECMAScript `#private static`？ | 10_static_members | P1 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0087 | ArkTS 是否支持 ECMAScript `#private` 语法和 brand check？ | 06_visibility_modifiers | P1 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0088 | ArkTS 是否支持 `typeof Class` 作为构造器类型？ | 01_class_type | P1 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0089 | ArkTS 是否支持 construct signature，并允许构造器类型作为变量/参数/返回值？ | 01_class_type | P1 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0090 | ArkTS 是否支持 getter/setter 可见性，以及 getter/setter 可见性不一致？ | 06_visibility_modifiers | P1 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0091 | ArkTS 是否支持 override 关键字？ | 09_override | P1 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0092 | ArkTS 是否支持 private/protected/public constructor？ | 06_visibility_modifiers | P1 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0093 | ArkTS 是否支持 static block？ | 10_static_members, 18_class_initialization_order | P1 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0094 | ArkTS 是否支持 static field？ | 10_static_members | P1 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0095 | ArkTS 是否支持 static method？ | 10_static_members | P1 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0096 | ArkTS 是否支持多态 this type？ | 16_this_in_class | P1 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0097 | ArkTS 是否支持显式 this 参数？ | 16_this_in_class | P1 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0098 | ArkTS 派生类字段初始化是否严格发生在 `super()` 之后？ | 18_class_initialization_order | P1 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0099 | `private/protected/public` 是否仅在编译期生效？ | 06_visibility_modifiers | P1 | ArkTS checker behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0100 | `typeof Class` 是否包含 static members？ | 10_static_members | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0101 | abstract method 实现是否需要 override？ | 09_override | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0102 | arrow function 捕获 this 是否与 ES2022 一致？ | 16_this_in_class | P1 | ES2022 compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0103 | call/apply/bind 是否支持及如何检查 this 类型？ | 16_this_in_class | P1 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0104 | class expression / anonymous class 类型是否支持？ | 01_class_type | P1 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0105 | constructor 中调用可被 override 的方法是否允许？ | 18_class_initialization_order | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0106 | derived constructor 中 this before super 是 compile-time error 还是 runtime error？ | 16_this_in_class | P1 | ArkTS runtime behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0107 | dynamic ESObject 是否可能绕过 visibility 检查？ | 06_visibility_modifiers | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0108 | generic class static member 是否允许直接使用 class type parameter T？ | 10_static_members | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0109 | instance 是否允许访问 static member，还是全部 checker 报错？ | 10_static_members | P1 | ArkTS checker behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0110 | interface method 实现是否需要 override？ | 09_override | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0111 | normal nested function 中 this 行为是否受 ArkTS 限制？ | 16_this_in_class | P1 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0112 | object literal 是否可赋给 class type？ | 01_class_type | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0113 | override 时 protected 放宽为 public 是否允许？ | 06_visibility_modifiers | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0114 | override 是否只适用于 method，还是也适用于 accessor/property/static method？ | 09_override | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0115 | private method 在子类同名声明时是 override、遮蔽还是禁止？ | 06_visibility_modifiers | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0116 | private 成员同名是 override、shadow 还是禁止？ | 09_override | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0117 | private/protected 成员是否影响 class type compatibility，影响方式是什么？ | 01_class_type | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0118 | private/protected 是否严格不能满足 interface public 成员？ | 06_visibility_modifiers | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0119 | private/protected 是否影响 class type compatibility，规则是否与 TypeScript 一致？ | 06_visibility_modifiers | P1 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0120 | readonly array 字段是否允许修改元素或调用 push/pop？ | 11_readonly_members | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0121 | readonly object 字段是否只是引用只读？ | 11_readonly_members | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0122 | readonly static field 的类内赋值边界是什么？ | 11_readonly_members | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0123 | readonly 与 private/protected 组合时兼容性如何判断？ | 11_readonly_members | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0124 | readonly 字段是否允许 constructor 中多次赋值？ | 11_readonly_members | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0125 | readonly 字段是否必须在声明处或 constructor 中初始化？ | 11_readonly_members | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0126 | readonly 成员是否影响 class type compatibility？ | 01_class_type | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0127 | readonly 是否影响 class type compatibility 和 object literal compatibility？ | 11_readonly_members | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0128 | readonly 是否影响运行时 property descriptor writable？ | 11_readonly_members | P1 | ArkTS runtime behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0129 | readonly 是否是纯编译期限制？ | 11_readonly_members | P1 | ArkTS checker behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0130 | static member 是否完全不参与 instance interface implements？ | 10_static_members | P1 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0131 | static method 中 this 的类型是 constructor side 还是受限制？ | 16_this_in_class | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0132 | static method 覆盖是否与 instance method 覆盖严格分离？ | 09_override | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0133 | static private/protected/public 是否仅编译期约束？ | 10_static_members | P1 | ArkTS checker behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0134 | static side 与 instance side 是否在所有访问中严格区分？ | 10_static_members | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0135 | static side 和 instance side 是否在所有访问和赋值中严格分离？ | 01_class_type | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0136 | 初始化失败后的对象状态是否可观察？ | 18_class_initialization_order | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0137 | 参数类型覆盖规则是严格一致、协变/逆变，还是 ArkTS 自定义规则？ | 09_override | P1 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0138 | 可见性是否允许 protected 放宽为 public，是否一律禁止收窄？ | 09_override | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0139 | 普通字段是否能满足 readonly interface property？ | 11_readonly_members | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0140 | 未 implements 但结构满足 interface 的 class instance 是否可赋给 interface type？ | 01_class_type | P1 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0141 | 跨模块同名 class 的兼容边界是什么？ | 01_class_type | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0142 | 返回值是否允许协变？ | 09_override | P1 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0143 | ArkTS 支持哪些泛型约束形式？ | 15_generic_class | P2 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0144 | ArkTS 是否允许 object literal 赋值给 class type？ | 12_object_literal | P2 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0145 | ArkTS 是否允许 object literal 赋值给 interface type？ | 12_object_literal | P2 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0146 | ArkTS 是否存在 excess property check？ | 12_object_literal | P2 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0147 | ArkTS 是否存在 freshness 规则？ | 12_object_literal | P2 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0148 | ArkTS 是否支持 index signature？ | 12_object_literal | P2 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0149 | ArkTS 是否支持 optional property 和 readonly property？ | 12_object_literal | P2 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0150 | ArkTS 是否支持泛型类类型实参推断？ | 15_generic_class | P2 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0151 | ArkTS 是否支持默认类型参数？ | 15_generic_class | P2 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0152 | ArkTS 是否限制 object literal 动态属性扩展？ | 12_object_literal | P2 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0153 | ArkTS 泛型类是否完全运行时擦除？ | 15_generic_class | P2 | ArkTS runtime behavior | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0154 | ESObject/dynamic 边界是否会绕过泛型检查？ | 15_generic_class | P2 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0155 | class 类型参数 T 是否可在 static member 中使用？ | 15_generic_class | P2 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0156 | generic class compatibility 是不变、协变还是其他规则？ | 15_generic_class | P2 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0157 | generic class implements generic interface 的约束如何合并？ | 15_generic_class | P2 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0158 | generic class 与 object literal compatibility 如何判断？ | 15_generic_class | P2 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0159 | generic method 是否支持显式类型实参和推断？ | 15_generic_class | P2 | ArkTS syntax support | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0160 | object literal 与 class instance 的 prototype/instanceof 差异是否需要在 XTS 中显式断言？ | 12_object_literal | P2 | TypeScript compatibility | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0161 | object literal 是否可满足 abstract class type？ | 12_object_literal | P2 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |
| CLASS-OQ-0162 | object literal 是否可满足 class private/protected 成员？ | 12_object_literal | P2 | XTS implementation detail | 查 ArkTS 官方文档并用最小 XTS/编译样例确认 |  |

## High Priority Questions

1. ArkTS 是否支持 class expression？
2. ArkTS 是否支持 `typeof Class` 构造器类型？
3. ArkTS class type 是结构兼容、名义兼容还是混合？
4. object literal 是否可赋值给 class type？
5. private/protected 是否影响结构兼容？
6. readonly 是否仅编译期限制？
7. constructor 是否支持 overload？
8. constructor 是否支持 private/protected？
9. 是否支持 override 关键字，是否强制？
10. 是否支持 getter/setter？
11. 是否支持 static block？
12. 是否支持 ECMAScript `#private`？
13. 是否支持 field initializer 使用 this？
14. 是否支持 field initializer 调用 this.method()？
15. this before super 是编译期错误还是运行时错误？
16. static member 是否可使用 generic class 类型参数 T？
17. 是否支持 generic default type parameter？
18. 是否支持 object literal excess property check？
19. 是否支持 index signature？
20. 是否允许 prototype 动态修改？
