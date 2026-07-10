# This Keyword Stage 0 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理目录数量 | 1 |
| 新增/补齐 README 数量 | 1 |
| 新增/补齐 spec_summary 数量 | 1 |
| 新增/补齐 test_design 数量 | 1 |
| 新增/补齐 coverage_matrix 数量 | 1 |
| 新增映射文档数量 | 2 |
| 总覆盖测试点数量 | 95 |
| 首批候选用例数量 | 45 |
| 本次生成 .ets 用例数量 | 0 |

## Generated / Updated Files

| 文件 | 操作 | 说明 |
|---|---|---|
| `README.md` | 替换 | 从通用占位替换为 this keyword 体系定位文档，包含看护范围表格和章节关系 |
| `spec_summary.md` | 替换 | 从通用占位替换为 23 章节规范摘要，覆盖 global/module/function/method/arrow/call-apply-bind/class/derived/static/getter-setter/extracted/callback/strict/this parameter/polymorphic this |
| `test_design.md` | 替换 | 从通用占位替换为 17 章节测试设计，覆盖正向/编译负向/运行时异常/function/method/arrow/call-apply-bind/class/static/derived/getter-setter/callback/TS兼容/跨特性/回归/test262/XTS策略 |
| `coverage_matrix.md` | 替换 | 从单行占位替换为 95 个测试点覆盖矩阵，覆盖 21 类 this keyword 方向 × 4-5 测试点 |
| `this_keyword_first_batch_candidate_index.md` | 新增 | 45 个首批候选索引，P0 25/P1 20，所有状态为 planned |
| `this_keyword_to_feature_mapping.md` | 新增 | this keyword 到 function/class/module/operators/typescript_compatibility 的完整映射 |
| `issues/known_issues.md` | 替换 | 从通用占位替换为 this keyword 体系专用已知问题模板 |
| `issues/fixed_issues.md` | 替换 | 从通用占位替换为 this keyword 体系专用已修复问题模板 |
| `xts/pass/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_compile/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_runtime/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/regression/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/boundary/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/helpers/.gitkeep` | 新增 | 保留空目录结构 |

## Coverage Summary

| This Keyword 方向 | 覆盖点数量 | 首批候选数量 | 主要风险 |
|---|---:|---:|---|
| global_this_boundary | 5 | 1 | 模块模式待确认 |
| module_top_level_this | 5 | 1 | 模块模式待确认 |
| function_call_this | 5 | 2 | strict/非 strict 差异；嵌套函数 this 丢失 |
| method_call_this | 5 | 2 | 方法提取 this 丢失 |
| arrow_lexical_this | 5 | 4 | call/bind 不改变箭头 this |
| nested_function_this | 5 | 0 | this 传播；闭包捕获 |
| call_apply_bind_this | 5 | 4 | bind 永久绑定；call null |
| object_literal_method_this | 5 | 1 | 箭头属性捕获外层 |
| class_constructor_this | 5 | 2 | 字段初始化顺序 |
| class_instance_method_this | 5 | 2 | 方法提取 this 丢失 |
| class_field_this_boundary | 5 | 1 | 初始化顺序与 this |
| derived_class_this_super_boundary | 5 | 2 | super 前使用 this ReferenceError |
| static_this | 5 | 2 | static 字段 this |
| getter_setter_this | 5 | 2 | accessor this 绑定 |
| extracted_method_this | 5 | 1 | 经典 bug |
| callback_this_boundary | 5 | 3 | callback this 丢失；箭头/bind 修复 |
| strict_mode_this_boundary | 5 | 2 | strict/非 strict/模块自动 strict |
| this_parameter_boundary | 5 | 1 | TS 特性支持待确认 |
| this_type_boundary | 5 | 1 | polymorphic this 支持待确认 |
| typescript_compatibility_boundary | 4 | 1 | TS 兼容状态 |
| arkts_dynamic_boundary | 4 | 2 | 动态/静态差异 |

## Cross Feature Mapping Summary

| 关联章节 | 映射关系 | 后续动作 |
|---|---|---|
| 01_function | this 绑定归 this_keyword；函数调用归 function | this_keyword 生成 this 绑定用例；function 做调用 |
| 02_class | class this 边界归 this_keyword；class 语义归 class | this_keyword 生成 class this 用例；class 做成员 |
| 06_module | module top-level this 归 this_keyword；模块归 module | this_keyword 做边界；module 做模块 |
| 00_the_basics/operators | this 绑定结果归 this_keyword；表达式归 operators | this_keyword 做 this 结果；operators 做求值 |
| typescript_compatibility | this parameter/type 边界归 this_keyword；详细差异归 TS compat | this_keyword 做边界；TS compat 做详细 |

## Notes

- 本阶段只做 this keyword 体系看护设计，不生成 XTS 用例。
- 本章节面向鸿蒙动态 ArkTS，不按静态 ArkTS checker 体系展开。
- This Keyword 是 function/class/module/operators/TS compatibility 的 this 绑定视角入口。
- this 是 ECMAScript 原生语言能力，有真实运行时语义。
- 后续 This Keyword Stage 1 可生成 P0/P1 XTS 候选。
- 本阶段未提交 commit，未 push 远程仓库。
