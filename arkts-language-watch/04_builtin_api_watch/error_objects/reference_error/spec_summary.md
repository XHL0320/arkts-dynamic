# Spec Summary

## Feature

ReferenceError

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

ReferenceError

## Standard Source

- ECMA-262 Error Objects
- ECMA-262 Native Error Types
- ECMA-262 Abstract Operations
- ECMA-262 Built-in Object Algorithms
- test262 related cases

## Definition

ReferenceError is thrown when reference resolution fails or a lexical binding is accessed before initialization.

## Watch Scope

- `00_error_object_behavior`: ReferenceError 错误对象自身行为
- `01_unresolvable_reference`: 未声明变量访问触发 ReferenceError
- `02_temporal_dead_zone`: let/const TDZ 触发 ReferenceError
- `03_typeof_tdz`: typeof 访问 TDZ 变量触发 ReferenceError
- `04_class_tdz`: class 声明 TDZ
- `05_module_binding_initialization`: module import/export 绑定初始化前访问
- `06_super_reference`: super/this 初始化错误中可能涉及 ReferenceError
- `07_private_name_or_scope_difference`: private name、scope 相关差异
- `99_test262_mapping`: ReferenceError 相关 test262 映射

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
