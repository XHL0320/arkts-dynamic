# Test Strategy

## Strategy

1. 先确认 TS style decorator 支持范围；
2. 将语法、target、factory、transform、execution order、sendable regression 分层设计；
3. 对不确定 target 标记 Pending；
4. PR 10632 先生成 compiler bytecode regression，再补 XTS smoke；
5. ArkUI decorators 和 ArkTS annotation 机制不混入本轮主线。
