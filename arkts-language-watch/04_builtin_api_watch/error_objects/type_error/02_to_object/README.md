# ToObject TypeError

本目录看护 ECMA 抽象操作 ToObject 触发的 TypeError。

语义：
ToObject(undefined) 或 ToObject(null) 应抛 TypeError。

典型场景：
- Object.assign(null, {})
- Reflect.ownKeys(null)
- Object.getPrototypeOf(null)
- Object.defineProperty(null, "x", { value: 1 })

看护重点：
- null 转对象
- undefined 转对象
- Object.* API
- Reflect.* API
- 与 RequireObjectCoercible 的规范入口差异
