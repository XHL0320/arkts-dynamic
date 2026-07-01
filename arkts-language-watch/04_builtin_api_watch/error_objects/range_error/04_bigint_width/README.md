# BigInt width RangeError

本目录用于看护当前 Error 类型下的具体语义触发场景。

## Scope

BigInt.asIntN/asUintN 位宽非法触发 RangeError

## Typical Scenarios

- BigInt.asIntN(-1, 1n)
- BigInt.asUintN(-1, 1n)
- width 超出安全整数

## Watch Points

- BigInt.asIntN(-1, 1n)
- BigInt.asUintN(-1, 1n)
- width 超出安全整数

## ArkTS Boundary

记录 ArkTS 静态语言、动态 ArkTS、ArkRuntime 的行为边界。若运行时错误在 ArkTS 静态语言中被前移为编译期错误，应在本目录覆盖矩阵和 issue 文件中记录。
