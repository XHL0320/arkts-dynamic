# Invalid Receiver / Internal Slot TypeError

本目录看护内建方法 receiver 非法或缺少必要内部槽时触发的 TypeError。

语义：
许多内建方法要求 this 具有特定内部槽，例如 [[MapData]]、[[SetData]]、[[DateValue]]、[[RegExpMatcher]]、[[PromiseState]]、[[ViewedArrayBuffer]] 等。receiver 不满足要求时应抛 TypeError。

典型场景：
- Map.prototype.get.call({}, "a")
- Set.prototype.add.call({}, 1)
- WeakMap.prototype.has.call({}, {})
- WeakSet.prototype.add.call({}, {})
- Date.prototype.getTime.call({})
- RegExp.prototype.exec.call({}, "abc")
- Promise.prototype.then.call({}, callback)
- Int8Array.prototype.set.call({}, [1])
- DataView.prototype.getInt8.call({}, 0)

看护重点：
- Map receiver
- Set receiver
- WeakMap receiver
- WeakSet receiver
- Date receiver
- RegExp receiver
- Promise receiver
- TypedArray receiver
- ArrayBuffer receiver
- DataView receiver
- Iterator receiver
