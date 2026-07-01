# SpeciesConstructor TypeError

本目录看护 Symbol.species 返回值不是 constructor 时触发的 TypeError。

典型场景：
- Array subclass Symbol.species 返回普通对象
- Promise subclass Symbol.species 返回普通对象
- RegExp subclass Symbol.species 返回普通对象
- TypedArray subclass Symbol.species 返回普通对象，按运行时支持确认

看护重点：
- SpeciesConstructor
- @@species getter
- species is null/undefined
- species is not constructor
- Array.prototype.map/filter/slice
- Promise.prototype.then
- TypedArray.prototype.map/filter/slice
