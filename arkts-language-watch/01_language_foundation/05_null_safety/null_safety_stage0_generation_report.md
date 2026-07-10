# Null Safety Stage 0 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理目录数量 | 1 |
| 新增/补齐 README 数量 | 1 |
| 新增/补齐 spec_summary 数量 | 1 |
| 新增/补齐 test_design 数量 | 1 |
| 新增/补齐 coverage_matrix 数量 | 1 |
| 新增映射文档数量 | 2 |
| 总覆盖测试点数量 | 92 |
| 首批候选用例数量 | 45 |
| 本次生成 .ets 用例数量 | 0 |

## Generated / Updated Files

| 文件 | 操作 | 说明 |
|---|---|---|
| `README.md` | 替换 | 从通用占位替换为 null safety 体系定位文档，包含子目录结构和看护范围 |
| `spec_summary.md` | 新增 | 18 章节规范摘要，覆盖 null/undefined 基础/相等性/可选链/空值合并/空值赋值/非空断言/可选属性/函数参数/class field/interface/generic/NonNullable/运行时异常/编译期/TS兼容/ArkTS动态 |
| `test_design.md` | 新增 | 13 章节测试设计，覆盖正向/编译负向/运行时异常/可选链/空值合并/函数参数/class interface/generic/TS兼容/跨特性/回归/test262/XTS策略 |
| `coverage_matrix.md` | 新增 | 92 个测试点覆盖矩阵，覆盖 21 类 null safety 方向 × 4-5 测试点 |
| `null_safety_first_batch_candidate_index.md` | 新增 | 45 个首批候选索引，P0 27/P1 18，所有状态为 planned |
| `null_safety_to_feature_mapping.md` | 新增 | null safety 到 types/operators/function/class/interface/generic/typescript_compatibility 的完整映射 |
| `issues/known_issues.md` | 新增 | null safety 体系专用已知问题模板 |
| `issues/fixed_issues.md` | 新增 | null safety 体系专用已修复问题模板 |
| `xts/pass/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_compile/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_runtime/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/regression/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/boundary/.gitkeep` | 新增 | 保留空目录结构 |

## Coverage Summary

| Null Safety 方向 | 覆盖点数量 | 首批候选数量 | 主要风险 |
|---|---:|---:|---|
| null_basic | 5 | 4 | 低风险，ES 核心行为 |
| undefined_basic | 5 | 2 | 低风险，ES 核心行为 |
| null_undefined_equality | 5 | 3 | 低风险 |
| typeof_nullish | 5 | 2 | typeof null "object" 历史遗留 |
| optional_chaining_property | 5 | 4 | 支持待确认 |
| optional_chaining_call | 5 | 2 | 支持待确认 |
| optional_chaining_element | 4 | 1 | 支持待确认 |
| nullish_coalescing | 5 | 4 | 支持待确认 |
| nullish_assignment | 4 | 1 | ??= 支持待确认 |
| non_null_assertion_boundary | 4 | 1 | ! 支持待确认 |
| optional_property | 5 | 1 | 编译期检查待确认 |
| optional_parameter | 5 | 2 | null vs undefined 差异 |
| default_parameter | 5 | 2 | null vs undefined 触发差异 |
| function_return_nullish | 4 | 2 | 低风险 |
| runtime_exception_nullish | 5 | 4 | TypeError 核心风险 |
| class_field_nullish | 4 | 2 | 初始化顺序 |
| interface_optional_member | 4 | 1 | 编译期检查待确认 |
| generic_nonnullable_boundary | 4 | 2 | NonNullable 支持待确认 |
| union_nullish_boundary | 4 | 1 | strict null checks 是否开启 |
| typescript_compatibility_boundary | 4 | 1 | TS 兼容状态 |
| arkts_dynamic_boundary | 4 | 2 | 动态/静态差异 |

## Cross Feature Mapping Summary

| 关联章节 | 映射关系 | 后续动作 |
|---|---|---|
| 00_the_basics/types | null/undefined 类型识别归 types；空值安全角度归 null_safety | null_safety 生成空值安全用例；types 做类型识别 |
| 00_the_basics/operators | 可选链/空值合运算符归 operators；空值安全场景归 null_safety | null_safety 做空值安全组合；operators 做运算符 |
| 01_function | 可选参数/默认参数空值边界归 null_safety；函数调用归 function | null_safety 做空值边界；function 做调用 |
| 02_class | class field null 归 null_safety；class 语义归 class | null_safety 做字段空值；class 做成员 |
| 03_interface | 可选属性空值边界归 null_safety；interface 语义归 interface | null_safety 做空值边界；interface 做成员 |
| 04_generic | NonNullable 边界归 null_safety；泛型规则归 generic | null_safety 做边界；generic 做泛型 |
| typescript_compatibility | strict null/非空断言边界归 null_safety；详细差异归 TS compat | null_safety 做边界；TS compat 做详细 |

## Notes

- 本阶段只做 null safety 体系看护设计，不生成 XTS 用例。
- 本章节面向鸿蒙动态 ArkTS，不按静态 ArkTS checker 体系展开。
- Null Safety 是 types/operators/function/class/interface/generic/TS compatibility 的空值安全视角入口。
- null 和 undefined 在 ECMAScript 运行时有真实语义，本目录同时覆盖运行时行为和 TS/ArkTS 类型边界。
- 后续 Null Safety Stage 1 可生成 P0/P1 XTS 候选。
- 本阶段未提交 commit，未 push 远程仓库。
- 05_null_safety 已有 3 个子目录（optional_chaining/null_coalescing_operator/non_null_assertion_operator），当前为 placeholder，后续可在 Stage 1 填充。
