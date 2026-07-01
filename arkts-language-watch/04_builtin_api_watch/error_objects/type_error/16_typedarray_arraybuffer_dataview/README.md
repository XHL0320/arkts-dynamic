# TypedArray / ArrayBuffer / DataView TypeError

本目录看护 TypedArray、ArrayBuffer、DataView 相关 TypeError。

典型场景：
- TypedArray prototype method receiver 非 TypedArray
- DataView prototype method receiver 非 DataView
- ArrayBuffer prototype method receiver 非 ArrayBuffer
- detached buffer
- BigInt typed array 写入非 BigInt 值
- Number typed array 写入 BigInt 值
- TypedArray constructor source 非法
- SharedArrayBuffer 差异，按运行时支持确认

看护重点：
- typed array receiver
- ArrayBuffer receiver
- DataView receiver
- detached buffer
- value type mismatch
- BigInt64Array / BigUint64Array
- 与 RangeError 的边界区分
