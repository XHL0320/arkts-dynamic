# This Keyword Gap List

## Summary

| 缺口类型 | 数量 |
|---|---:|
| P0 未覆盖 | 4 |
| P1 未覆盖 | 10 |
| P2 未覆盖 | 0 |
| boundary 待确认 | 15 |
| 需要后续 TypeScript / ArkTS 兼容比对 | 35 |
| 需要 ECMA / test262 比对 | 20 |
| 需要编译验证 | 35 |
| 需要运行验证 | 35 |

## P0 Gaps

| ID | This Keyword 方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| TK-GLB-001 | global_this_boundary | 全局 this 脚本模式 | planned boundary | 确认后生成 boundary |
| TK-GLB-002 | global_this_boundary | globalThis 访问 | planned | 生成 pass 用例 |
| TK-DCS-001 | derived_class_this_super_boundary | super() 前使用 this | created boundary | 编译验证确认 ReferenceError |
| TK-DCS-003 | derived_class_this_super_boundary | super() 前访问 this 字段 | planned fail_runtime | 确认后生成 fail_runtime 或 boundary |

## P1 Gaps

| ID | This Keyword 方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| TK-FUNC-003 | function_call_this | IIFE 中 this | planned boundary | 确认后生成 |
| TK-MTHD-003 | method_call_this | 原型方法 this | planned | 生成 pass 用例 |
| TK-ARR-005 | arrow_lexical_this | 箭头在对象字面量中 | planned boundary | 确认后生成 |
| TK-NST-002 | nested_function_this | var self = this 模式 | planned | 生成 pass 用例 |
| TK-NST-005 | nested_function_this | 闭包中 this 捕获 | planned boundary | 确认后生成 |
| TK-CAB-005 | call_apply_bind_this | call 传 null/undefined | planned boundary | 确认后生成 |
| TK-OLM-003 | object_literal_method_this | 箭头函数属性 this | planned boundary | 确认后生成 |
| TK-CF-003 | class_field_this_boundary | 实例字段箭头函数 this | planned boundary | 确认后生成 |
| TK-EM-004 | extracted_method_this | 解构赋值方法 this | planned boundary | 确认后生成 |
| TK-CB-004 | callback_this_boundary | forEach callback this | planned boundary | 确认后生成 |

## Boundary Pending Confirmation

| 文件路径/测试点 | 原因 | 后续确认方式 |
|---|---|---|
| `this_function_strict_mode_boundary.ets` | strict/非 strict 差异待确认 | runtime smoke |
| `this_extracted_method_boundary.ets` | this 变为 undefined/globalThis 待确认 | runtime smoke |
| `this_nested_normal_function_boundary.ets` | 内层函数 this 与外层不同 | runtime smoke |
| `this_bind_ignores_later_call_boundary.ets` | bind 永久绑定行为待确认 | runtime smoke |
| `this_accessor_extracted_boundary.ets` | accessor 提取 this 行为 | runtime smoke |
| `this_class_field_initializer_boundary.ets` | 字段初始化中 this 行为待确认 | runtime smoke |
| `this_derived_before_super_boundary.ets` | ReferenceError 行为待确认 | runtime smoke / compiler |
| `this_derived_constructor_return_boundary.ets` | 返回对象影响 this | runtime smoke |
| `this_static_field_initializer_boundary.ets` | static 字段中 this 为类构造器 | runtime smoke |
| `this_static_inheritance_boundary.ets` | 继承链中 static this | runtime smoke |
| `this_callback_boundary.ets` | callback 丢失 receiver | runtime smoke |
| `this_module_top_level_boundary.ets` | 模块模式 this 为 undefined | runtime smoke |
| `this_parameter_boundary.ets` | TS 特性支持待确认 | compiler |
| `this_return_type_boundary.ets` | polymorphic this 支持待确认 | compiler |
| `this_polymorphic_this_boundary.ets` | 继承链多态 this | compiler |

## Validation Pending

| 文件路径/测试点 | 需要验证内容 | 建议验证方式 |
|---|---|---|
| 全部 35 个 .ets 文件 | 编译是否通过、this 行为是否正确 | DevEco / hvigor 编译 |
| 16 个 pass 文件 | this 绑定运行时行为是否正确 | ohosTest 运行验证 |
| 15 个 boundary 文件 | 支持状态确认 | compiler 检查 + runtime smoke |
| 4 个 regression 文件 | 回归行为是否正确 | ohosTest 运行验证 |

## Mapping Pending

| 测试点 | 需要映射内容 | 后续动作 |
|---|---|---|
| 全部 35 个 .ets 文件 | ECMA this 绑定规范映射 | 等主要语言域完成后统一进行 |
| coverage_matrix 95 个测试点 | TypeScript/ArkTS this 兼容差异映射 | 等主要语言域完成后统一进行 |
| 箭头函数 lexical this | ECMA2015 arrow function this 规范 | 规范比对阶段确认 |
| derived super/this | ECMA2015 class derived constructor this 规范 | 规范比对阶段确认 |
| this parameter | TypeScript this parameter 规范 | 规范比对阶段确认 |
| polymorphic this | TypeScript polymorphic this 规范 | 规范比对阶段确认 |
