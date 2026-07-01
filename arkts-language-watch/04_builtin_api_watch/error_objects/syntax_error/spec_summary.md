# Spec Summary

## Feature

SyntaxError

## Standard Source

- ECMA-262 Error Objects
- ECMA-262 Native Error Types
- ECMA-262 Built-in APIs that throw this error
- test262 related cases

## Constructor

记录构造器行为。

## Prototype Chain

记录 prototype 继承关系。

## Properties

记录 name、message、cause、errors、error、suppressed 等相关属性。

## Runtime Trigger Scenarios

记录标准运行时触发场景。

## ArkTS Watch Points

记录 ArkTS/ArkRuntime 中需要重点确认的行为。

## Compile-Time vs Runtime Boundary

说明该错误属于运行时异常，不应与 ArkTS checker 编译期错误混淆。
如某些 JS 运行时错误在 ArkTS 静态语言中被前移为编译期错误，需要单独记录。

## Open Questions

记录待确认问题。

<!-- ERROR_OBJECTS_SEMANTIC_WATCH_V1 -->

# Spec Summary

## Feature

SyntaxError

## Standard Source

- ECMA-262 Error Objects
- ECMA-262 Native Error Types
- ECMA-262 Abstract Operations
- ECMA-262 Built-in Object Algorithms
- test262 related cases

## Definition

SyntaxError is thrown for invalid source text or invalid dynamically parsed strings.

## Watch Scope

- `00_error_object_behavior`: SyntaxError 错误对象自身行为
- `01_static_parse_error`: 静态源码解析阶段 SyntaxError
- `02_eval_parse_error`: eval 动态解析非法源码触发 SyntaxError
- `03_function_constructor_parse_error`: Function 构造器动态解析非法源码触发 SyntaxError
- `04_regexp_parse_error`: RegExp 构造非法正则触发 SyntaxError
- `05_json_parse_error`: JSON.parse 非法 JSON 触发 SyntaxError
- `06_module_parse_error`: module 解析阶段 SyntaxError
- `07_invalid_private_name_syntax`: private name 语法非法触发 SyntaxError
- `08_invalid_destructuring_or_parameter_syntax`: 解构、参数列表等语法错误
- `99_test262_mapping`: SyntaxError 相关 test262 映射

## Constructor Behavior

记录构造器调用、message、cause、无 new 调用和参数转换行为。

## Prototype Chain

记录当前 Native Error prototype 与 Error.prototype 的继承关系。

## Properties

记录 name、message、cause、errors、error、suppressed 等相关属性，具体以当前 Error 类型适用属性为准。

## Runtime Trigger Scenarios

记录标准运行时触发场景和关键 builtin 家族。

## ArkTS Boundary

- ArkTS 静态语言是否会前移为编译期错误；
- ArkTS 动态/ESObject 场景是否保留运行时异常；
- ArkRuntime 是否支持相关内建能力；
- XTS 是否需要语法适配。

## Excluded / Difference Cases

记录不支持、非标准、host 相关、不稳定的场景。
