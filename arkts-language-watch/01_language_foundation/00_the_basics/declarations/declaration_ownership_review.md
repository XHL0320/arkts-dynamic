# Declaration Ownership Review

## Purpose

本文件用于确认 declarations 章节只负责声明共性规则，避免把 Function / Class / Module / Annotation 的专属行为误归入 declarations。

## Ownership Rule

| 规则类型 | 主归属目录 | Declarations 中处理方式 |
|---|---|---|
| var / let / const binding | `00_the_basics/declarations` | 主负责 |
| hoisting / TDZ / duplicate declaration | `00_the_basics/declarations` | 主负责 |
| function declaration hoisting | `00_the_basics/declarations` | 主负责，Function 可做集成说明 |
| function parameters / return / call / arguments | `01_function` | 不在 declarations 展开 |
| function scope / closure / arrow function | `01_function` | 不在 declarations 展开 |
| class declaration TDZ / duplicate | `00_the_basics/declarations` | 主负责 |
| class field / constructor / method | `02_class` | 不在 declarations 展开 |
| import/export declaration binding | `00_the_basics/declarations` | 声明绑定层面主负责 |
| module resolution / circular import / cross-file behavior | `06_module` | 不在 declarations 展开 |
| annotation declaration mapping | `00_the_basics/declarations` | 只做声明形态映射 |
| annotation field / retention / target / runtime access | `08_annotation` | 不在 declarations 展开 |

## Potential Misplaced Cases

| 文件路径 | 测试点 | 是否疑似误放 declarations | 建议处理 |
|---|---|---|---|
| N/A | 当前未发现实际 `.ets` 明确误放到 declarations | 否 | keep_as_declaration |

## Cross Feature Ownership

| 交叉点 | Declarations 负责 | 关联章节负责 | 说明 |
|---|---|---|---|
| function declaration | binding / hoisting / duplicate | call / parameter / return | 避免重复，Stage 1 只覆盖声明绑定层面 |
| class declaration | binding / TDZ / duplicate | class body / member behavior | 避免展开 constructor、field、method |
| import/export declaration | binding / duplicate / readonly | module resolution / re-export / circular import | helper module 仅服务 declaration-level binding smoke |
| annotation declaration | declaration-level mapping | annotation semantics | 后续由 `08_annotation` 展开语义 |

## Conclusion

当前 declarations 首轮 `.ets` 用例集中在声明绑定、提升、TDZ、重复声明、import/export binding read-only 等共性规则。未发现 Function 参数/return/call、Class member、Module resolution、Annotation runtime semantics 等专属行为被作为 declarations 主线展开。
