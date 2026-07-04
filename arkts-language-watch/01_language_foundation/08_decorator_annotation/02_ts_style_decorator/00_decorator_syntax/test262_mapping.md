# test262 Mapping

| 方向 | Baseline Status | test262 是否覆盖 | ArkTS 是否适用 | 处理方式 | 备注 |
|---|---|---|---|---|---|
| TS style decorator | ArkTS-specific / TS-compatible | 否 | 待确认 | ArkTS compiler regression / XTS smoke | Not from test262 |

<!-- SYNTAX_DEEPENING_2026_07_03 -->

# test262 Mapping

## Conclusion

TS style decorator syntax is not directly covered by ECMAScript 2022 test262. ArkTS decorator syntax should be covered by ArkTS parser/checker tests and XTS smoke tests.

## Mapping Table

| 测试方向 | Baseline Status | test262 是否覆盖 | 原因 | 替代测试方式 |
|---|---|---|---|---|
| decorator basic syntax | TS-compatible / ArkTS-specific | 否 | TS style decorator 不属于 ES2022 | parser/checker |
| class decorator syntax | TS-compatible / ArkTS-specific | 否 | class decorator 是 ArkTS/TS 语法扩展 | parser/checker |
| property decorator syntax | TS-compatible / ArkTS-specific | 否 | property decorator 是 ArkTS/TS 语法扩展 | parser/checker |
| method decorator syntax | TS-compatible / ArkTS-specific | 否 | method decorator 是 ArkTS/TS 语法扩展 | parser/checker |
| decorator factory call syntax | TS-compatible / ArkTS-specific | 否 | factory call 语法不来自 test262 | parser/checker |
| invalid decorator position | ArkTS-specific | 否 | ArkTS parser/checker 规则 | fail_compile |
| modifier order | ArkTS-specific / TS-compatible | 否 | 修饰符顺序属于 ArkTS/TS 语法规则 | parser/checker |
| multiple decorators | TS-compatible / ArkTS-specific | 否 | 多 decorator 语法不来自 ES2022 | parser/checker |
| unsupported decorator target | ArkTS-specific | 否 | ArkTS 支持范围决定 | boundary / fail_compile |
| PR 10632 syntax reference | ArkTS-specific | 否 | 其核心不是 syntax，而是 transform/sendable/codegen | regression reference |

PR 10632 includes valid property decorator and decorator factory syntax, but its core issue belongs to transform/sendable/codegen regression, not syntax and not test262.
