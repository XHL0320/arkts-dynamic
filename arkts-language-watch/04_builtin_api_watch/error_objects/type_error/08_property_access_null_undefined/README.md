# Property Access on Null / Undefined TypeError

本目录看护对 null 或 undefined 进行属性访问时触发的 TypeError。

典型场景：
- null.x
- undefined.x
- null["x"]
- undefined["x"]
- null.method()
- undefined.method()

看护重点：
- property get
- property set
- method call
- optional chaining 不应抛错的对照场景
- ArkTS 静态语言中是否前移为编译期错误
- 动态 ArkTS/ESObject 场景是否仍为运行时 TypeError
