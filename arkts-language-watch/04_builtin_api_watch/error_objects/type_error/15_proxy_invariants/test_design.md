# Test Design

## Positive / Non-Throw Control Cases

记录不应抛 TypeError 的对照用例。

## TypeError Runtime Cases

- Object.getPrototypeOf(proxy): 应覆盖 getPrototypeOf invariant。
- Reflect.ownKeys(proxy): 应覆盖 ownKeys invariant。
- proxy.x: 应覆盖 get invariant。
- proxy.x = 1: 应覆盖 set invariant。
- proxy after revoke: 应覆盖 revoked proxy。

## Boundary Cases

记录边界场景。

## ArkTS Static Boundary Cases

记录在 ArkTS 静态语言中可能被前移为编译期错误的场景。

## Built-in Family Coverage

- Proxy [[GetPrototypeOf]]
- Proxy [[OwnPropertyKeys]]
- Proxy [[Get]]
- Proxy [[Set]]
- ValidateNonRevokedProxy

## test262 Candidate Cases

记录可参考或改造的 test262 用例方向，优先搜索 `15_proxy_invariants`、TypeError、相关抽象操作和代表 API。

## Regression Cases

记录历史缺陷或后续回归用例。
