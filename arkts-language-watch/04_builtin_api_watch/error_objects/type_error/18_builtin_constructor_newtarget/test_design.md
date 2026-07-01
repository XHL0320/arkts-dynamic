# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- Map(): 应覆盖 Map without new。
- Set(): 应覆盖 Set without new。
- Promise(): 应覆盖 Promise without new。
- ArrayBuffer(): 应覆盖 ArrayBuffer without new。
- Reflect.construct(Array, [], {}): 应覆盖 Reflect.construct newTarget。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- NewTarget
- NewTarget
- NewTarget
- NewTarget
- IsConstructor

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `18_builtin_constructor_newtarget`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
