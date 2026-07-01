# Proxy Invariants TypeError

本目录看护 Proxy invariants 违反规范触发的 TypeError。

典型场景：
- getPrototypeOf invariant
- setPrototypeOf invariant
- isExtensible invariant
- preventExtensions invariant
- getOwnPropertyDescriptor invariant
- defineProperty invariant
- has invariant
- get invariant
- set invariant
- deleteProperty invariant
- ownKeys invariant
- apply trap non-callable
- construct trap non-constructor
- revoked proxy access

看护重点：
- Proxy trap return type
- Proxy invariant checks
- revoked proxy
- target non-extensible
- non-configurable property
- non-writable property
- 如果 ArkTS/ArkRuntime 不支持 Proxy，应记录到差异或 excluded cases
