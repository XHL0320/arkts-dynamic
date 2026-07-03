<!-- CLASS_WATCH_CONSOLIDATION_V1 -->

# Class test262 Total Mapping

## Mapping Principle

1. test262 用于 ECMAScript runtime semantics；
2. ArkTS checker/type system 用例不从 test262 直接推导；
3. ES2022 class runtime behavior 是重点可映射区域；
4. ArkTS-specific / TS-compatible 特性只记录参考，不作为 test262 直接映射。

## Runtime Mapping Table

| Mapping ID | 来源子目录 | test262 方向 | ECMA Baseline Status | ArkTS 是否适用 | 是否建议适配为 XTS | 建议 XTS 用例类型 | 备注 |
|---|---|---|---|---|---|---|---|
| CLASS-T262-R-0001 | 01_class_type | class constructor runtime value | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0002 | 01_class_type | class cannot be called without new | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 静态/运行时分流 |
| CLASS-T262-R-0003 | 01_class_type | prototype property | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0004 | 01_class_type | instance constructor property | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0005 | 01_class_type | instanceof class | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0006 | 01_class_type | class inheritance runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0007 | 01_class_type | static members runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0008 | 03_field | public instance field | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 语法适配 |
| CLASS-T262-R-0009 | 03_field | public static field | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或适配 |
| CLASS-T262-R-0010 | 03_field | class field initialization order | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0011 | 03_field | derived class field initialization | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0012 | 03_field | field initializer this | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0013 | 03_field | field initializer super | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0014 | 03_field | computed field name | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0015 | 03_field | private field | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0016 | 03_field | static block 与 static field | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0017 | 03_field | class fields and inheritance | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0018 | 03_field | class fields and TDZ | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0019 | 03_field | class cannot be called without new | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0020 | 04_method | class method definition | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 语法适配 |
| CLASS-T262-R-0021 | 04_method | method on prototype | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0022 | 04_method | method name property | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0023 | 04_method | method this binding | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0024 | 04_method | static method | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0025 | 04_method | super.method | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0026 | 04_method | getter method | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0027 | 04_method | setter method | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0028 | 04_method | computed method name | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0029 | 04_method | private method | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0030 | 04_method | async method | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或适配 |
| CLASS-T262-R-0031 | 04_method | generator method | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0032 | 04_method | class method cannot be used as constructor | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0033 | 04_method | method inheritance | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0034 | 04_method | method definition and TDZ | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0035 | 05_constructor | class constructor definition | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 语法适配 |
| CLASS-T262-R-0036 | 05_constructor | default constructor | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0037 | 05_constructor | derived class default constructor | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0038 | 05_constructor | constructor cannot be called without new | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0039 | 05_constructor | derived constructor super call | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0040 | 05_constructor | this before super | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配或差异 |
| CLASS-T262-R-0041 | 05_constructor | super() called twice | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0042 | 05_constructor | constructor return object | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0043 | 05_constructor | constructor return primitive | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0044 | 05_constructor | new.target in constructor | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0045 | 05_constructor | Reflect.construct with class constructor | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或适配 |
| CLASS-T262-R-0046 | 05_constructor | constructor property | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0047 | 05_constructor | prototype constructor property | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0048 | 05_constructor | base constructor and derived fields initialization order | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0049 | 05_constructor | constructor throwing abrupt completion | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0050 | 06_visibility_modifiers | ECMAScript private fields #x, only if ArkTS supports it | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0051 | 06_visibility_modifiers | private field brand check, only if ArkTS supports #private | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0052 | 06_visibility_modifiers | public class fields runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0053 | 06_visibility_modifiers | public class methods runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0054 | 06_visibility_modifiers | static fields runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0055 | 06_visibility_modifiers | static methods runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0056 | 06_visibility_modifiers | class inheritance runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0057 | 06_visibility_modifiers | prototype chain | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0058 | 06_visibility_modifiers | instanceof class | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0059 | 07_inheritance | class extends base class | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 语法适配 |
| CLASS-T262-R-0060 | 07_inheritance | derived class default constructor | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0061 | 07_inheritance | prototype chain after extends | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0062 | 07_inheritance | instanceof with base and derived | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0063 | 07_inheritance | derived constructor super call | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0064 | 07_inheritance | this before super | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配或差异 |
| CLASS-T262-R-0065 | 07_inheritance | extends non-constructor | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0066 | 07_inheritance | extends null | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0067 | 07_inheritance | method inheritance | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0068 | 07_inheritance | method overriding runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0069 | 07_inheritance | static method inheritance | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0070 | 07_inheritance | public fields with inheritance | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0071 | 07_inheritance | class fields initialization order | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0072 | 07_inheritance | super property access | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0073 | 07_inheritance | derived class abrupt completion | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配 |
| CLASS-T262-R-0074 | 08_super | super call in derived constructor | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 语法适配 |
| CLASS-T262-R-0075 | 08_super | this before super | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 静态/运行时分流 |
| CLASS-T262-R-0076 | 08_super | super called twice | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或适配 |
| CLASS-T262-R-0077 | 08_super | super call arguments | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 语法适配 |
| CLASS-T262-R-0078 | 08_super | super property access | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0079 | 08_super | super.method receiver | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 语法适配 |
| CLASS-T262-R-0080 | 08_super | super in class method | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 语法适配 |
| CLASS-T262-R-0081 | 08_super | super in arrow function | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0082 | 08_super | super in nested function invalid | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | fail_compile 映射 |
| CLASS-T262-R-0083 | 08_super | static super method | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 语法适配 |
| CLASS-T262-R-0084 | 08_super | static super property | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0085 | 08_super | super with getters/setters | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0086 | 08_super | super and prototype lookup | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 差异记录 |
| CLASS-T262-R-0087 | 08_super | super with derived fields initialization | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 语法适配 |
| CLASS-T262-R-0088 | 08_super | super abrupt completion | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 语法适配 |
| CLASS-T262-R-0089 | 09_override | method inheritance runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0090 | 09_override | prototype method lookup | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0091 | 09_override | overridden method dispatch | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0092 | 09_override | super.method property lookup | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0093 | 09_override | super.method receiver | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0094 | 09_override | static method inheritance | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0095 | 09_override | static super method | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或适配 |
| CLASS-T262-R-0096 | 09_override | class fields vs methods name collision | ES2022 / ArkTS-specific | 待确认 | 是 | boundary | 静态/运行时分流 |
| CLASS-T262-R-0097 | 09_override | getter/setter override, only if ArkTS supports accessors | ES2022 / ArkTS-specific | 待确认 | 是 | boundary | 记录差异或排除 |
| CLASS-T262-R-0098 | 09_override | method cannot be used as constructor | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0099 | 09_override | method function name behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0100 | 10_static_members | public static field | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0101 | 10_static_members | public static method | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0102 | 10_static_members | static field initialization order | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0103 | 10_static_members | static method inheritance | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0104 | 10_static_members | static field inheritance | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0105 | 10_static_members | static super method | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 语法适配 |
| CLASS-T262-R-0106 | 10_static_members | static super property | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0107 | 10_static_members | static block, only if ArkTS supports it | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0108 | 10_static_members | static block abrupt completion, only if ArkTS supports it | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0109 | 10_static_members | static private field, only if ArkTS supports ECMAScript #private | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0110 | 10_static_members | class evaluation with static members | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0111 | 10_static_members | constructor object property behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0112 | 10_static_members | static members are not on instances | ES2022 / ArkTS-specific | 待确认 | 是 | boundary | 静态/运行时分流 |
| CLASS-T262-R-0113 | 10_static_members | static this binding | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0114 | 11_readonly_members | public instance field initialization | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0115 | 11_readonly_members | public static field initialization | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0116 | 11_readonly_members | field initialization order | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0117 | 11_readonly_members | constructor initialization order | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0118 | 11_readonly_members | derived class field initialization | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0119 | 11_readonly_members | static field inheritance | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0120 | 11_readonly_members | class fields are runtime properties | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0121 | 11_readonly_members | property assignment runtime behavior, only for dynamic boundary | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录为 ArkTS Static Boundary |
| CLASS-T262-R-0122 | 11_readonly_members | Object.freeze comparison, only as runtime contrast if needed | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 仅作差异对照 |
| CLASS-T262-R-0123 | 12_object_literal | object initializer runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0124 | 12_object_literal | object literal property definition | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0125 | 12_object_literal | object literal method definition | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0126 | 12_object_literal | computed property name, only if ArkTS supports it | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0127 | 12_object_literal | getter/setter in object literal, only if ArkTS supports it | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0128 | 12_object_literal | property access runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0129 | 12_object_literal | missing property runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 静态/运行时分流 |
| CLASS-T262-R-0130 | 12_object_literal | object prototype behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0131 | 12_object_literal | object literal this binding in method | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0132 | 12_object_literal | object literal spread, only if ArkTS supports it | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0133 | 12_object_literal | object literal runtime instanceof class contrast | Mixed | 待确认 | 是 | boundary | 运行时交叉验证 |
| CLASS-T262-R-0134 | 13_abstract_class | class inheritance runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 用于 runtime 交叉验证 |
| CLASS-T262-R-0135 | 13_abstract_class | derived constructor super call | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 语法适配 |
| CLASS-T262-R-0136 | 13_abstract_class | prototype chain | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时对照 |
| CLASS-T262-R-0137 | 13_abstract_class | instanceof with base and derived | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时对照 |
| CLASS-T262-R-0138 | 13_abstract_class | method inheritance | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时对照 |
| CLASS-T262-R-0139 | 13_abstract_class | method overriding runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时对照 |
| CLASS-T262-R-0140 | 13_abstract_class | field initialization order | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 语法适配 |
| CLASS-T262-R-0141 | 13_abstract_class | constructor property | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时对照 |
| CLASS-T262-R-0142 | 14_class_and_interface | class instance runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0143 | 14_class_and_interface | prototype chain | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0144 | 14_class_and_interface | instanceof class | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0145 | 14_class_and_interface | method call runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0146 | 14_class_and_interface | field access runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0147 | 14_class_and_interface | class inheritance runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0148 | 15_generic_class | class constructor runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0149 | 15_generic_class | class cannot be called without new | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0150 | 15_generic_class | prototype property | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0151 | 15_generic_class | instanceof class | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0152 | 15_generic_class | class fields runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0153 | 15_generic_class | class methods runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0154 | 15_generic_class | class inheritance runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0155 | 15_generic_class | static members runtime behavior | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0156 | 16_this_in_class | class method this binding | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时行为用例 |
| CLASS-T262-R-0157 | 16_this_in_class | class method strict this | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时行为用例 |
| CLASS-T262-R-0158 | 16_this_in_class | method extraction this undefined | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时行为用例 |
| CLASS-T262-R-0159 | 16_this_in_class | derived constructor this before super | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 静态/运行时分流 |
| CLASS-T262-R-0160 | 16_this_in_class | this after super | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时行为用例 |
| CLASS-T262-R-0161 | 16_this_in_class | field initializer using this | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或适配 |
| CLASS-T262-R-0162 | 16_this_in_class | super.method receiver | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时行为用例 |
| CLASS-T262-R-0163 | 16_this_in_class | arrow function lexical this in class method | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时行为用例 |
| CLASS-T262-R-0164 | 16_this_in_class | static method this | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时行为用例 |
| CLASS-T262-R-0165 | 16_this_in_class | static method inherited this | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时行为用例 |
| CLASS-T262-R-0166 | 16_this_in_class | call/apply/bind this behavior, only if ArkTS supports it | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0167 | 16_this_in_class | object literal method this contrast | Mixed | 待确认 | 是 | boundary | 运行时交叉验证 |
| CLASS-T262-R-0168 | 18_class_initialization_order | public instance fields initialization order | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0169 | 18_class_initialization_order | field initializer evaluation order | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0170 | 18_class_initialization_order | field initializer using this | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或适配 |
| CLASS-T262-R-0171 | 18_class_initialization_order | field initializer abrupt completion | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0172 | 18_class_initialization_order | base class instance fields initialization | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0173 | 18_class_initialization_order | derived class instance fields initialization | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0174 | 18_class_initialization_order | derived constructor super call order | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 静态/运行时分流 |
| CLASS-T262-R-0175 | 18_class_initialization_order | this before super | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 静态/运行时分流 |
| CLASS-T262-R-0176 | 18_class_initialization_order | base constructor before derived fields | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0177 | 18_class_initialization_order | constructor abrupt completion | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0178 | 18_class_initialization_order | static fields initialization order | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0179 | 18_class_initialization_order | static field initializer abrupt completion | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0180 | 18_class_initialization_order | static block order, only if ArkTS supports static block | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0181 | 18_class_initialization_order | static block abrupt completion, only if ArkTS supports static block | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0182 | 18_class_initialization_order | base static before derived static | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0183 | 18_class_initialization_order | class evaluation order | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0184 | 18_class_initialization_order | method call during construction | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0185 | 18_class_initialization_order | constructor return object/primitive boundary | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或适配 |
| CLASS-T262-R-0186 | 18_class_initialization_order | super() abrupt completion | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 运行时交叉验证 |
| CLASS-T262-R-0187 | 19_class_runtime_behavior | class declaration runtime binding | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为 ArkTS XTS runtime behavior 用例 |
| CLASS-T262-R-0188 | 19_class_runtime_behavior | class constructor cannot be called without new | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配：compile-time boundary 或 runtime TypeError 用例 |
| CLASS-T262-R-0189 | 19_class_runtime_behavior | class constructor with new | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为正向用例 |
| CLASS-T262-R-0190 | 19_class_runtime_behavior | class prototype property | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或适配 |
| CLASS-T262-R-0191 | 19_class_runtime_behavior | instance constructor property | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或适配 |
| CLASS-T262-R-0192 | 19_class_runtime_behavior | method on prototype | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或适配 |
| CLASS-T262-R-0193 | 19_class_runtime_behavior | method this binding | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为正向用例 |
| CLASS-T262-R-0194 | 19_class_runtime_behavior | method extraction this undefined | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 适配为 runtime error 用例 |
| CLASS-T262-R-0195 | 19_class_runtime_behavior | public instance fields | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为正向用例 |
| CLASS-T262-R-0196 | 19_class_runtime_behavior | instance field initialization order | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为顺序观测用例 |
| CLASS-T262-R-0197 | 19_class_runtime_behavior | public static fields | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为正向用例 |
| CLASS-T262-R-0198 | 19_class_runtime_behavior | public static methods | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为正向用例 |
| CLASS-T262-R-0199 | 19_class_runtime_behavior | static field initialization order | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为顺序观测用例 |
| CLASS-T262-R-0200 | 19_class_runtime_behavior | static block | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异：单 static block 适配，多 static block 排除 |
| CLASS-T262-R-0201 | 19_class_runtime_behavior | class inheritance prototype chain | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为原型链验证用例 |
| CLASS-T262-R-0202 | 19_class_runtime_behavior | derived class default constructor | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为正向用例 |
| CLASS-T262-R-0203 | 19_class_runtime_behavior | derived constructor super call | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为正向用例 |
| CLASS-T262-R-0204 | 19_class_runtime_behavior | this before super | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为 compile-time boundary 用例，同时记录 runtime 对应 |
| CLASS-T262-R-0205 | 19_class_runtime_behavior | super() called twice | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为 compile-time boundary 或 runtime 用例 |
| CLASS-T262-R-0206 | 19_class_runtime_behavior | super.method property lookup | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为正向用例 |
| CLASS-T262-R-0207 | 19_class_runtime_behavior | super.method receiver | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为正向用例 |
| CLASS-T262-R-0208 | 19_class_runtime_behavior | static super method | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为正向用例 |
| CLASS-T262-R-0209 | 19_class_runtime_behavior | instanceof class | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为正向用例 |
| CLASS-T262-R-0210 | 19_class_runtime_behavior | instanceof invalid right operand | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为 compile-time boundary 用例 |
| CLASS-T262-R-0211 | 19_class_runtime_behavior | constructor abrupt completion | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为 runtime error 用例 |
| CLASS-T262-R-0212 | 19_class_runtime_behavior | field initializer abrupt completion | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为 runtime error 用例 |
| CLASS-T262-R-0213 | 19_class_runtime_behavior | static initializer abrupt completion | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为 runtime error 用例 |
| CLASS-T262-R-0214 | 19_class_runtime_behavior | class evaluation abrupt completion | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为 runtime error 用例 |
| CLASS-T262-R-0215 | 19_class_runtime_behavior | class runtime behavior is ES2022 | ES2022 | 是 | 是 | fail_runtime/pass/boundary | 适配为 ArkTS XTS runtime behavior 用例 |
| CLASS-T262-R-0216 | 19_class_runtime_behavior | #private field | ES2022 | 不适用 | 是 | fail_runtime/pass/boundary | 排除 |
| CLASS-T262-R-0217 | 19_class_runtime_behavior | call/apply/bind | ES2022 | 不适用 | 是 | fail_runtime/pass/boundary | 排除 |
| CLASS-T262-R-0218 | 19_class_runtime_behavior | prototype mutation | ES2022 | 不适用 | 是 | fail_runtime/pass/boundary | 排除，记录为 ArkTS compile-time boundary |
| CLASS-T262-R-0219 | 19_class_runtime_behavior | new.target | ES2022 | 不适用 | 是 | fail_runtime/pass/boundary | 排除 |
| CLASS-T262-R-0220 | 19_class_runtime_behavior | computed property name in class | ES2022 | 待确认 | 是 | fail_runtime/pass/boundary | 记录差异或排除 |
| CLASS-T262-R-0221 | 19_class_runtime_behavior | class expression | ES2022 | 不适用 | 是 | fail_runtime/pass/boundary | 排除 |

