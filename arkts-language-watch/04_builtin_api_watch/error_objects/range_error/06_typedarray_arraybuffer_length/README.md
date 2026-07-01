# TypedArray / ArrayBuffer Length RangeError

本目录用于看护当前 Error 类型下的具体语义触发场景。

## Scope

TypedArray / ArrayBuffer 长度或偏移非法

## Typical Scenarios

- new ArrayBuffer(-1)
- TypedArray offset 越界
- DataView offset/length 越界

## Watch Points

- new ArrayBuffer(-1)
- TypedArray offset 越界
- DataView offset/length 越界

## ArkTS Boundary

记录 ArkTS 静态语言、动态 ArkTS、ArkRuntime 的行为边界。若运行时错误在 ArkTS 静态语言中被前移为编译期错误，应在本目录覆盖矩阵和 issue 文件中记录。
