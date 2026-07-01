# Built-in Constructor NewTarget TypeError

本目录看护内建构造器必须使用 new 的 TypeError。

典型场景：
- Map()
- Set()
- WeakMap()
- WeakSet()
- Promise()
- ArrayBuffer()
- DataView()
- TypedArray constructors without new
- Reflect.construct newTarget 非 constructor

看护重点：
- NewTarget undefined
- builtin requires new
- builtin allows function call 的对照，例如 Array/Object/Number/String/Boolean
- Reflect.construct newTarget check
