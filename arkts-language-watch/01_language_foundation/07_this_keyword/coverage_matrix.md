# This Keyword Coverage Matrix

| Coverage ID | This Keyword 方向 | 测试点 | 用例类型 | 优先级 | Coverage Status | Case ID | Actual Path | Validation Status | 关联章节 | 风险点 | 备注 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| TK-GLB-001 | global_this_boundary | 全局 this 脚本模式 | boundary | P0 | planned | — | — | planned | this_keyword / module | 中 | 模块模式待确认 |
| TK-GLB-002 | global_this_boundary | globalThis 访问 | pass | P0 | planned | — | — | planned | this_keyword / types | 低 | ES 核心行为 |
| TK-GLB-003 | global_this_boundary | 全局 this 严格模式 | boundary | P1 | planned | — | — | planned | this_keyword | 中 | strict 差异 |
| TK-GLB-004 | global_this_boundary | globalThis 属性读写 | pass | P2 | planned | — | — | planned | this_keyword / types | 低 | 属性访问 |
| TK-GLB-005 | global_this_boundary | globalThis 跨模块一致 | boundary | P2 | planned | — | — | planned | this_keyword / module | 中 | 跨模块 |
| TK-MOD-001 | module_top_level_this | 模块顶层 this 为 undefined | boundary | P0 | generated | THIS-BOUND-009 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_module_top_level_boundary.ets | spec_pending | this_keyword / module | 高 | 模块模式待确认 |
| TK-MOD-002 | module_top_level_this | 模块顶层 this vs 脚本 this | boundary | P1 | planned | — | — | planned | this_keyword / module | 中 | 模式差异 |
| TK-MOD-003 | module_top_level_this | 模块顶层 this 赋值 | boundary | P2 | planned | — | — | planned | this_keyword | 低 | 赋值行为 |
| TK-MOD-004 | module_top_level_this | 模块函数 this | boundary | P1 | planned | — | — | planned | this_keyword / function | 中 | 函数 this |
| TK-MOD-005 | module_top_level_this | 模块箭头 this | boundary | P1 | planned | — | — | planned | this_keyword / function | 中 | 箭头捕获 |
| TK-FUNC-001 | function_call_this | 普通函数调用 strict this | pass | P0 | generated | THIS-PASS-009 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_function_call_basic_pass.ets | validation_pending | this_keyword / function | 低 | ES 核心行为 |
| TK-FUNC-002 | function_call_this | 普通函数调用非 strict this | boundary | P0 | generated | THIS-BOUND-008 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_function_strict_mode_boundary.ets | spec_pending | this_keyword / function | 中 | globalThis |
| TK-FUNC-003 | function_call_this | IIFE 中 this | boundary | P1 | planned | — | — | planned | this_keyword / function | 中 | IIFE |
| TK-FUNC-004 | function_call_this | 函数表达式 this | pass | P1 | planned | — | — | planned | this_keyword / function | 低 | 函数表达式 |
| TK-FUNC-005 | function_call_this | 嵌套普通函数 this 丢失 | boundary | P0 | generated | THIS-BOUND-010 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_nested_normal_function_boundary.ets | spec_pending | this_keyword / function | 高 | 经典 bug |
| TK-MTHD-001 | method_call_this | obj.method() this | pass | P0 | generated | THIS-PASS-011, THIS-PASS-012 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_method_call_receiver_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_method_receiver_update_pass.ets | validation_pending | this_keyword / function | 低 | ES 核心行为 |
| TK-MTHD-002 | method_call_this | 链式调用 this | pass | P0 | planned | — | — | planned | this_keyword / function | 低 | 链式 receiver |
| TK-MTHD-003 | method_call_this | 原型方法 this | pass | P1 | planned | — | — | planned | this_keyword / class | 低 | 原型链 |
| TK-MTHD-004 | method_call_this | 计算属性方法 this | pass | P1 | planned | — | — | planned | this_keyword / function | 低 | 计算属性 |
| TK-MTHD-005 | method_call_this | 方法提取后 this 丢失 | boundary | P0 | generated | THIS-BOUND-007 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_extracted_method_boundary.ets | spec_pending | this_keyword / function | 高 | 经典 bug |
| TK-ARR-001 | arrow_lexical_this | 箭头函数捕获外层 this | pass | P0 | generated | THIS-PASS-002, THIS-REGR-001 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_arrow_lexical_this_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_arrow_lexical_regression.ets | validation_pending | this_keyword / function | 低 | ES2015 |
| TK-ARR-002 | arrow_lexical_this | 嵌套箭头保持 this | pass | P0 | generated | THIS-PASS-013, THIS-REGR-001 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_nested_arrow_preserves_this_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_arrow_lexical_regression.ets | validation_pending | this_keyword / function | 低 | 多层捕获 |
| TK-ARR-003 | arrow_lexical_this | call 不能改变箭头 this | pass | P0 | planned | — | — | planned | this_keyword / function | 低 | call 无效 |
| TK-ARR-004 | arrow_lexical_this | bind 不能改变箭头 this | pass | P0 | planned | — | — | planned | this_keyword / function | 低 | bind 无效 |
| TK-ARR-005 | arrow_lexical_this | 箭头函数在对象字面量中 | boundary | P1 | planned | — | — | planned | this_keyword / function | 中 | 捕获外层 |
| TK-NST-001 | nested_function_this | 嵌套普通函数 this | boundary | P0 | generated | THIS-BOUND-010 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_nested_normal_function_boundary.ets | spec_pending | this_keyword / function | 高 | this 丢失 |
| TK-NST-002 | nested_function_this | var self = this 模式 | pass | P1 | planned | — | — | planned | this_keyword / function | 低 | 经典模式 |
| TK-NST-003 | nested_function_this | 嵌套箭头 vs 嵌套普通 | pass | P1 | generated | THIS-BOUND-010 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_nested_normal_function_boundary.ets | spec_pending | this_keyword / function | 低 | 对比 |
| TK-NST-004 | nested_function_this | 多层嵌套 this 传播 | boundary | P2 | planned | — | — | planned | this_keyword / function | 中 | 深层嵌套 |
| TK-NST-005 | nested_function_this | 闭包中 this 捕获 | boundary | P1 | planned | — | — | planned | this_keyword / function | 中 | 闭包 |
| TK-CAB-001 | call_apply_bind_this | f.call(obj) this | pass | P0 | generated | THIS-PASS-004, THIS-REGR-002 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_call_changes_this_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_call_apply_bind_regression.ets | validation_pending | this_keyword / function | 低 | ES 核心行为 |
| TK-CAB-002 | call_apply_bind_this | f.apply(obj) this | pass | P0 | generated | THIS-PASS-001, THIS-REGR-002 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_apply_changes_this_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_call_apply_bind_regression.ets | validation_pending | this_keyword / function | 低 | ES 核心行为 |
| TK-CAB-003 | call_apply_bind_this | f.bind(obj)() this | pass | P0 | generated | THIS-PASS-003, THIS-REGR-002 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_bind_changes_this_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_call_apply_bind_regression.ets | validation_pending | this_keyword / function | 低 | ES 核心行为 |
| TK-CAB-004 | call_apply_bind_this | bind 后 call 不改变 | pass | P0 | generated | THIS-BOUND-002, THIS-REGR-002 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_bind_ignores_later_call_boundary.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_call_apply_bind_regression.ets | spec_pending, validation_pending | this_keyword / function | 低 | 永久绑定 |
| TK-CAB-005 | call_apply_bind_this | call 传 null/undefined | boundary | P1 | planned | — | — | planned | this_keyword / function | 中 | null this |
| TK-OLM-001 | object_literal_method_this | 对象字面量方法 this | pass | P0 | generated | THIS-PASS-014 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_object_literal_method_pass.ets | validation_pending | this_keyword / function | 低 | ES 核心行为 |
| TK-OLM-002 | object_literal_method_this | 简写方法 this | pass | P0 | generated | THIS-PASS-014 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_object_literal_method_pass.ets | validation_pending | this_keyword / function | 低 | 简写 |
| TK-OLM-003 | object_literal_method_this | 箭头函数属性 this | boundary | P1 | planned | — | — | planned | this_keyword / function | 中 | 捕获外层 |
| TK-OLM-004 | object_literal_method_this | 方法提取后 this | boundary | P1 | planned | — | — | planned | this_keyword / function | 中 | 提取 |
| TK-OLM-005 | object_literal_method_this | getter/setter this | pass | P1 | planned | — | — | planned | this_keyword / class | 低 | accessor |
| TK-CC-001 | class_constructor_this | base constructor this | pass | P0 | generated | THIS-PASS-005 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_constructor_pass.ets | validation_pending | this_keyword / class | 低 | ES2015 |
| TK-CC-002 | class_constructor_this | constructor this 赋值字段 | pass | P0 | generated | THIS-PASS-005 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_constructor_pass.ets | validation_pending | this_keyword / class | 低 | 字段初始化 |
| TK-CC-003 | class_constructor_this | constructor 调用实例方法 | pass | P0 | planned | — | — | planned | this_keyword / class | 低 | 方法调用 |
| TK-CC-004 | class_constructor_this | constructor 返回 this | pass | P1 | planned | — | — | planned | this_keyword / class | 低 | 返回 this |
| TK-CC-005 | class_constructor_this | constructor this 边界 | boundary | P1 | planned | — | — | planned | this_keyword / class | 中 | 初始化顺序 |
| TK-CIM-001 | class_instance_method_this | 实例方法 this | pass | P0 | generated | THIS-PASS-006, THIS-PASS-007, THIS-REGR-003 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_instance_method_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_method_update_field_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_class_instance_regression.ets | validation_pending | this_keyword / class | 低 | ES2015 |
| TK-CIM-002 | class_instance_method_this | 实例方法返回 this | pass | P0 | generated | THIS-REGR-003 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_class_instance_regression.ets | validation_pending | this_keyword / class | 低 | 链式 |
| TK-CIM-003 | class_instance_method_this | 方法提取 this 丢失 | boundary | P0 | planned | — | — | planned | this_keyword / class | 高 | 经典 bug |
| TK-CIM-004 | class_instance_method_this | 实例方法中访问实例字段 | pass | P1 | generated | THIS-PASS-006 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_instance_method_pass.ets | validation_pending | this_keyword / class | 低 | 字段访问 |
| TK-CIM-005 | class_instance_method_this | 实例方法中调用其他方法 | pass | P1 | generated | THIS-PASS-007 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_method_update_field_pass.ets | validation_pending | this_keyword / class | 低 | this.method() |
| TK-CF-001 | class_field_this_boundary | 实例字段初始化 this | boundary | P1 | generated | THIS-BOUND-004 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_class_field_initializer_boundary.ets | spec_pending | this_keyword / class | 中 | 初始化顺序 |
| TK-CF-002 | class_field_this_boundary | 实例字段中使用 this | boundary | P1 | generated | THIS-BOUND-004 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_class_field_initializer_boundary.ets | spec_pending | this_keyword / class | 中 | this 引用 |
| TK-CF-003 | class_field_this_boundary | 实例字段箭头函数 this | boundary | P1 | planned | — | — | planned | this_keyword / class | 中 | 箭头捕获 |
| TK-CF-004 | class_field_this_boundary | 实例字段方法提取 | boundary | P2 | planned | — | — | planned | this_keyword / class | 低 | 提取 |
| TK-CF-005 | class_field_this_boundary | 字段初始化顺序与 this | boundary | P2 | planned | — | — | planned | this_keyword / class | 中 | 顺序 |
| TK-DCS-001 | derived_class_this_super_boundary | super() 前使用 this | fail_runtime | P0 | generated | THIS-BOUND-005 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_derived_before_super_boundary.ets | spec_pending | this_keyword / class | 高 | ReferenceError |
| TK-DCS-002 | derived_class_this_super_boundary | super() 后使用 this | pass | P0 | generated | THIS-BOUND-006, THIS-PASS-008, THIS-REGR-004 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_derived_constructor_return_boundary.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_derived_after_super_pass.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_derived_super_regression.ets | spec_pending, validation_pending | this_keyword / class | 低 | 已初始化 |
| TK-DCS-003 | derived_class_this_super_boundary | super() 前访问 this 字段 | fail_runtime | P0 | generated | THIS-BOUND-005 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_derived_before_super_boundary.ets | spec_pending | this_keyword / class | 高 | ReferenceError |
| TK-DCS-004 | derived_class_this_super_boundary | super() 后访问 this 字段 | pass | P1 | generated | THIS-PASS-008 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_derived_after_super_pass.ets | validation_pending | this_keyword / class | 低 | 已初始化 |
| TK-DCS-005 | derived_class_this_super_boundary | super() 调用 | pass | P1 | generated | THIS-REGR-004 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/regression/this_derived_super_regression.ets | validation_pending | this_keyword / class | 低 | super 调用 |
| TK-STC-001 | static_this | static 方法 this 为类 | pass | P0 | generated | THIS-BOUND-015, THIS-PASS-016 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_static_inheritance_boundary.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_static_method_pass.ets | spec_pending, validation_pending | this_keyword / class | 低 | ES2015 |
| TK-STC-002 | static_this | static 方法调用 static | pass | P0 | generated | THIS-PASS-016 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_static_method_pass.ets | validation_pending | this_keyword / class | 低 | this.method() |
| TK-STC-003 | static_this | static 字段 this | boundary | P1 | generated | THIS-BOUND-014 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_static_field_initializer_boundary.ets | spec_pending | this_keyword / class | 中 | 初始化 |
| TK-STC-004 | static_this | static 方法中 new this | boundary | P2 | planned | — | — | planned | this_keyword / class | 中 | new this |
| TK-STC-005 | static_this | static 箭头函数 this | boundary | P1 | planned | — | — | planned | this_keyword / class | 中 | 箭头捕获 |
| TK-GS-001 | getter_setter_this | getter this | pass | P0 | generated | THIS-BOUND-001, THIS-PASS-010 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_accessor_extracted_boundary.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_getter_receiver_pass.ets | spec_pending, validation_pending | this_keyword / class | 低 | accessor |
| TK-GS-002 | getter_setter_this | setter this | pass | P0 | generated | THIS-PASS-015 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_setter_receiver_pass.ets | validation_pending | this_keyword / class | 低 | accessor |
| TK-GS-003 | getter_setter_this | getter/setter 链式 | pass | P1 | planned | — | — | planned | this_keyword / class | 低 | 链式 |
| TK-GS-004 | getter_setter_this | 原型 getter this | boundary | P1 | planned | — | — | planned | this_keyword / class | 中 | 原型链 |
| TK-GS-005 | getter_setter_this | 静态 getter this | boundary | P2 | planned | — | — | planned | this_keyword / class | 低 | 静态 |
| TK-EM-001 | extracted_method_this | 方法提取后 this 丢失 | boundary | P0 | generated | THIS-BOUND-007 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_extracted_method_boundary.ets | spec_pending | this_keyword / function | 高 | 经典 bug |
| TK-EM-002 | extracted_method_this | bind 后提取 this 保留 | pass | P1 | planned | — | — | planned | this_keyword / function | 低 | bind 修复；Task 3A Fix 清除错误关联，当前无精确匹配用例 |
| TK-EM-003 | extracted_method_this | 箭头函数提取 this 保留 | pass | P1 | planned | — | — | planned | this_keyword / function | 低 | 箭头修复 |
| TK-EM-004 | extracted_method_this | 解构赋值方法 this | boundary | P2 | planned | — | — | planned | this_keyword / function | 中 | 解构 |
| TK-EM-005 | extracted_method_this | 提取后 call 恢复 this | pass | P2 | planned | — | — | planned | this_keyword / function | 低 | call 恢复 |
| TK-CB-001 | callback_this_boundary | callback this 丢失 | boundary | P0 | generated | THIS-BOUND-003 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_callback_boundary.ets | spec_pending | this_keyword / function | 高 | 经典 bug |
| TK-CB-002 | callback_this_boundary | 箭头函数 callback this | pass | P0 | generated | THIS-BOUND-003 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_callback_boundary.ets | spec_pending | this_keyword / function | 低 | 箭头修复 |
| TK-CB-003 | callback_this_boundary | bind callback this | pass | P0 | planned | — | — | planned | this_keyword / function | 低 | bind 修复 |
| TK-CB-004 | callback_this_boundary | forEach callback this | boundary | P1 | planned | — | — | planned | this_keyword / function | 中 | 内置 callback |
| TK-CB-005 | callback_this_boundary | setTimeout callback this | boundary | P1 | planned | — | — | planned | this_keyword / function | 中 | 异步 callback |
| TK-SM-001 | strict_mode_this_boundary | strict 函数 this undefined | pass | P0 | generated | THIS-BOUND-008, THIS-PASS-009 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_function_strict_mode_boundary.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_function_call_basic_pass.ets | spec_pending, validation_pending | this_keyword / function | 低 | strict mode |
| TK-SM-002 | strict_mode_this_boundary | 非 strict 函数 this globalThis | boundary | P0 | planned | — | — | planned | this_keyword / function | 中 | 非 strict |
| TK-SM-003 | strict_mode_this_boundary | 模块自动 strict | boundary | P1 | planned | — | — | planned | this_keyword / module | 中 | 模块 strict |
| TK-SM-004 | strict_mode_this_boundary | strict 提取方法 this | boundary | P1 | planned | — | — | planned | this_keyword / function | 中 | strict 提取 |
| TK-SM-005 | strict_mode_this_boundary | strict call null this | boundary | P2 | planned | — | — | planned | this_keyword / function | 低 | null this |
| TK-TP-001 | this_parameter_boundary | this parameter 支持 | boundary | P0 | generated | THIS-BOUND-011 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_parameter_boundary.ets | spec_pending | this_keyword / typescript | 高 | TS 特性 |
| TK-TP-002 | this_parameter_boundary | this parameter 类型检查 | boundary | P1 | planned | — | — | planned | this_keyword / typescript | 中 | 编译期检查 |
| TK-TP-003 | this_parameter_boundary | this parameter void | boundary | P1 | planned | — | — | planned | this_keyword / typescript | 中 | void this |
| TK-TP-004 | this_parameter_boundary | this parameter 运行时擦除 | boundary | P1 | planned | — | — | planned | this_keyword / types | 高 | 擦除 |
| TK-TP-005 | this_parameter_boundary | this parameter 不支持时 | boundary | P2 | planned | — | — | planned | this_keyword / typescript | 中 | 不支持 |
| TK-TT-001 | this_type_boundary | polymorphic this 返回类型 | boundary | P0 | generated | THIS-BOUND-012, THIS-BOUND-013 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_polymorphic_this_boundary.ets, arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_return_type_boundary.ets | spec_pending | this_keyword / typescript | 高 | TS 特性 |
| TK-TT-002 | this_type_boundary | this 作为参数类型 | boundary | P1 | planned | — | — | planned | this_keyword / typescript | 中 | 参数类型 |
| TK-TT-003 | this_type_boundary | this 在继承链多态 | boundary | P1 | generated | THIS-BOUND-012 | arkts-language-watch/01_language_foundation/07_this_keyword/xts/boundary/this_polymorphic_this_boundary.ets | spec_pending | this_keyword / typescript / class | 中 | 继承多态 |
| TK-TT-004 | this_type_boundary | this 运行时擦除 | boundary | P1 | planned | — | — | planned | this_keyword / types | 高 | 擦除 |
| TK-TT-005 | this_type_boundary | this type 不支持时 | boundary | P2 | planned | — | — | planned | this_keyword / typescript | 中 | 不支持 |
| TK-TSCOMP-001 | typescript_compatibility_boundary | TS this 兼容 | boundary | P0 | planned | — | — | planned | this_keyword / typescript | 高 | 兼容状态 |
| TK-TSCOMP-002 | typescript_compatibility_boundary | this parameter 兼容 | boundary | P0 | planned | — | — | planned | this_keyword / typescript | 高 | TS 特性 |
| TK-TSCOMP-003 | typescript_compatibility_boundary | polymorphic this 兼容 | boundary | P1 | planned | — | — | planned | this_keyword / typescript | 中 | TS 特性 |
| TK-TSCOMP-004 | typescript_compatibility_boundary | this type 兼容 | boundary | P1 | planned | — | — | planned | this_keyword / typescript | 中 | TS 特性 |
| TK-ARKTS-001 | arkts_dynamic_boundary | 动态 ArkTS this 支持 | boundary | P0 | planned | — | — | planned | this_keyword | 高 | 支持状态 |
| TK-ARKTS-002 | arkts_dynamic_boundary | 动态与静态 this 差异 | boundary | P0 | planned | — | — | planned | this_keyword | 高 | 动态/静态 |
| TK-ARKTS-003 | arkts_dynamic_boundary | this 运行时行为差异 | boundary | P1 | planned | — | — | planned | this_keyword | 高 | 运行时差异 |
| TK-ARKTS-004 | arkts_dynamic_boundary | this 编译期 vs 运行时 | boundary | P1 | planned | — | — | planned | this_keyword | 高 | 编译/运行 |

