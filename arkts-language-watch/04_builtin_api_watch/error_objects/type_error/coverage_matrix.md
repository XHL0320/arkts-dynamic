# Coverage Matrix

| 测试点 | 错误类型 | 用例类型 | 是否已有 | 用例路径 | 风险等级 | 备注 |
|---|---|---|---|---|---|---|
| 构造器存在性 | TypeError | pass | 否 |  | P1 |  |
| prototype 继承 | TypeError | pass | 否 |  | P1 |  |
| name/message 属性 | TypeError | pass | 否 |  | P1 |  |
| 典型运行时触发 | TypeError | fail_runtime | 否 |  | P0 |  |
| test262 对照 | TypeError | mapping | 否 |  | P0 |  |
| ArkRuntime 差异 | TypeError | regression | 否 |  | P0 |  |

<!-- TYPE_ERROR_SEMANTIC_WATCH_V1 -->

# TypeError Overall Coverage Matrix

| 编号 | 场景目录 | 语义类别 | 优先级 | 是否已有测试设计 | 是否已有 XTS | 是否已有 test262 映射 | 备注 |
|---|---|---|---|---|---|---|---|
| 00 | error_object_behavior | TypeError 错误对象自身行为 | P0 | 否 | 否 | 否 |  |
| 01 | require_object_coercible | null/undefined 不能作为对象使用 | P0 | 否 | 否 | 否 |  |
| 02 | to_object | ToObject null/undefined | P0 | 否 | 否 | 否 |  |
| 03 | to_primitive | ToPrimitive 返回对象 | P2 | 否 | 否 | 否 |  |
| 04 | to_number_bigint_symbol | Symbol/BigInt/Number 转换 | P2 | 否 | 否 | 否 |  |
| 05 | call_non_callable | 调用非 callable | P0 | 否 | 否 | 否 |  |
| 06 | construct_non_constructor | 构造非 constructor | P0 | 否 | 否 | 否 |  |
| 07 | invalid_receiver_internal_slot | 非法 receiver / 内部槽缺失 | P0 | 否 | 否 | 否 |  |
| 08 | property_access_null_undefined | null/undefined 属性访问 | P0 | 否 | 否 | 否 |  |
| 09 | property_assignment_strict | strict 写入失败 | P1 | 否 | 否 | 否 |  |
| 10 | property_descriptor_invalid | 非法属性描述符 | P0 | 否 | 否 | 否 |  |
| 11 | private_field_brand_check | private brand check | P2 | 否 | 否 | 否 |  |
| 12 | class_constructor_call | class constructor 普通调用 | P2 | 否 | 否 | 否 |  |
| 13 | iterator_protocol | iterator protocol 错误 | P0 | 否 | 否 | 否 |  |
| 14 | async_promise_protocol | Promise/async 协议错误 | P1 | 否 | 否 | 否 |  |
| 15 | proxy_invariants | Proxy invariant 错误 | P1 | 否 | 否 | 否 |  |
| 16 | typedarray_arraybuffer_dataview | TypedArray/Buffer/DataView | P1 | 否 | 否 | 否 |  |
| 17 | weak_collection_key | WeakMap/WeakSet key 非法 | P0 | 否 | 否 | 否 |  |
| 18 | builtin_constructor_newtarget | builtin constructor NewTarget | P1 | 否 | 否 | 否 |  |
| 19 | species_constructor | Symbol.species 非 constructor | P2 | 否 | 否 | 否 |  |
| 20 | module_global_declaration | Global/Module 声明 TypeError | P3 | 否 | 否 | 否 | Host 相关 |
| 21 | json_structured_clone_symbol | JSON/structuredClone/Symbol 特殊 TypeError | P3 | 否 | 否 | 否 | 按支持情况确认 |
| 99 | test262_mapping | test262 TypeError 总映射 | P0 | 否 | 否 | 否 |  |
