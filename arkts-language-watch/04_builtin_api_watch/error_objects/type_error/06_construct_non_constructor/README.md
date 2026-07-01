# Construct Non-Constructor TypeError

本目录看护 new / Reflect.construct 构造非 constructor 对象时触发的 TypeError。

典型场景：
- new arrowFunction()
- new asyncFunction()
- new generatorFunction()，按运行时支持情况确认
- new Math()
- new Symbol()
- Reflect.construct(target, args) target 非 constructor

看护重点：
- IsConstructor 检查
- arrow function 无 [[Construct]]
- builtin 非构造器
- Reflect.construct
- ArkTS 静态检查与运行时边界
