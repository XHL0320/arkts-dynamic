# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- new arrowFunction(): 应覆盖 arrow function with new。
- new asyncFunction(): 应覆盖 async function with new。
- new Math(): 应覆盖 Math with new。
- new Symbol(): 应覆盖 Symbol with new。
- Reflect.construct(nonCtor, []): 应覆盖 Reflect.construct target。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- IsConstructor
- IsConstructor
- IsConstructor
- IsConstructor
- IsConstructor

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `06_construct_non_constructor`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
