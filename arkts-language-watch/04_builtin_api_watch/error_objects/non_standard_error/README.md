# Non-standard Error

本目录用于记录非 ECMA-262 标准错误或不同引擎私有错误的差异行为，不作为标准 Native Error 必测项。

InternalError 不作为 ECMA 标准错误类型看护；如 ArkRuntime 存在自身特有错误行为，应记录到 `ark_runtime_specific_error.md`。

<!-- ERROR_OBJECTS_SEMANTIC_WATCH_V1 -->

# Non-standard Error

本目录只记录非 ECMA-262 标准错误或引擎私有行为。

- InternalError 不是 ECMA-262 标准错误类型；
- 不作为 ArkTS 标准必测全集；
- 只用于差异记录、兼容性分析和 test262 排除说明。
