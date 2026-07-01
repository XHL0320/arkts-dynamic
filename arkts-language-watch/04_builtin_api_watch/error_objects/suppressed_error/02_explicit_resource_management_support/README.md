# Explicit resource management support

本目录用于看护当前 Error 类型下的具体语义触发场景。

## Scope

显式资源管理相关错误抑制

## Typical Scenarios

- using
- await using
- Symbol.dispose
- Symbol.asyncDispose
- 支持差异

## Watch Points

- using
- await using
- Symbol.dispose
- Symbol.asyncDispose
- 支持差异

## ArkTS Boundary

记录 ArkTS 静态语言、动态 ArkTS、ArkRuntime 的行为边界。若运行时错误在 ArkTS 静态语言中被前移为编译期错误，应在本目录覆盖矩阵和 issue 文件中记录。
