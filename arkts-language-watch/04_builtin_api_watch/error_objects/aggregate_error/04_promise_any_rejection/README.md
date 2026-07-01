# Promise.any rejection

本目录用于看护当前 Error 类型下的具体语义触发场景。

## Scope

Promise.any 全部 rejected 时抛 AggregateError

## Typical Scenarios

- Promise.any([])
- 全部 reject
- errors 顺序
- 异步 catch

## Watch Points

- Promise.any([])
- 全部 reject
- errors 顺序
- 异步 catch

## ArkTS Boundary

记录 ArkTS 静态语言、动态 ArkTS、ArkRuntime 的行为边界。若运行时错误在 ArkTS 静态语言中被前移为编译期错误，应在本目录覆盖矩阵和 issue 文件中记录。
