# ToNumber / ToBigInt / Symbol Conversion TypeError

本目录看护 Symbol、BigInt、Number 转换相关 TypeError。

典型场景：
- +Symbol("x")
- Number(Symbol("x"))
- 1 + Symbol("x")
- BigInt(Symbol("x"))
- BigInt.asIntN 相关非 BigInt 参数边界
- BigInt typed array 写入非 BigInt 值

看护重点：
- Symbol 转 Number
- Symbol 参与算术
- BigInt 隐式转换
- BigInt 与 Number 混合算术
- 与 RangeError / SyntaxError 的边界区分
