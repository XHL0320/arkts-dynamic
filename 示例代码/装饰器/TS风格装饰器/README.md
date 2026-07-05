# ArkTS TS-style Decorator 示例全集

## 目录定位

本目录用于收集 ArkTS TS-style decorator 相关示例代码，供语言测试人员理解语法、语义、测试设计维度时参考。

## 本目录不是 XTS

这些代码主要用于学习、查阅和测试设计参考。  
如果需要转为 XTS / ohosTest，请参考 `arkts-language-watch` 下的测试设计与用例。

## 不包含内容

- 不包含 ArkUI UI decorator；
- 不包含 `@interface` annotation；
- 不包含真实 bytecode expected；
- 不包含 compiler expected；
- 不包含 DevEco ohosTest 工程入口。

## 示例分类

| 分类 | 内容 |
|---|---|
| 总览 | class/property/method decorator 基础概念 |
| 类装饰器 | class decorator 基础、factory、多装饰器 |
| 属性装饰器 | instance/static property、field initializer、factory 参数 |
| 方法装饰器 | instance/static method、factory、继承 |
| 装饰器工厂 | 无参、单参、多参、IIFE、arrow 参数 |
| 执行顺序 | factory 求值、decorator 调用、多 decorator |
| 模块作用域 | imported decorator、imported factory、imported binding |
| 类特性组合 | static、readonly、constructor、inheritance、override、implements |
| Sendable 回归 | PR10632 sendable-specific 示例说明 |
| 负向与边界 | 不建议直接运行的错误/边界示例 |