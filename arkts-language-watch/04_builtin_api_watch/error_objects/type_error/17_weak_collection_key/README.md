# Weak Collection Key TypeError

本目录看护 WeakMap / WeakSet key 或 value 不满足弱引用要求时触发的 TypeError。

典型场景：
- new WeakMap([[1, "a"]])
- new WeakSet([1])
- WeakMap.prototype.set.call(wm, 1, "a")
- WeakSet.prototype.add.call(ws, 1)
- primitive key/value
- symbol key/value 支持差异

看护重点：
- CanBeHeldWeakly
- primitive key
- primitive value
- registered Symbol 与 non-registered Symbol，按运行时支持确认
- constructor iterable invalid weak key
- WeakRef/FinalizationRegistry 相关能力按支持情况确认
