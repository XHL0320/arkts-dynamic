# Declaration Stage 0 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理目录数量 | 1 |
| 新增/补齐 README 数量 | 1 |
| 新增/补齐 spec_summary 数量 | 1 |
| 新增/补齐 test_design 数量 | 1 |
| 新增/补齐 coverage_matrix 数量 | 1 |
| 新增映射文档数量 | 2 |
| 总覆盖测试点数量 | 70 |
| 首批候选用例数量 | 40 |
| 本次生成 .ets 用例数量 | 0 |

## Generated / Updated Files

| 文件 | 操作 | 说明 |
|---|---|---|
| `README.md` | 替换 | 从通用占位替换为声明体系定位文档，包含看护范围表格和章节关系说明 |
| `spec_summary.md` | 替换 | 从通用占位替换为完整 14 章节规范摘要，覆盖 var/let/const/function/class/import/export 绑定、提升、TDZ、重复声明、初始化、模块作用域、ArkTS 动态差异 |
| `test_design.md` | 替换 | 从通用占位替换为 9 章节测试设计，覆盖正向、编译期、运行时、边界、跨特性、跨模块、回归、test262 映射、XTS 策略 |
| `coverage_matrix.md` | 替换 | 从单行占位替换为 70 个测试点覆盖矩阵，覆盖 8 类声明 × 5+ 测试点 |
| `declaration_first_batch_candidate_index.md` | 新增 | 40 个首批候选索引，P0 20/P1 15/P2 5，所有状态为 planned |
| `declaration_to_feature_mapping.md` | 新增 | 声明体系到 function/class/interface/module/annotation/builtin 的完整映射，包含 ownership 规则和重复避免规则 |
| `issues/known_issues.md` | 替换 | 从通用占位替换为声明体系专用已知问题模板 |
| `issues/fixed_issues.md` | 替换 | 从通用占位替换为声明体系专用已修复问题模板 |
| `xts/pass/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_compile/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_runtime/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/regression/.gitkeep` | 新增 | 保留空目录结构 |

## Coverage Summary

| 声明类型 | 覆盖点数量 | 首批候选数量 | 主要风险 |
|---|---:|---:|---|
| var | 12 | 5 | 动态 ArkTS 是否允许 var；模块 vs 脚本全局行为差异 |
| let | 8 | 4 | TDZ ReferenceError；typeof 不绕过 TDZ |
| const | 9 | 4 | const 无初始化 SyntaxError；const 重新赋值 TypeError vs compile error |
| function | 7 | 6 | 块级函数声明严格/非严格模式差异；函数声明与 var 同名边界 |
| class | 7 | 5 | TDZ ReferenceError；class + let/var 同名冲突 |
| import | 7 | 5 | live binding 实现需确认；循环依赖 TDZ 边界 |
| export | 6 | 4 | 重复导出 SyntaxError；非模块顶层位置限制 |
| annotation | 3 | 2 | ArkTS 扩展声明不在 ES 规范内；装饰器与声明交互 |
| enum | 2 | 2 | TypeScript 扩展声明绑定语义待确认 |
| cross/模块/作用域 | 10 | 8 | 嵌套作用域组合；var+function 初始化顺序 |

## Cross Feature Mapping Summary

| 关联章节 | 映射关系 | 后续动作 |
|---|---|---|
| 01_function | function declaration hoisting / duplicate / block-level 归 declarations；函数调用/参数/return/arguments/this 归 function | declarations 生成 P0 声明提升用例；function 章节做集成引用 |
| 02_class | class declaration TDZ/duplicate 归 declarations；class 成员语义归 class | declarations 生成 P0 TDZ 用例；class 章节做集成引用 |
| 06_module | import/export 声明绑定归 declarations；模块解析归 module | declarations 生成 P0 binding 用例；module 章节做集成 |
| 08_annotation | annotation 声明形态映射归 declarations；字段/retention/target 归 annotation | declarations 做映射说明；annotation 章节做实际用例 |
| 08_decorator_annotation | 装饰器与声明绑定交互归 declarations boundary | boundary 用例确认装饰器不影响声明绑定 |

## Notes

- 本阶段只做声明体系看护设计，不生成 XTS 用例。
- 本章节面向鸿蒙动态 ArkTS，不按静态 ArkTS checker 体系展开。
- declarations 是 Function / Class / Module / Annotation 等章节的底层声明规则入口。
- 后续可先生成 declarations P0 用例，再回到 Function Stage 1。
- 本阶段未提交 commit，未 push 远程仓库。
