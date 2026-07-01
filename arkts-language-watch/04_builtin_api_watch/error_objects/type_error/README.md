# TypeError

TypeError 表示值的类型、receiver、对象状态或操作方式不满足规范要求。看护重点包括调用非函数、构造非构造器、访问 null/undefined 属性、非法 receiver、readonly/const 写入、class constructor 调用方式、builtin API this 校验等。

<!-- TYPE_ERROR_SEMANTIC_WATCH_V1 -->

# TypeError Watch

本目录用于看护 ArkTS 运行时中 ECMAScript TypeError 相关行为。

TypeError 是 ECMAScript 中最常见的运行时异常之一，覆盖函数调用、构造调用、对象转换、属性访问、非法 receiver、内建对象内部槽检查、iterator protocol、Promise protocol、Proxy invariants、TypedArray/ArrayBuffer/DataView、WeakMap/WeakSet key 约束等大量场景。

## Scope

本目录只关注 ECMAScript 运行时 TypeError，不关注 TypeScript 编译期 type error。

对于 ArkTS 静态语言，需要特别记录：
1. 哪些 JS/ECMA 运行时 TypeError 在 ArkTS 静态语言中被前移为编译期错误；
2. 哪些场景仍然需要在运行时抛 TypeError；
3. 哪些场景因 ArkTS 语法限制、运行时限制或未支持特性需要排除；
4. 哪些场景需要从 test262 适配为 XTS 用例。

## Watch Principle

TypeError 看护不以 ECMA 文本中 throw TypeError 的出现次数为粒度，而以“触发 TypeError 的规范语义类别”为粒度。

对于共享同一抽象操作的 API：
- 每个抽象操作必须有代表性用例；
- 每个关键 builtin 家族必须有覆盖；
- 不要求每个重复 API 都机械复制；
- test262 中高风险或历史缺陷场景需要单独回归。

## TypeError Semantic Categories

| 编号 | 场景目录 | 语义类别 | 优先级 |
|---|---|---|---|
| 00 | error_object_behavior | TypeError 错误对象自身行为 | P0 |
| 01 | require_object_coercible | RequireObjectCoercible: null/undefined 不能作为对象使用 | P0 |
| 02 | to_object | ToObject: null/undefined 无法转对象 | P0 |
| 03 | to_primitive | ToPrimitive 返回对象 | P2 |
| 04 | to_number_bigint_symbol | Symbol/BigInt/Number 转换相关 TypeError | P2 |
| 05 | call_non_callable | 调用非 callable 对象 | P0 |
| 06 | construct_non_constructor | 构造非 constructor 对象 | P0 |
| 07 | invalid_receiver_internal_slot | 非法 receiver / 内部槽缺失 | P0 |
| 08 | property_access_null_undefined | null/undefined 属性访问 | P0 |
| 09 | property_assignment_strict | strict mode 下属性写入失败 | P1 |
| 10 | property_descriptor_invalid | Property Descriptor 非法组合 | P0 |
| 11 | private_field_brand_check | private field / method / accessor brand check 失败 | P2 |
| 12 | class_constructor_call | class constructor 被普通调用或派生类 super/this 规则错误 | P2 |
| 13 | iterator_protocol | Iterator Protocol 违反规范 | P0 |
| 14 | async_promise_protocol | Promise / async / thenable 协议错误 | P1 |
| 15 | proxy_invariants | Proxy invariants 违反规范 | P1 |
| 16 | typedarray_arraybuffer_dataview | TypedArray / ArrayBuffer / DataView receiver 或内部状态非法 | P1 |
| 17 | weak_collection_key | WeakMap / WeakSet key 或 value 非法 | P0 |
| 18 | builtin_constructor_newtarget | 内建构造器必须使用 new | P1 |
| 19 | species_constructor | Symbol.species 返回值不是 constructor | P2 |
| 20 | module_global_declaration | Global/Module 声明相关 TypeError | P3 |
| 21 | json_structured_clone_symbol | JSON/structuredClone/Symbol 特殊 TypeError | P3 |
| 99 | test262_mapping | test262 TypeError 相关用例总映射 | P0 |

## Priority

P0 必须优先覆盖：
- require_object_coercible
- to_object
- call_non_callable
- construct_non_constructor
- invalid_receiver_internal_slot
- property_access_null_undefined
- property_descriptor_invalid
- iterator_protocol
- weak_collection_key

P1 第二批覆盖：
- property_assignment_strict
- async_promise_protocol
- proxy_invariants
- typedarray_arraybuffer_dataview
- builtin_constructor_newtarget

P2 第三批覆盖：
- to_primitive
- to_number_bigint_symbol
- private_field_brand_check
- class_constructor_call
- species_constructor

P3 差异记录或按运行时支持情况覆盖：
- module_global_declaration
- json_structured_clone_symbol
