# eval does not normally throw EvalError

本目录用于看护当前 Error 类型下的具体语义触发场景。

## Scope

现代 eval 通常不主动抛 EvalError

## Typical Scenarios

- eval SyntaxError
- eval 运行时具体错误
- 兼容保留
- eval 支持确认

## Watch Points

- eval SyntaxError
- eval 运行时具体错误
- 兼容保留
- eval 支持确认

## ArkTS Boundary

记录 ArkTS 静态语言、动态 ArkTS、ArkRuntime 的行为边界。若运行时错误在 ArkTS 静态语言中被前移为编译期错误，应在本目录覆盖矩阵和 issue 文件中记录。
