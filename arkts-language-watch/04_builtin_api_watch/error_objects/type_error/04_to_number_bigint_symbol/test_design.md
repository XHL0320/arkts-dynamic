# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- +Symbol('x'): 应覆盖 Symbol to number unary plus。
- Number(Symbol('x')): 应覆盖 Number(Symbol)。
- 1 + Symbol('x'): 应覆盖 Symbol arithmetic。
- BigInt(Symbol('x')): 应覆盖 BigInt(Symbol)。
- BigInt64Array write Number: 应覆盖 BigInt typed array number write。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- ToNumber
- ToNumber
- ToNumber
- ToBigInt
- ToBigInt

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `04_to_number_bigint_symbol`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
