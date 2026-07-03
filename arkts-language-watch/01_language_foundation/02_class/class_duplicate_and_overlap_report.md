<!-- CLASS_WATCH_CONSOLIDATION_V1 -->

# Class Duplicate and Overlap Report

## Duplicate Groups

| Group ID | 重复/重叠主题 | 涉及目录 | 建议保留主目录 | 处理建议 | 备注 |
|---|---|---|---|---|---|
| DUP-001 | this before super | 05_constructor, 07_inheritance, 08_super, 16_this_in_class, 18_class_initialization_order, 19_class_runtime_behavior | 08_super | 由 08_super 主测 super 规则，constructor/initialization/this 目录保留交叉用例 | 高重叠 |
| DUP-002 | field initialization order | 03_field, 05_constructor, 07_inheritance, 18_class_initialization_order, 19_class_runtime_behavior | 18_class_initialization_order | 初始化顺序统一归口，field/constructor 保留基础局部用例 | 高重叠 |
| DUP-003 | super.method() | 07_inheritance, 08_super, 09_override, 16_this_in_class, 19_class_runtime_behavior | 08_super | super lookup/receiver 主归属 08_super，override 目录关注签名覆盖 | 高重叠 |
| DUP-004 | class implements interface | 14_class_and_interface, 13_abstract_class, 15_generic_class, 12_object_literal | 14_class_and_interface | implements 完整性主归属 14_class_and_interface |  |
| DUP-005 | private/protected compatibility | 06_visibility_modifiers, 01_class_type, 11_readonly_members, 12_object_literal, 14_class_and_interface | 06_visibility_modifiers | 访问权限主归属 visibility，其他目录只保留交叉验证 |  |
| DUP-006 | readonly assignment | 03_field, 11_readonly_members, 18_class_initialization_order, 14_class_and_interface | 11_readonly_members | readonly 赋值与初始化主归属 readonly 目录 |  |
| DUP-007 | static side vs instance side | 01_class_type, 10_static_members, 16_this_in_class, 19_class_runtime_behavior | 10_static_members | static 成员主归属 10_static_members，class_type 关注类型侧 |  |
| DUP-008 | generic class field/method/constructor | 15_generic_class, 03_field, 04_method, 05_constructor, 14_class_and_interface | 15_generic_class | 泛型 T 与约束主归属 generic 目录 |  |
| DUP-009 | object literal to class/interface | 12_object_literal, 01_class_type, 14_class_and_interface | 12_object_literal | 对象字面量兼容主归属 12_object_literal |  |
| DUP-010 | class runtime prototype/instanceof | 19_class_runtime_behavior, 01_class_type, 07_inheritance, 12_object_literal | 19_class_runtime_behavior | runtime/prototype/instanceof 主归属 19_class_runtime_behavior |  |

## Recommended Ownership

| 主题 | 主归属目录 | 其他关联目录 | 原因 |
|---|---|---|---|
| 字段声明/字段类型 | 03_field | 18_class_initialization_order, 11_readonly_members | 字段自身语义最集中 |
| 方法参数/返回值 | 04_method | 09_override, 14_class_and_interface | 方法签名主入口 |
| 构造函数参数/初始化 | 05_constructor | 08_super, 18_class_initialization_order | constructor 独立语义最集中 |
| 继承关系 | 07_inheritance | 08_super, 09_override | extends 与继承链主入口 |
| super 独立语义 | 08_super | 05_constructor, 16_this_in_class | super call/property 独立语义 |
| override 类型兼容 | 09_override | 04_method, 07_inheritance | 覆盖签名和关键字边界 |
| static side | 10_static_members | 01_class_type, 16_this_in_class | static field/method/初始化主入口 |
| readonly 规则 | 11_readonly_members | 03_field, 14_class_and_interface | 只读赋值和兼容集中 |
| object literal compatibility | 12_object_literal | 01_class_type, 14_class_and_interface | 对象字面量兼容主入口 |
| abstract rules | 13_abstract_class | 07_inheritance, 09_override | 抽象成员实现规则 |
| implements interface | 14_class_and_interface | 13_abstract_class, 15_generic_class | implements 完整性主入口 |
| generic class | 15_generic_class | 03_field, 04_method, 05_constructor | 泛型 T 与约束主入口 |
| this binding | 16_this_in_class | 08_super, 18_class_initialization_order | this 类型和绑定集中 |
| initialization order | 18_class_initialization_order | 03_field, 05_constructor, 10_static_members | 初始化顺序总收口 |
| runtime/prototype/instanceof | 19_class_runtime_behavior | 01_class_type, 07_inheritance | 运行时行为总收口 |
