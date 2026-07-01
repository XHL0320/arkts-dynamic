# InternalError

InternalError 属于非 ECMA-262 标准错误类型，不作为标准必测项。若 test262 或引擎差异分析中出现相关场景，应在此记录适用性和排除原因。

<!-- ERROR_OBJECTS_SEMANTIC_WATCH_V1 -->

# InternalError

InternalError 常见于部分引擎。递归过深等场景在不同引擎可能表现不同；ArkRuntime 若不提供 InternalError，不视为 ECMA 标准缺失。
