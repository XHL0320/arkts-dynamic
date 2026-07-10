# Generic Ownership Review

## Purpose

本文件用于确认 `04_generic` 章节只负责泛型函数、泛型类、泛型接口、泛型方法、类型参数、类型实参、约束、默认参数、推断和运行时擦除边界，避免把 function / class / interface / module / TypeScript compatibility 的完整语义误归入 generic。

## Ownership Rule

| 规则类型 | 主归属目录 | Generic 中处理方式 |
|---|---|---|
| generic function | `04_generic` + `01_function` | generic 负责类型参数/类型实参边界，function 负责调用语义 |
| generic class | `04_generic` + `02_class` | generic 负责泛型类边界，class 负责 class 完整语义 |
| generic interface | `04_generic` + `03_interface` | generic 负责泛型接口边界，interface 负责接口完整语义 |
| generic method | `04_generic` + `01_function` / `02_class` | generic 负责泛型方法边界 |
| type parameter | `04_generic` | 主负责 |
| explicit type argument | `04_generic` | 主负责 |
| type argument inference | `04_generic` + `01_function` | generic 负责推断边界，function 负责调用 |
| generic constraint | `04_generic` + `types` | generic 负责约束边界，types 负责类型基础 |
| default type parameter | `04_generic` | 主负责边界 |
| runtime erasure | `04_generic` | 主负责边界 |
| function call / params / return / closure | `01_function` | generic 不展开 |
| class constructor / member / inheritance / super | `02_class` | generic 不展开 |
| interface member / extends / implements | `03_interface` | generic 不展开 |
| module import/export resolution | `06_module` | generic 只做 export/import boundary |
| TypeScript generic compatibility full mapping | `02_typescript_compatibility` | generic 做核心语言看护，详细差异后续归 TS compatibility |

## Potential Misplaced Cases

| 文件路径 | 测试点 | 是否疑似误放 generic | 建议处理 |
|---|---|---|---|
| `xts/pass/generic_function_basic_pass.ets` | 泛型函数基础 | 否 | keep_as_generic — 测试泛型语法，不测试函数调用语义 |
| `xts/pass/generic_class_basic_pass.ets` | 泛型类基础 | 否 | keep_as_generic — 测试泛型语法，不测试 class 成员语义 |
| `xts/pass/generic_interface_basic_pass.ets` | 泛型接口基础 | 否 | keep_as_generic — 测试泛型语法，不测试 interface 成员语义 |
| `xts/pass/generic_method_in_class_pass.ets` | 类中泛型方法 | 否 | keep_as_generic — 测试泛型方法语法，不测试方法调用语义 |
| `xts/boundary/generic_class_constructor_parameter_boundary.ets` | 构造器参数 | 否 | keep_as_generic_boundary — 测试泛型构造器参数边界 |
| `xts/boundary/generic_class_static_member_boundary.ets` | 静态成员 | 否 | keep_as_generic_boundary — 测试静态成员与泛型边界 |
| `xts/boundary/generic_interface_extends_boundary.ets` | 泛型接口 extends | 否 | keep_as_generic_boundary — 测试泛型 extends 边界 |
| `xts/boundary/generic_method_override_boundary.ets` | 泛型方法 override | 否 | keep_as_generic_boundary — 测试泛型方法 override 边界 |
| `xts/boundary/generic_export_boundary.ets` | 泛型导出 | 否 | keep_as_generic_boundary — 测试泛型导出边界，模块解析归 module |
| `xts/boundary/generic_runtime_erasure_boundary.ets` | 运行时擦除 | 否 | keep_as_generic_boundary — 测试泛型运行时擦除边界 |
| `xts/boundary/generic_type_parameter_typeof_boundary.ets` | typeof 泛型参数 | 否 | keep_as_generic_boundary — 测试泛型参数 typeof 边界 |
| `xts/boundary/generic_type_parameter_instanceof_boundary.ets` | instanceof 泛型参数 | 否 | keep_as_generic_boundary — 测试泛型参数 instanceof 边界 |

**结论：未发现疑似误放文件。** 所有 28 个 .ets 文件均正确归属于 generic 章节管辖范围。

## Cross Feature Ownership

| 交叉点 | Generic 负责 | 关联章节负责 | 说明 |
|---|---|---|---|
| generic function | 类型参数、类型实参、推断边界 | function 负责调用、参数、return | 避免重复 |
| generic class | 泛型类声明和实例化边界 | class 负责 constructor、继承、成员初始化 | 避免重复 |
| generic interface | 泛型接口声明和使用边界 | interface 负责成员签名、extends、implements | 避免重复 |
| generic constraint | 约束语法和违反边界 | types 负责基础类型和类型关系 | 避免重复 |
| generic export/import | 泛型边界索引 | module 负责解析、绑定、循环依赖 | 避免重复 |
| runtime erasure | 泛型是否作为运行时值存在 | types 负责 typeof / instanceof 基础语义 | 避免重复 |
| generic method | 泛型方法语法边界 | function 负责方法调用语义 | 避免重复 |
| nested generic | 嵌套泛型语法 | types 负责内置类型行为 | 避免重复 |

## Conclusion

经过逐文件审查，当前 generic 章节的 28 个 .ets 候选用例均正确归属于泛型体系管辖范围。没有发现需要迁移到 function / class / interface / module / TypeScript compatibility 的误放文件。

交叉场景的处理符合 ownership 规则：
- 泛型函数只测试类型参数和类型实参边界，不展开函数调用/参数/return 语义
- 泛型类只测试泛型类边界，不展开 class constructor/成员/继承语义
- 泛型接口只测试泛型接口边界，不展开 interface 成员签名/extends/implements 语义
- 泛型约束只测试约束语法和违反边界，不展开基础类型关系
- 泛型导出只做边界索引，不展开模块解析/绑定/循环依赖
- 运行时擦除只测试泛型是否作为运行时值存在，不展开 typeof/instanceof 运算符全量行为
- 泛型方法只测试泛型方法语法边界，不展开方法调用语义
