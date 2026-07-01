# RequireObjectCoercible TypeError

本目录看护 ECMA 抽象操作 RequireObjectCoercible 触发的 TypeError。

语义：
当值为 null 或 undefined，却被要求作为可对象化值使用时，应抛 TypeError。

典型场景：
- String.prototype.trim.call(null)
- String.prototype.trim.call(undefined)
- Array.prototype.forEach.call(null, callback)
- Array.prototype.forEach.call(undefined, callback)
- Object.keys(null)
- Object.values(undefined)

看护重点：
- null receiver
- undefined receiver
- String.prototype 方法
- Array.prototype 方法
- Object 静态方法
- ArkTS 静态检查是否前移为编译期错误
