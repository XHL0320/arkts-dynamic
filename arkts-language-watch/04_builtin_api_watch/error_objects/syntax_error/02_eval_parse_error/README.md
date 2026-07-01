# eval parse error

本目录用于看护当前 Error 类型下的具体语义触发场景。

## Scope

eval 动态解析非法源码触发 SyntaxError

## Typical Scenarios

- eval('let = 1')
- eval('function {')
- eval 支持差异

## Watch Points

- eval('let = 1')
- eval('function {')
- eval 支持差异

## ArkTS Boundary

记录 ArkTS 静态语言、动态 ArkTS、ArkRuntime 的行为边界。若运行时错误在 ArkTS 静态语言中被前移为编译期错误，应在本目录覆盖矩阵和 issue 文件中记录。
