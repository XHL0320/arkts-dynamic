# ToPrimitive TypeError

本目录看护对象转原始值失败时触发的 TypeError。

语义：
当 Symbol.toPrimitive、valueOf、toString 等转换方法返回对象而不是 primitive 时，应抛 TypeError。

典型场景：
- Symbol.toPrimitive 返回 object
- valueOf 返回 object 且 toString 返回 object
- ordinary object primitive conversion failure
- String(obj)
- Number(obj)
- obj + ""

看护重点：
- @@toPrimitive 返回对象
- valueOf/toString 返回对象
- hint 为 string/number/default 的差异
- 运算符触发 ToPrimitive
