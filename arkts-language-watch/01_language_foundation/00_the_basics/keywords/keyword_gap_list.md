# Keyword Gap List

## Summary

| 缺口类型 | 数量 |
|---|---:|
| P0 未覆盖 | 7 |
| P1 未覆盖 | 15 |
| P2 未覆盖 | 5 |
| boundary 待确认 | 10 |
| 需要后续规范比对 | 28 |
| 需要运行验证 | 28 |

## P0 Gaps

| ID | 关键字方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| KW-CTX-001 | contextual_keywords | of 在 for-of 中作上下文关键字 | planned | 生成 pass 用例 |
| KW-CTX-002 | contextual_keywords | as 在 import 中作别名 | planned | 生成 pass 用例 |
| KW-CTX-003 | contextual_keywords | from 在 import 中作来源 | planned | 生成 pass 用例 |
| KW-STRICT-001 | strict_mode_reserved_words | implements 严格模式 fail_compile | planned | 生成 fail_compile 用例 |
| KW-STRICT-003 | strict_mode_reserved_words | package 严格模式 fail_compile | planned | 生成 fail_compile 用例 |
| KW-ARKTS-001 | arkts_dynamic_keywords_boundary | with 语句是否完全禁止 | planned boundary | 确认后生成 boundary 或 fail_compile |
| KW-ARKTS-002 | arkts_dynamic_keywords_boundary | 动态 ArkTS 默认是否严格模式 | planned boundary | 确认后生成 boundary |

## P1 Gaps

| ID | 关键字方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| KW-DECL-007 | declaration_keywords | let 严格模式作标识符 fail_compile | planned | 生成 fail_compile 用例 |
| KW-STMT-007 | statement_keywords | debugger 关键字正常使用 | planned boundary | 确认后生成 boundary 或 pass |
| KW-MOD-003 | module_keywords | from 上下文关键字在 import 中 | planned | 生成 pass 用例 |
| KW-MOD-004 | module_keywords | as 上下文关键字在 import 中 | planned | 生成 pass 用例 |
| KW-MOD-005 | module_keywords | default 上下文关键字在 export 中 | planned | 生成 pass 用例 |
| KW-ASYNC-005 | async_generator_keywords | yield 在非 generator 上下文 fail_compile | planned | 生成 fail_compile 用例 |
| KW-RES-003 | reserved_words | 关键字作参数名 fail_compile | planned | 生成 fail_compile 用例 |
| KW-FUT-002 | future_reserved_words | implements 作标识符（非严格模式） | planned boundary | 确认后生成 |
| KW-FUT-003 | future_reserved_words | interface 作标识符（非严格模式） | planned boundary | 确认后生成 |
| KW-STRICT-005 | strict_mode_reserved_words | protected 严格模式 fail_compile | planned | 生成 fail_compile 用例 |
| KW-STRICT-006 | strict_mode_reserved_words | public 严格模式 fail_compile | planned | 生成 fail_compile 用例 |
| KW-STRICT-007 | strict_mode_reserved_words | static 严格模式 fail_compile | planned | 生成 fail_compile 用例 |
| KW-ID-005 | identifier_boundary | typeof 作变量名 fail_compile | planned | 生成 fail_compile 用例 |
| KW-PROP-001 | property_name_boundary | 关键字作对象属性名 { if: 1 } | planned boundary | 确认后生成 |
| KW-ARKTS-003 | arkts_dynamic_keywords_boundary | 动态 ArkTS 扩展关键字 | planned boundary | 确认后生成 |

## Boundary Pending Confirmation

| 文件路径/测试点 | 原因 | 后续确认方式 |
|---|---|---|
| `xts/boundary/keyword_super_boundary.ets` | 动态 ArkTS class 继承和 super 支持待确认 | compiler / runtime smoke |
| `xts/boundary/keyword_async_function_boundary.ets` | 动态 ArkTS async/await 支持待确认 | compiler |
| `xts/boundary/keyword_await_in_async_boundary.ets` | 动态 ArkTS await 支持待确认 | compiler / runtime |
| `xts/boundary/keyword_yield_contextual_boundary.ets` | 动态 ArkTS generator/yield 支持待确认 | compiler |
| `xts/boundary/keyword_import_export_boundary.ets` | 模块关键字语法和模块支持待确认 | compiler |
| `xts/boundary/keyword_enum_reserved_boundary.ets` | ES 未来保留字 + TS 实现差异 | compiler |
| `xts/boundary/keyword_interface_strict_boundary.ets` | ES 严格保留 + TS 类型声明差异 | compiler |
| `xts/boundary/keyword_private_protected_public_static_boundary.ets` | ES 严格保留 + TS 成员修饰差异 | compiler |
| `xts/boundary/keyword_type_namespace_declare_boundary.ets` | TS 扩展关键字支持待确认 | compiler |
| `xts/boundary/keyword_abstract_readonly_boundary.ets` | TS 扩展关键字支持待确认 | compiler |

## Validation Pending

| 文件路径/测试点 | 需要验证内容 | 建议验证方式 |
|---|---|---|
| 全部 28 个 .ets 文件 | 编译是否通过、运行时行为是否正确 | DevEco / hvigor 编译 + ohosTest 运行 |
| 10 个 boundary 文件 | 支持状态确认 | compiler 检查 + runtime smoke |
| 5 个 fail_compile 文件 | 是否确实产生编译错误 | hvigor 编译验证 |
| 13 个 pass 文件 | 运行时行为是否正确 | ohosTest 运行验证 |

## Mapping Pending

| 测试点 | 需要映射内容 | 后续动作 |
|---|---|---|
| 全部 28 个 .ets 文件 | test262 对应用例映射 | 等主要语言域完成后统一进行 |
| coverage_matrix 93 个测试点 | test262 目录映射 | 等主要语言域完成后统一进行 |
| ES 关键字列表 | ECMA 规范关键字完整性 | 规范比对阶段确认 |
| 严格模式保留字 | ECMA 严格模式规范 | 规范比对阶段确认 |
| 上下文关键字 | ECMA 上下文关键字规则 | 规范比对阶段确认 |
| TS 扩展关键字 | TypeScript 规范兼容差异 | 规范比对阶段确认 |
