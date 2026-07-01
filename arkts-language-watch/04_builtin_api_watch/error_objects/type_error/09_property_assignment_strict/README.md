# Strict Property Assignment TypeError

本目录看护 strict mode 下属性写入失败触发的 TypeError。

典型场景：
- 写 non-writable property
- 写 getter-only property
- 写 Object.freeze 对象属性
- 给 non-extensible object 新增属性
- const reassignment
- delete non-configurable property

看护重点：
- strict mode 行为
- readonly/non-writable
- getter-only
- non-extensible
- delete non-configurable
- 与 ArkTS readonly/const 编译期错误边界
