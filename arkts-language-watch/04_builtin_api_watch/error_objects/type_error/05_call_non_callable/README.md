# Call Non-Callable TypeError

本目录看护调用非 callable 对象时触发的 TypeError。

典型场景：
- number()
- object()
- null()
- undefined()
- method value is not callable
- optional call target is non-callable
- Function.prototype.call/apply receiver 非 callable

看护重点：
- IsCallable 检查
- 普通函数调用
- 方法调用
- optional call
- call/apply/bind
- ArkTS 静态语言是否前移为编译期错误
