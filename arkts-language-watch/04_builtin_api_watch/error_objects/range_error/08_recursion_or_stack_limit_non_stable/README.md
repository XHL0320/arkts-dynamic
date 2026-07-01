# Recursion or stack limit non-stable

本目录用于看护当前 Error 类型下的具体语义触发场景。

## Scope

递归过深、调用栈溢出等非稳定场景

## Typical Scenarios

- 部分引擎 RangeError
- 部分引擎 InternalError
- 不作为稳定标准必测

## Watch Points

- 部分引擎 RangeError
- 部分引擎 InternalError
- 不作为稳定标准必测

## ArkTS Boundary

记录 ArkTS 静态语言、动态 ArkTS、ArkRuntime 的行为边界。若运行时错误在 ArkTS 静态语言中被前移为编译期错误，应在本目录覆盖矩阵和 issue 文件中记录。
