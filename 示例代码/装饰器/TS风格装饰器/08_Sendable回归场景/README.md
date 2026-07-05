# Sendable + Decorator Regression 示例

本目录用于说明 PR10632 相关的 sendable-specific decorator 风险。

## PR10632 正确归类

- 主归属：property decorator + sendable class + transformer + binder + bytecode
- 不是 syntax bug
- 不是 class decorator bug
- 不是 method decorator bug
- 不是 module scope 主问题
- 不是 execution order bug

## 示例边界

- local binding 降级示例不是完整 PR10632 imported-binding 原始复现；
- imported binding 原始形态只写 markdown 说明；
- 本示例目录不生成真实 bytecode expected。