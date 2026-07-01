# Static parse error

本目录用于看护当前 Error 类型下的具体语义触发场景。

## Scope

静态源码解析阶段 SyntaxError

## Typical Scenarios

- 非法 token
- 非法声明
- 非法语句
- 非法模块语法
- parser negative

## Watch Points

- 非法 token
- 非法声明
- 非法语句
- 非法模块语法
- parser negative

## ArkTS Boundary

记录 ArkTS 静态语言、动态 ArkTS、ArkRuntime 的行为边界。若运行时错误在 ArkTS 静态语言中被前移为编译期错误，应在本目录覆盖矩阵和 issue 文件中记录。
