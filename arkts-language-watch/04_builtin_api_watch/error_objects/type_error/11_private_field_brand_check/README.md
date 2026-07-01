# Private Field Brand Check TypeError

本目录看护 private field / method / accessor 在错误对象上访问时触发的 TypeError。

典型场景：
- private field access on wrong object
- private method access on wrong object
- private getter/setter access on wrong object
- A.prototype.method.call({})

看护重点：
- private field brand check
- private method brand check
- private accessor brand check
- inheritance 场景
- static private 场景
- ArkTS 是否支持 ECMAScript private field 语法需确认
