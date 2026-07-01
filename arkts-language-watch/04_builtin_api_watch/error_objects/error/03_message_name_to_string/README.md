# Message / Name / toString

本目录用于看护当前 Error 类型下的具体语义触发场景。

## Scope

name/message/toString 组合

## Typical Scenarios

- name 为空
- message 为空
- 自定义 name
- 自定义 message
- toString 格式

## Watch Points

- name 为空
- message 为空
- 自定义 name
- 自定义 message
- toString 格式

## ArkTS Boundary

记录 ArkTS 静态语言、动态 ArkTS、ArkRuntime 的行为边界。若运行时错误在 ArkTS 静态语言中被前移为编译期错误，应在本目录覆盖矩阵和 issue 文件中记录。
