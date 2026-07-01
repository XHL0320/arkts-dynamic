# Invalid Property Descriptor TypeError

本目录看护 Property Descriptor 非法组合触发的 TypeError。

典型场景：
- get 不是 function 或 undefined
- set 不是 function 或 undefined
- descriptor 同时包含 get/set 与 value/writable
- Object.defineProperty 非法 descriptor
- Object.defineProperties 非法 descriptor

看护重点：
- accessor descriptor 校验
- data descriptor 校验
- accessor/data descriptor 混用
- defineProperty
- defineProperties
- Reflect.defineProperty
