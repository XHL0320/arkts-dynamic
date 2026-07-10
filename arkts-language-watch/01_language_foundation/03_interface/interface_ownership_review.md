# Interface Ownership Review

## Purpose

本文件用于确认 `03_interface` 章节只负责 interface 声明、成员签名、extends、implements、结构兼容和运行时擦除边界，避免把 class / function / generic / module / TypeScript compatibility 的完整语义误归入 interface。

## Ownership Rule

| 规则类型 | 主归属目录 | Interface 中处理方式 |
|---|---|---|
| interface declaration | `03_interface` | 主负责 |
| property / method signature | `03_interface` | 主负责 |
| optional / readonly member boundary | `03_interface` | 主负责边界 |
| interface extends | `03_interface` | 主负责 |
| class implements interface | `03_interface` + `02_class` | interface 负责 implements 契约边界，class 负责 class 语义 |
| object structural compatibility | `03_interface` + `types` | interface 负责结构兼容边界，types 负责运行时类型识别 |
| interface runtime erasure | `03_interface` | 主负责边界 |
| declarations / scope / duplicate base rules | `00_the_basics/declarations` | interface 不展开基础绑定 |
| function call / params / return / closure | `01_function` | interface 不展开函数运行语义 |
| class constructor / member / inheritance / super | `02_class` | interface 不展开 class 完整语义 |
| generic parameters / constraints / defaults | `04_generic` | interface 只做 generic interface boundary |
| module import/export resolution | `06_module` | interface 只做 export/import boundary |
| TS interface compatibility full mapping | `02_typescript_compatibility` | interface 做核心语言看护，详细差异后续归 TS compatibility |

## Potential Misplaced Cases

| 文件路径 | 测试点 | 是否疑似误放 interface | 建议处理 |
|---|---|---|---|
| `xts/pass/interface_method_signature_pass.ets` | interface 方法签名 + class 实现 | 否 | keep_as_interface — 测试 interface 签名和 implements 契约，不测试函数调用语义 |
| `xts/pass/interface_class_implements_pass.ets` | class implements interface | 否 | keep_as_interface — 测试 implements 契约边界，class 构造/成员语义归 class |
| `xts/pass/interface_class_implements_optional_member_pass.ets` | class 实现可选成员 | 否 | keep_as_interface — 测试可选成员 implements 契约 |
| `xts/boundary/interface_class_missing_required_member_boundary.ets` | class 缺少必选成员 | 否 | keep_as_interface_boundary — 测试 implements enforcement 边界 |
| `xts/boundary/interface_class_implements_method_signature_boundary.ets` | class 方法签名匹配 | 否 | keep_as_interface_boundary — 测试签名兼容边界 |
| `xts/boundary/interface_method_parameter_type_boundary.ets` | 方法参数类型兼容 | 否 | keep_as_interface_boundary — 测试签名参数类型边界，不测试函数调用 |
| `xts/boundary/interface_generic_boundary.ets` | generic interface | 否 | keep_as_interface_boundary — 测试 generic interface 语法边界，泛型全量归 generic |
| `xts/boundary/interface_export_boundary.ets` | interface 导出 | 否 | keep_as_interface_boundary — 测试导出语法边界，模块解析归 module |
| `xts/boundary/interface_typeof_boundary.ets` | typeof interface | 否 | keep_as_interface_boundary — 测试 interface 运行时擦除边界 |
| `xts/boundary/interface_runtime_value_boundary.ets` | interface 运行时值 | 否 | keep_as_interface_boundary — 测试运行时擦除边界 |

**结论：未发现疑似误放文件。** 所有 27 个 .ets 文件均正确归属于 interface 章节管辖范围。

## Cross Feature Ownership

| 交叉点 | Interface 负责 | 关联章节负责 | 说明 |
|---|---|---|---|
| class implements | interface 契约和缺失成员边界 | class 负责构造、继承、成员初始化 | 避免重复 |
| method signature | 签名兼容边界 | function 负责调用、参数、return 运行语义 | 避免重复 |
| generic interface | interface 语法边界 | generic 负责泛型完整语义 | 避免重复 |
| export/import interface | interface 边界索引 | module 负责解析、绑定、循环依赖 | 避免重复 |
| runtime erasure | interface 是否作为运行时值存在 | types 负责 typeof / instanceof 基础语义 | 避免重复 |
| duplicate interface | interface 合并/重复边界 | declarations 负责基础重复声明规则 | 避免重复 |
| structural typing | 结构兼容边界 | types 负责运行时类型识别 | 避免重复 |
| index/call/construct signature | 签名语法边界 | typescript_compatibility 负责详细差异 | 避免重复 |

## Conclusion

经过逐文件审查，当前 interface 章节的 27 个 .ets 候选用例均正确归属于接口体系管辖范围。没有发现需要迁移到 class / function / generic / module / TypeScript compatibility 的误放文件。

交叉场景的处理符合 ownership 规则：
- class implements 只测试 interface 契约和缺失成员边界，不展开 class 构造/成员/继承语义
- 方法签名只测试签名兼容边界，不展开函数调用/参数/return 语义
- generic interface 只做语法边界，不展开泛型参数/约束/默认类型语义
- export/import 只做边界索引，不展开模块解析/绑定/循环依赖
- runtime erasure 只测试 interface 运行时擦除边界，不展开 typeof/instanceof 运算符全量行为
- 结构兼容只测试结构匹配边界，不展开运行时类型识别全量行为
