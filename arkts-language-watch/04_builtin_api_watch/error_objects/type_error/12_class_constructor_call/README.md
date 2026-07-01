# Class Constructor Call TypeError

本目录看护 class constructor 被普通调用或派生类初始化规则错误触发的 TypeError。

典型场景：
- class A {}; A()
- derived class this before super
- super constructor 调用规则
- super() 返回非法值场景

看护重点：
- class constructor must be called with new
- derived constructor this initialization
- super() call rules
- ArkTS class 语义差异
