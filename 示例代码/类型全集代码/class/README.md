# ArkTS Class 类型全集示例代码

本目录用于存放 ArkTS Class 相关正向示例代码，供测试人员、语言特性看护人员、XTS 用例开发人员参考。

## 目录定位

本目录不是 XTS 负向测试目录，也不是 fail_compile 用例目录。

本目录只存放 ArkTS Class 正向规范写法示例。

## 文件说明

| 文件 | 说明 |
|---|---|
| class_all_in_one_examples.ets | Class 全量核心正向示例合集 |
| class_basic_examples.ets | class 声明、实例化、类作为类型和值 |
| class_field_examples.ets | 实例字段、字段初始化、字段访问 |
| class_method_examples.ets | 实例方法、参数、返回值、this 调用 |
| class_constructor_examples.ets | constructor、参数初始化、默认构造 |
| class_visibility_examples.ets | public/private/protected 示例 |
| class_static_readonly_examples.ets | static、readonly、static readonly 示例 |
| class_inheritance_super_examples.ets | extends、super、继承、方法覆盖 |
| class_interface_abstract_examples.ets | implements interface、abstract class |
| class_generic_examples.ets | generic class、generic interface、generic inheritance |
| class_this_runtime_examples.ets | this、运行时基础行为、instanceof |
| class_boundary_pending_examples.md | ArkTS 支持情况待确认或不建议放入正向示例的特性 |

## 示例覆盖范围

1. class declaration
2. class instantiation
3. class as type
4. class as runtime value
5. instance fields
6. field initialization
7. instance methods
8. method parameters and return types
9. constructor
10. visibility modifiers
11. readonly fields
12. static fields and static methods
13. inheritance
14. super()
15. method overriding-like behavior
16. class implements interface
17. abstract class
18. generic class
19. generic interface
20. generic inheritance
21. this in class
22. runtime basics such as instanceof

## 不放入正向示例的特性

以下特性需要先确认 ArkTS 支持情况，暂不写入 `.ets` 正向示例：

1. class expression
2. getter / setter
3. constructor overload
4. private / protected constructor
5. override keyword 是否支持或是否强制
6. static block
7. ECMAScript `#private`
8. field initializer 调用 `this.method()`
9. generic default type parameter
10. object literal excess property check
11. index signature
12. prototype mutation
13. call / apply / bind
14. explicit this parameter
15. polymorphic this type
