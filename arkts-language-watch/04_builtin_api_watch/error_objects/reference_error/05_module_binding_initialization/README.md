# Module binding initialization

本目录用于看护当前 Error 类型下的具体语义触发场景。

## Scope

module import/export 绑定初始化前访问

## Typical Scenarios

- cyclic import TDZ
- live binding before initialized
- XTS 跨模块

## Watch Points

- cyclic import TDZ
- live binding before initialized
- XTS 跨模块

## ArkTS Boundary

记录 ArkTS 静态语言、动态 ArkTS、ArkRuntime 的行为边界。若运行时错误在 ArkTS 静态语言中被前移为编译期错误，应在本目录覆盖矩阵和 issue 文件中记录。
