# Test Design

## Positive Constructor Cases

- constructor exists
- can create instance
- name property
- message property
- instanceof current error
- instanceof Error
- prototype chain
- toString behavior

## Runtime Throw Cases

- standard built-in API throw case
- user throw new ErrorType
- catch and inspect error object
- subclass behavior if applicable

## Boundary Cases

- empty message
- undefined message
- cause option
- invalid parameters
- cross-realm behavior if applicable
- async boundary if applicable

## Negative / Difference Cases

- unsupported standard feature
- ArkRuntime behavior difference
- test262 adaptation difference

## Regression Cases

- historical issues
- fixed defects
- compatibility regressions

<!-- TYPE_ERROR_SEMANTIC_WATCH_V1 -->

# TypeError Overall Test Design

## Design Principle

TypeError 看护按规范语义类别拆分，不按 throw TypeError 字符串出现次数拆分。

## P0 Categories

必须优先覆盖：

- 01_require_object_coercible
- 02_to_object
- 05_call_non_callable
- 06_construct_non_constructor
- 07_invalid_receiver_internal_slot
- 08_property_access_null_undefined
- 10_property_descriptor_invalid
- 13_iterator_protocol
- 17_weak_collection_key

## P1 Categories

第二批覆盖：

- 09_property_assignment_strict
- 14_async_promise_protocol
- 15_proxy_invariants
- 16_typedarray_arraybuffer_dataview
- 18_builtin_constructor_newtarget

## P2 Categories

第三批覆盖：

- 03_to_primitive
- 04_to_number_bigint_symbol
- 11_private_field_brand_check
- 12_class_constructor_call
- 19_species_constructor

## P3 Categories

差异记录或按运行时支持情况覆盖：

- 20_module_global_declaration
- 21_json_structured_clone_symbol

## Required Test Types

每个语义类别至少沉淀：

1. pass 对照用例；
2. fail_runtime TypeError 用例；
3. boundary 用例；
4. ArkTS 静态前移差异记录；
5. test262 映射；
6. regression 回归用例。
