# RegExp parse error

本目录用于看护当前 Error 类型下的具体语义触发场景。

## Scope

RegExp 构造非法正则触发 SyntaxError

## Typical Scenarios

- new RegExp('[')
- invalid flags
- named capture 支持

## Watch Points

- new RegExp('[')
- invalid flags
- named capture 支持

## ArkTS Boundary

记录 ArkTS 静态语言、动态 ArkTS、ArkRuntime 的行为边界。若运行时错误在 ArkTS 静态语言中被前移为编译期错误，应在本目录覆盖矩阵和 issue 文件中记录。
