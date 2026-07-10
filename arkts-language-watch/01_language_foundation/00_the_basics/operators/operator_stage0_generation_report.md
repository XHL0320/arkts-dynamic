# Operator Stage 0 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理目录数量 | 1 |
| 新增/补齐 README 数量 | 1 |
| 新增/补齐 spec_summary.md 数量 | 1 |
| 新增/补齐 test_design.md 数量 | 1 |
| 新增/补齐 coverage_matrix.md 数量 | 1 |
| 新增映射文档数量 | 1 |
| 总覆盖测试点数量 | 114 |
| 首批候选用例数量 | 52 |
| 本次生成 .ets 用例数量 | 0 |

## Generated / Updated Files

| 文件 | 操作 | 说明 |
|---|---|---|
| `README.md` | 更新 | 替换通用占位为 operators 章节定位、看护范围和资产结构 |
| `spec_summary.md` | 更新 | 补齐 ECMAScript 运算符语义、求值顺序、转换、异常和 pending questions |
| `test_design.md` | 更新 | 补齐 pass / fail_compile / fail_runtime / boundary / regression / mapping / XTS 策略 |
| `coverage_matrix.md` | 更新 | 生成 19 个运算符方向、114 个覆盖测试点 |
| `operator_first_batch_candidate_index.md` | 新增 | 生成 52 个 P0/P1 首批 planned 候选 |
| `operator_to_feature_mapping.md` | 新增 | 明确与 types / declarations / function / class / statements / builtin API 的 ownership |
| `issues/known_issues.md` | 更新 | 补齐 operators 专属 known issues 模板 |
| `issues/fixed_issues.md` | 更新 | 补齐 operators 专属 fixed issues 模板 |
| `xts/pass/.gitkeep` | 新增/保留 | 保留后续 pass 用例目录 |
| `xts/fail_compile/.gitkeep` | 新增/保留 | 保留后续 fail_compile 用例目录 |
| `xts/fail_runtime/.gitkeep` | 新增/保留 | 保留后续 fail_runtime 用例目录 |
| `xts/regression/.gitkeep` | 新增/保留 | 保留后续 regression 用例目录 |
| `xts/boundary/.gitkeep` | 新增 | 保留后续 boundary 用例目录 |

## Coverage Summary

| 运算符方向 | 覆盖点数量 | 首批候选数量 | 主要风险 |
|---|---:|---:|---|
| arithmetic | 6 | 7 | number/bigint 混合、string + 拼接、NaN/Infinity |
| equality | 6 | 5 | `==` 转换、`===`、NaN、object identity |
| relational | 6 | 3 | NaN 比较、string/number/bigint 比较分支 |
| logical | 6 | 3 | 短路、返回原始操作数、truthy/falsy |
| bitwise | 6 | 5 | ToInt32、移位、无符号右移 |
| assignment | 6 | 2 | PutValue、非法 target、求值顺序 |
| compound_assignment | 6 | 2 | 左侧引用只求值一次、复合转换 |
| unary | 6 | 0 | typeof/delete/void/unary conversion 后续补候选 |
| update | 6 | 3 | 前置/后置、自增非法 target |
| conditional | 6 | 2 | 分支求值、truthy/falsy |
| comma | 6 | 1 | 求值顺序、最后值 |
| optional_chaining | 6 | 4 | 短路、调用、非法赋值 |
| nullish_coalescing | 6 | 2 | nullish 与 falsy 差异 |
| instanceof | 6 | 2 | callable RHS、prototype chain |
| in_operator | 6 | 2 | RHS 非对象 TypeError、原型属性 |
| delete_operator | 6 | 2 | binding/property 删除边界 |
| typeof_operator | 6 | 3 | 未声明变量、TDZ、类型标签 |
| new_operator | 6 | 2 | constructor / non-constructor 边界 |
| await_yield_boundary | 6 | 2 | async/generator 支持边界 |

## Cross Feature Mapping Summary

| 关联章节 | 映射关系 | 后续动作 |
|---|---|---|
| `00_the_basics/types` | types 负责基础类型识别，operators 负责表达式运算语义 | Stage 1 避免重复 typeof/instanceof 基础 smoke，聚焦边界和求值 |
| `00_the_basics/declarations` | declarations 负责 binding/TDZ/readonly，operators 负责 assignment/delete/typeof 交叉表达式 | 对 const/import binding 用例标明主归属 |
| `01_function` | function 负责调用语义，operators 负责 optional call short-circuit | 可选链调用用例需与 function 联动 |
| `02_class` | class 负责构造/继承/成员，operators 负责 instanceof/new 表达式边界 | class 集成后补复杂 prototype 场景 |
| `statements` | statements 负责控制流语句，operators 负责 `?:` 条件表达式 | 避免把 if/for/switch 放入 operators |
| `builtin_api_watch` | builtin 负责方法行为，operators 负责抽象转换触发的表达式语义 | 不展开 Array/String/Number 方法全集 |

## Notes

- 本阶段只做运算符体系看护设计，不生成 XTS 用例。
- 本章节面向鸿蒙动态 ArkTS，不按静态 ArkTS checker 体系展开。
- operators 是 types / function / class / statements / builtin API 的表达式运算语义入口。
- 后续 Operators Stage 1 可生成 P0/P1 XTS 候选。
- 本阶段未进行 ECMA / test262 规范比对。
- 本阶段未进行 DevEco / hvigor / ohosTest 编译运行验证。
- 本阶段未提交 commit，未 push 远程仓库。
