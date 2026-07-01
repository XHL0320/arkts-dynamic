# Unsupported feature difference

本目录用于看护当前 Error 类型下的具体语义触发场景。

## Scope

SuppressedError / 显式资源管理支持差异

## Typical Scenarios

- 构造器是否存在
- 语法是否支持
- runtime 是否支持
- test262 排除

## Watch Points

- 构造器是否存在
- 语法是否支持
- runtime 是否支持
- test262 排除

## ArkTS Boundary

记录 ArkTS 静态语言、动态 ArkTS、ArkRuntime 的行为边界。若运行时错误在 ArkTS 静态语言中被前移为编译期错误，应在本目录覆盖矩阵和 issue 文件中记录。
