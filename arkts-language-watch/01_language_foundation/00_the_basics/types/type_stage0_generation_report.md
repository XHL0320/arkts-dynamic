# Type Stage 0 Generation Report

## Summary

| 项目 | 数量 |
|---|---:|
| 处理目录数量 | 1 |
| 新增/补齐 README 数量 | 1 |
| 新增/补齐 spec_summary 数量 | 1 |
| 新增/补齐 test_design 数量 | 1 |
| 新增/补齐 coverage_matrix 数量 | 1 |
| 新增映射文档数量 | 2 |
| 总覆盖测试点数量 | 91 |
| 首批候选用例数量 | 40 |
| 本次生成 .ets 用例数量 | 0 |

## Generated / Updated Files

| 文件 | 操作 | 说明 |
|---|---|---|
| `README.md` | 替换 | 从通用占位替换为类型体系定位文档，包含看护范围表格和章节关系说明 |
| `spec_summary.md` | 替换 | 从通用占位替换为完整 15 章节规范摘要，覆盖 primitive/object/null/undefined/number/bigint/string/boolean/symbol/typeof/instanceof/转换/TS兼容/ArkTS动态/错误条件 |
| `test_design.md` | 替换 | 从通用占位替换为 9 章节测试设计，覆盖正向、编译期、运行时、边界、跨特性、跨模块、回归、test262 映射、XTS 策略 |
| `coverage_matrix.md` | 替换 | 从单行占位替换为 91 个测试点覆盖矩阵，覆盖 13 类类型方向 × 5+ 测试点 |
| `type_first_batch_candidate_index.md` | 新增 | 40 个首批候选索引，P0 22/P1 16/P2 2，所有状态为 planned |
| `type_to_feature_mapping.md` | 新增 | 类型体系到 operators/function/class/builtin API/typescript_compatibility 的完整映射，包含 ownership 规则和重复避免规则 |
| `issues/known_issues.md` | 替换 | 从通用占位替换为类型体系专用已知问题模板 |
| `issues/fixed_issues.md` | 替换 | 从通用占位替换为类型体系专用已修复问题模板 |
| `xts/pass/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_compile/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/fail_runtime/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/regression/.gitkeep` | 新增 | 保留空目录结构 |
| `xts/boundary/.gitkeep` | 新增 | 保留空目录结构（边界用例目录） |

## Coverage Summary

| 类型方向 | 覆盖点数量 | 首批候选数量 | 主要风险 |
|---|---:|---:|---|
| number | 8 | 4 | NaN !== NaN；0 === -0；MAX_SAFE_INTEGER |
| string | 7 | 1 | 不可变性；空字符串 falsy |
| boolean | 6 | 3 | Boolean([])/Boolean({}) 为 true 常见误判 |
| bigint | 8 | 3 | number + bigint TypeError；混合运算边界 |
| symbol | 6 | 2 | Symbol() 唯一性；Symbol.iterator 支持 |
| null_undefined | 7 | 2 | typeof null "object" 历史遗留；null==undefined |
| object | 6 | 1 | Number({}) NaN；Boolean({}) true |
| array | 6 | 1 | typeof "object"；Number([]) 0；Boolean([]) true |
| function_object | 6 | 1 | typeof "function"；class typeof "function" |
| typeof | 8 | 6 | 未声明变量不抛 ReferenceError；TDZ 仍抛 ReferenceError |
| instanceof | 7 | 3 | 右侧非函数 TypeError；Symbol.hasInstance 自定义 |
| conversion | 8 | 4 | ToBoolean/ToNumber/ToString 转换规则；ToPrimitive 边界 |
| typescript_type_syntax | 8 | 5 | TS 类型语法兼容状态全部待确认 |

## Cross Feature Mapping Summary

| 关联章节 | 映射关系 | 后续动作 |
|---|---|---|
| 00_the_basics/operators | typeof/instanceof 语义归 types；运算符全量行为归 operators | types 生成 P0 typeof/instanceof 用例；operators 做运算符集成 |
| 01_function | function object 类型识别归 types；函数调用/参数/return/closure 归 function | types 生成 typeof function 用例；function 做函数语义 |
| 02_class | class instance instanceof 归 types；class 成员/constructor/继承归 class | types 生成 instanceof class 用例；class 做 class 语义 |
| builtin_api_watch | array 类型识别归 types；Array 方法行为归 builtin | types 生成 typeof array/Array.isArray 用例；builtin 做方法 |
| typescript_compatibility | TS 类型语法边界索引归 types；详细兼容差异归 typescript_compatibility | types 做边界确认；typescript_compatibility 做详细映射 |

## Notes

- 本阶段只做类型体系看护设计，不生成 XTS 用例。
- 本章节面向鸿蒙动态 ArkTS，不按静态 ArkTS checker 体系展开。
- types 是 operators / function / class / builtin API 的底层类型语义入口。
- 后续 Types Stage 1 可生成 P0 用例。
- 本阶段未提交 commit，未 push 远程仓库。
- 本阶段未执行 ECMA / test262 比对。
- 本阶段未执行编译运行验证。
