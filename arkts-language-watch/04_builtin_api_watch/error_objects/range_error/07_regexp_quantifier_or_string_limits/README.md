# RegExp or string limit RangeError

本目录用于看护当前 Error 类型下的具体语义触发场景。

## Scope

RegExp 或字符串长度限制相关 RangeError

## Typical Scenarios

- 正则量词范围差异
- 字符串长度过大
- SyntaxError / RangeError 边界

## Watch Points

- 正则量词范围差异
- 字符串长度过大
- SyntaxError / RangeError 边界

## ArkTS Boundary

记录 ArkTS 静态语言、动态 ArkTS、ArkRuntime 的行为边界。若运行时错误在 ArkTS 静态语言中被前移为编译期错误，应在本目录覆盖矩阵和 issue 文件中记录。
