# Async / Promise Protocol TypeError

本目录看护 Promise、thenable、async protocol 违反规范触发的 TypeError。

典型场景：
- Promise.prototype.then.call({}, callback)
- Promise.resolve.call({}, value)
- Promise constructor resolver 非 callable
- then 属性存在但非 callable 的差异场景
- Promise combinator iterable 协议错误
- async iterator protocol 错误，按运行时支持确认

看护重点：
- Promise receiver
- Promise constructor
- NewPromiseCapability
- thenable assimilation
- Promise.all
- Promise.race
- Promise.any
- Promise.allSettled
- async/await 边界
