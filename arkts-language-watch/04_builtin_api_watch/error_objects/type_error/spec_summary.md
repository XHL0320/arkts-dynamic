# Spec Summary

## Feature

TypeError

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

<!-- TYPE_ERROR_SEMANTIC_WATCH_V1 -->

# TypeError Spec Summary

## Feature

ECMAScript TypeError Runtime Exception

## Standard Source

- ECMA-262 Error Objects
- ECMA-262 Native Error Types
- ECMA-262 Abstract Operations
- ECMA-262 ECMAScript Language Runtime Semantics
- ECMA-262 Built-in Object Algorithms
- test262 TypeError related cases

## Definition

TypeError is thrown when an operation could not be performed, typically because a value is not of the expected type, an object does not have required internal slots, a receiver is invalid, a protocol contract is violated, or an invariant required by the specification is broken.

## Watch Scope

本目录覆盖 TypeError 的以下语义类别：

1. TypeError 对象自身行为
2. RequireObjectCoercible
3. ToObject
4. ToPrimitive
5. ToNumber / ToBigInt / Symbol conversion
6. Call non-callable
7. Construct non-constructor
8. Invalid receiver / internal slot
9. Property access on null / undefined
10. Strict property assignment failure
11. Invalid property descriptor
12. Private field brand check
13. Class constructor call
14. Iterator protocol
15. Async / Promise protocol
16. Proxy invariants
17. TypedArray / ArrayBuffer / DataView
18. WeakMap / WeakSet key
19. Built-in constructor NewTarget
20. SpeciesConstructor
21. Module / global declaration
22. JSON / structured clone / Symbol special TypeError
23. test262 mapping

## ArkTS Boundary

需要重点记录：
- ECMA 运行时 TypeError 是否在 ArkTS 静态语言中被前移为编译期错误；
- ArkTS 动态/ESObject 场景是否仍按 ECMA 运行时抛 TypeError；
- ArkRuntime 是否支持对应内建对象或新标准特性；
- XTS 用例是否需要改写以满足 ArkTS 静态语法限制。

## Excluded / Difference Cases

如 Proxy、Private Field、SuppressedError、structuredClone、SharedArrayBuffer 等能力在当前 ArkRuntime 或 ArkTS 静态语言中不支持，应记录到对应子目录的 test262_mapping.md 或 issues/known_issues.md，不应直接作为必须通过用例。