## Static Semantics Not From test262

| 来源子目录 | ArkTS/TS 静态特性 | 为什么不来自 test262 | 后续测试方式 |
|---|---|---|---|
| 01_class_type | class type compatibility | class type 是 ArkTS/TS 静态类型系统概念 | 使用 ArkTS spec/checker 用例 |
| 06_visibility_modifiers | visibility modifiers | public/private/protected 不是 ECMA 标准运行时可见性 | 使用 ArkTS spec/checker 用例 |
| 11_readonly_members | readonly | readonly 不是 ECMA class runtime 语法 | 使用 ArkTS spec/checker 用例 |
| 13_abstract_class | abstract class | abstract 不是 ECMA runtime 关键字 | 使用 ArkTS spec/checker 用例 |
| 14_class_and_interface | interface implements | interface/implements 不属于 ECMA runtime 语义 | 使用 ArkTS spec/checker 用例 |
| 15_generic_class | generic class | 泛型类型参数不是 ECMA runtime 语义 | 使用 ArkTS spec/checker 用例 |
| 12_object_literal | object literal compatibility | 类型兼容规则不来自 test262 | 使用 ArkTS spec/checker 用例 |
| 09_override | override keyword/type checking | override 关键字和签名检查不是 ECMA runtime 规则 | 使用 ArkTS spec/checker 用例 |
| 16_this_in_class | this type checking | this 类型推断/多态 this 不来自 test262 | 使用 ArkTS spec/checker 用例 |
