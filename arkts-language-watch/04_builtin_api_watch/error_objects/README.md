# ECMAScript Runtime Error Objects Watch

本目录用于看护 ArkTS 运行时中 ECMAScript 标准 Error Objects / Native Error 行为。

本目录只关注运行时异常，不关注 TypeScript 编译期 type error。

标准错误类型第一版覆盖：

- Error
- EvalError
- RangeError
- ReferenceError
- SyntaxError
- TypeError
- URIError
- AggregateError
- SuppressedError

看护目标：

1. 验证构造器存在性；
2. 验证 prototype 继承关系；
3. 验证 name/message/cause 等属性行为；
4. 验证典型运行时触发场景；
5. 验证 instanceof 关系；
6. 验证 toString 行为；
7. 对照 test262 用例；
8. 沉淀 ArkTS XTS fail_runtime / boundary / regression 用例；
9. 记录 ArkRuntime 与 ECMA 标准差异。

## Priority

| 优先级 | 错误类型 | 原因 |
|---|---|---|
| P0 | TypeError | 覆盖最广，涉及 call/construct、receiver、null/undefined、builtin API |
| P0 | RangeError | 涉及 Array、String、Number、BigInt、TypedArray 边界 |
| P0 | ReferenceError | 涉及变量绑定、TDZ、模块初始化 |
| P0 | SyntaxError | 涉及 parser、eval、Function、RegExp、JSON.parse |
| P1 | URIError | URI 编解码场景独立清晰 |
| P1 | AggregateError | Promise.any 和异步错误聚合 |
| P2 | EvalError | 历史保留，主要看构造器和继承 |
| P2 | SuppressedError | 新标准能力，需确认 ArkRuntime 支持 |
| P3 | non_standard_error | 只做差异记录，不作为标准必测 |

<!-- ERROR_OBJECTS_SEMANTIC_WATCH_V1 -->

## Error Watch Priority

| 优先级 | Error 类型 | 重点场景 |
|---|---|---|
| P0 | TypeError | 已单独扩展，覆盖最广 |
| P0 | RangeError | Array length、String repeat、Number digits、TypedArray length |
| P0 | ReferenceError | unresolvable reference、TDZ、module cyclic binding |
| P0 | SyntaxError | parser、eval、Function、RegExp、JSON.parse |
| P1 | URIError | URI 编解码非法输入 |
| P1 | AggregateError | Promise.any、errors 属性、异步聚合 |
| P2 | EvalError | 历史保留，主要看对象行为 |
| P2 | SuppressedError | 新标准能力，按 ArkRuntime 支持情况确认 |
| P3 | non_standard_error | 只做差异记录，不作为标准必测 |
