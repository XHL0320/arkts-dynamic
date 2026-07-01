# ReferenceError test262 Mapping

本目录用于看护当前 Error 类型下的具体语义触发场景。

## Scope

ReferenceError 相关 test262 映射

## Typical Scenarios

- unresolvable
- TDZ
- typeof TDZ
- module cyclic

## Watch Points

- unresolvable
- TDZ
- typeof TDZ
- module cyclic

## ArkTS Boundary

记录 ArkTS 静态语言、动态 ArkTS、ArkRuntime 的行为边界。若运行时错误在 ArkTS 静态语言中被前移为编译期错误，应在本目录覆盖矩阵和 issue 文件中记录。
