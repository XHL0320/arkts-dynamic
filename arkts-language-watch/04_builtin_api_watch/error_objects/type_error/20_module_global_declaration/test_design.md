# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- global function declaration: 应覆盖 CanDeclareGlobalFunction false。
- global var declaration: 应覆盖 CanDeclareGlobalVar false。
- host global object: 应覆盖 host global restrictions。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- GlobalDeclarationInstantiation
- GlobalDeclarationInstantiation
- Host Environment

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `20_module_global_declaration`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
