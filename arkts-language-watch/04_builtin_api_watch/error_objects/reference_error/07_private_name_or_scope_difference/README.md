# Private name or scope difference

本目录用于看护当前 Error 类型下的具体语义触发场景。

## Scope

private name、scope 相关差异

## Typical Scenarios

- SyntaxError 边界
- TypeError brand check
- ReferenceError 待确认

## Watch Points

- SyntaxError 边界
- TypeError brand check
- ReferenceError 待确认

## ArkTS Boundary

记录 ArkTS 静态语言、动态 ArkTS、ArkRuntime 的行为边界。若运行时错误在 ArkTS 静态语言中被前移为编译期错误，应在本目录覆盖矩阵和 issue 文件中记录。
