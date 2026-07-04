# Decorator Coverage Note Cleanup Report

## Summary

| 指标 | 数量 |
|---|---|
| 扫描 coverage 项数量 | 100 |
| 清理备注数量 | 68 |
| 未变化备注数量 | 32 |

## Updated Note Examples

| 清理前 | 清理后 |
|---|---|
| Not from test262; Not from test262 | Not from test262 |
| Not from test262; Not from test262 | Not from test262 |
| Not from test262; Not from test262 | Not from test262 |
| Not from test262; Not from test262 | Not from test262 |
| Not from test262; Not from test262 | Not from test262 |
| Not from test262; Not from test262 | Not from test262 |
| Not from test262; Not from test262 | Not from test262 |
| Not from test262; Not from test262 | Not from test262 |
| Not from test262; Not from test262 | Not from test262 |
| bytecode regression; Not from test262; Not from test262 | bytecode regression; Not from test262 |

## Rule

coverage matrix 备注字段应避免重复标签，统一使用：

- PR 10632
- bytecode regression
- Pending target support
- Pending runtime semantics
- Execution order pending
- Not from test262
