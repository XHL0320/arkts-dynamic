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

<!-- ERROR_OBJECTS_SEMANTIC_WATCH_V1 -->

# Test Design

## Design Principle

按规范语义类别拆分，不按规范文本中 throw RangeError 的出现次数拆分。

## Object Behavior Cases

- constructor
- prototype
- name/message
- cause
- instanceof
- toString
- throw/catch
- subclassing

## Runtime Trigger Cases

- `00_error_object_behavior`: RangeError 错误对象自身行为
- `01_array_length`: Array length 非法触发 RangeError
- `02_string_repeat`: String.prototype.repeat 参数非法触发 RangeError
- `03_number_format_digits`: Number 格式化参数越界触发 RangeError
- `04_bigint_width`: BigInt.asIntN/asUintN 位宽非法触发 RangeError
- `05_date_time_value`: Date 相关 RangeError
- `06_typedarray_arraybuffer_length`: TypedArray / ArrayBuffer 长度或偏移非法
- `07_regexp_quantifier_or_string_limits`: RegExp 或字符串长度限制相关 RangeError
- `08_recursion_or_stack_limit_non_stable`: 递归过深、调用栈溢出等非稳定场景
- `99_test262_mapping`: RangeError 相关 test262 映射

## Boundary Cases

列出边界场景。

## ArkTS Static Boundary Cases

列出可能被 ArkTS 静态语言前移为编译期错误的场景。

## Built-in Family Coverage

列出涉及的内建对象或 API 家族。

## test262 Candidate Cases

列出 test262 搜索方向。

## Regression Cases

记录历史问题和回归方向。