> 主体矩阵是当前 Coverage 状态事实来源；下方 Stage 1 Update Summary 仅为历史快照。
## Stage 1 Update Summary

以下 35 个 `.ets` 文件在 This Keyword Stage 1 中生成（16 pass + 15 boundary + 4 regression）：

| 生成文件 | 对应 Coverage IDs | 用例类型 |
|---|---|---|
| `xts/pass/this_function_call_basic_pass.ets` | TK-FUNC-001, TK-SM-001 | pass |
| `xts/pass/this_method_call_receiver_pass.ets` | TK-MTHD-001 | pass |
| `xts/pass/this_method_receiver_update_pass.ets` | TK-MTHD-001 | pass |
| `xts/pass/this_arrow_lexical_this_pass.ets` | TK-ARR-001 | pass |
| `xts/pass/this_nested_arrow_preserves_this_pass.ets` | TK-ARR-002 | pass |
| `xts/pass/this_call_changes_this_pass.ets` | TK-CAB-001 | pass |
| `xts/pass/this_apply_changes_this_pass.ets` | TK-CAB-002 | pass |
| `xts/pass/this_bind_changes_this_pass.ets` | TK-CAB-003 | pass |
| `xts/pass/this_object_literal_method_pass.ets` | TK-OLM-001, TK-OLM-002 | pass |
| `xts/pass/this_getter_receiver_pass.ets` | TK-GS-001 | pass |
| `xts/pass/this_setter_receiver_pass.ets` | TK-GS-002 | pass |
| `xts/pass/this_class_constructor_pass.ets` | TK-CC-001, TK-CC-002 | pass |
| `xts/pass/this_class_instance_method_pass.ets` | TK-CIM-001, TK-CIM-004 | pass |
| `xts/pass/this_class_method_update_field_pass.ets` | TK-CIM-001, TK-CIM-005 | pass |
| `xts/pass/this_derived_after_super_pass.ets` | TK-DCS-002, TK-DCS-004 | pass |
| `xts/pass/this_static_method_pass.ets` | TK-STC-001, TK-STC-002 | pass |
| `xts/boundary/this_function_strict_mode_boundary.ets` | TK-FUNC-002, TK-SM-001 | boundary |
| `xts/boundary/this_extracted_method_boundary.ets` | TK-MTHD-005, TK-EM-001 | boundary |
| `xts/boundary/this_nested_normal_function_boundary.ets` | TK-NST-001, TK-NST-003 | boundary |
| `xts/boundary/this_bind_ignores_later_call_boundary.ets` | TK-CAB-004 | boundary |
| `xts/boundary/this_accessor_extracted_boundary.ets` | TK-GS-001 | boundary |
| `xts/boundary/this_class_field_initializer_boundary.ets` | TK-CF-001, TK-CF-002 | boundary |
| `xts/boundary/this_derived_before_super_boundary.ets` | TK-DCS-001, TK-DCS-003 | boundary |
| `xts/boundary/this_derived_constructor_return_boundary.ets` | TK-DCS-002 | boundary |
| `xts/boundary/this_static_field_initializer_boundary.ets` | TK-STC-003 | boundary |
| `xts/boundary/this_static_inheritance_boundary.ets` | TK-STC-001 | boundary |
| `xts/boundary/this_callback_boundary.ets` | TK-CB-001, TK-CB-002 | boundary |
| `xts/boundary/this_module_top_level_boundary.ets` | TK-MOD-001 | boundary |
| `xts/boundary/this_parameter_boundary.ets` | TK-TP-001 | boundary |
| `xts/boundary/this_return_type_boundary.ets` | TK-TT-001 | boundary |
| `xts/boundary/this_polymorphic_this_boundary.ets` | TK-TT-001, TK-TT-003 | boundary |
| `xts/regression/this_arrow_lexical_regression.ets` | TK-ARR-001, TK-ARR-002 | regression |
| `xts/regression/this_call_apply_bind_regression.ets` | TK-CAB-001, TK-CAB-002, TK-CAB-003, TK-CAB-004 | regression |
| `xts/regression/this_class_instance_regression.ets` | TK-CIM-001, TK-CIM-002 | regression |
| `xts/regression/this_derived_super_regression.ets` | TK-DCS-002, TK-DCS-005 | regression |
