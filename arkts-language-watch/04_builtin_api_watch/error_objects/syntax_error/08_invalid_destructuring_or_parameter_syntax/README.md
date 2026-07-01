# Invalid destructuring or parameter syntax

本目录用于看护当前 Error 类型下的具体语义触发场景。

## Scope

解构、参数列表等语法错误

## Typical Scenarios

- invalid destructuring
- duplicate parameter strict
- rest 后还有参数

## Watch Points

- invalid destructuring
- duplicate parameter strict
- rest 后还有参数

## ArkTS Boundary

记录 ArkTS 静态语言、动态 ArkTS、ArkRuntime 的行为边界。若运行时错误在 ArkTS 静态语言中被前移为编译期错误，应在本目录覆盖矩阵和 issue 文件中记录。
