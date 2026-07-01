# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- Object.defineProperty(obj, 'x', { get: 1 }): 应覆盖 getter not callable。
- Object.defineProperty(obj, 'x', { set: 1 }): 应覆盖 setter not callable。
- { get(){}, value: 1 }: 应覆盖 accessor/data mixed。
- Object.defineProperties(obj, descs): 应覆盖 defineProperties invalid。
- Reflect.defineProperty(obj, 'x', desc): 应覆盖 Reflect.defineProperty invalid。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- ValidateAndApplyPropertyDescriptor
- ValidateAndApplyPropertyDescriptor
- ToPropertyDescriptor
- Object.defineProperties
- Reflect.defineProperty

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `10_property_descriptor_invalid`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
