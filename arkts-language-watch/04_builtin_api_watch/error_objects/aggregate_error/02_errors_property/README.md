# errors property

本目录用于看护当前 Error 类型下的具体语义触发场景。

## Scope

AggregateError errors 属性

## Typical Scenarios

- errors 是数组
- 顺序保持
- 任意元素
- 属性描述符
- shallow copy

## Watch Points

- errors 是数组
- 顺序保持
- 任意元素
- 属性描述符
- shallow copy

## ArkTS Boundary

记录 ArkTS 静态语言、动态 ArkTS、ArkRuntime 的行为边界。若运行时错误在 ArkTS 静态语言中被前移为编译期错误，应在本目录覆盖矩阵和 issue 文件中记录。
