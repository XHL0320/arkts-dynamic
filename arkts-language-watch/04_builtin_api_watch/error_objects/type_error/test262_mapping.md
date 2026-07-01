# test262 Mapping

| ECMA/Test262 测试点 | test262 用例 | ArkTS 是否适用 | XTS 对应用例 | 差异原因 | 处理方式 |
|---|---|---|---|---|---|
| 构造器基础行为 |  | 待确认 |  |  |  |
| prototype 继承关系 |  | 待确认 |  |  |  |
| name/message 属性 |  | 待确认 |  |  |  |
| 运行时抛出场景 |  | 待确认 |  |  |  |
| 新标准特性 |  | 待确认 |  |  |  |

<!-- TYPE_ERROR_SEMANTIC_WATCH_V1 -->

# TypeError Overall test262 Mapping

| 场景目录 | test262 搜索方向 | ECMA 入口 | ArkTS 是否适用 | 适配策略 | XTS 目标路径 | 差异原因 | 风险等级 |
|---|---|---|---|---|---|---|---|
| 01_require_object_coercible | RequireObjectCoercible TypeError | Abstract Operation | 待确认 | 语法适配 |  |  | P0 |
| 02_to_object | ToObject TypeError | Abstract Operation | 待确认 | 语法适配 |  |  | P0 |
| 05_call_non_callable | IsCallable TypeError | Runtime Semantics | 待确认 | 语法适配 |  |  | P0 |
| 06_construct_non_constructor | IsConstructor TypeError | Runtime Semantics | 待确认 | 语法适配 |  |  | P0 |
| 07_invalid_receiver_internal_slot | RequireInternalSlot TypeError | Built-in Algorithms | 待确认 | 语法适配 |  |  | P0 |
| 08_property_access_null_undefined | property access null undefined TypeError | Runtime Semantics | 待确认 | 静态/动态分流 |  |  | P0 |
| 10_property_descriptor_invalid | property descriptor TypeError | Object.defineProperty | 待确认 | 语法适配 |  |  | P0 |
| 13_iterator_protocol | iterator protocol TypeError | GetIterator/IteratorNext | 待确认 | 语法适配 |  |  | P0 |
| 17_weak_collection_key | WeakMap WeakSet TypeError | CanBeHeldWeakly | 待确认 | 语法适配 |  |  | P0 |
