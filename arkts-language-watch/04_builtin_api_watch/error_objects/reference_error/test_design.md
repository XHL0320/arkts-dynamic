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

按规范语义类别拆分，不按规范文本中 throw ReferenceError 的出现次数拆分。

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

- `00_error_object_behavior`: ReferenceError 错误对象自身行为
- `01_unresolvable_reference`: 未声明变量访问触发 ReferenceError
- `02_temporal_dead_zone`: let/const TDZ 触发 ReferenceError
- `03_typeof_tdz`: typeof 访问 TDZ 变量触发 ReferenceError
- `04_class_tdz`: class 声明 TDZ
- `05_module_binding_initialization`: module import/export 绑定初始化前访问
- `06_super_reference`: super/this 初始化错误中可能涉及 ReferenceError
- `07_private_name_or_scope_difference`: private name、scope 相关差异
- `99_test262_mapping`: ReferenceError 相关 test262 映射

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
