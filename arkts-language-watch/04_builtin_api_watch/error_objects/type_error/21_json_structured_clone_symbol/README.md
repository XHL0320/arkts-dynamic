# JSON / Structured Clone / Symbol Special TypeError

本目录看护 JSON、structured clone、Symbol、BigInt 等特殊 TypeError。

典型场景：
- JSON.stringify({ x: 1n })
- JSON.stringify(BigInt)
- structuredClone 不支持值，按运行时支持确认
- Symbol wrapper / primitive conversion 特殊场景
- Atomics / SharedArrayBuffer 边界，按运行时支持确认

看护重点：
- JSON.stringify BigInt TypeError
- structuredClone support difference
- Symbol special conversion
- runtime feature support matrix
