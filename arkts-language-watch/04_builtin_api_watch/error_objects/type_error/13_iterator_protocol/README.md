# Iterator Protocol TypeError

本目录看护 Iterator Protocol 违反规范触发的 TypeError。

典型场景：
- @@iterator 不是 callable
- @@iterator 返回非 object
- iterator.next 不是 callable
- iterator.next() 返回非 object
- iterator.return 不是 callable
- for-of
- spread syntax
- Array.from
- Map/Set constructor
- Promise combinators

看护重点：
- GetIterator
- IteratorNext
- IteratorComplete
- IteratorValue
- IteratorClose
- IterableToList
- for-of
- spread
- destructuring
- Array.from
- Map/Set constructor
- Promise.all/race/any/allSettled
