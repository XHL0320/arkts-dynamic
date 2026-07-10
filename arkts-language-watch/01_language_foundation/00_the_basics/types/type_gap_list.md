# Type Gap List

## Summary

| 缺口类型 | 数量 |
|---|---:|
| P0 未覆盖 | 9 |
| P1 未覆盖 | 23 |
| P2 未覆盖 | 8 |
| boundary 待确认 | 7 |
| 需要后续规范比对 | 28 |
| 需要运行验证 | 28 |

## P0 Gaps

| ID | 类型方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| TYPE-BOOL-002 | boolean | ToBoolean falsy values | planned | 后续 operators/conversion 阶段补充 |
| TYPE-BOOL-003 | boolean | ToBoolean truthy values | planned | 后续 operators/conversion 阶段补充 |
| TYPE-BIG-002 | bigint | large bigint value | planned | bigint 支持确认后生成 |
| TYPE-SYM-001 | symbol | Symbol() uniqueness | planned | Symbol 支持确认后生成 |
| TYPE-SYM-003 | symbol | typeof symbol stable pass | boundary only | 当前仅 boundary，验证后升级 |
| TYPE-NU-001 | null_undefined | null basic value | covered indirectly | 后续可拆独立 smoke |
| TYPE-NU-002 | null_undefined | undefined basic value | covered indirectly | 后续可拆独立 smoke |
| TYPE-ARR-002 | array | Array.isArray dedicated case | covered indirectly | 后续 builtin/types 边界补独立文件 |
| TYPE-CONV-001 | conversion | ToBoolean falsy list | planned | 后续 conversion/operators 阶段补充 |

## P1 Gaps

| ID | 类型方向 | 测试点 | 当前状态 | 建议动作 |
|---|---|---|---|---|
| TYPE-NUM-005 | number | +0 / -0 distinction | planned | 后续 boundary 或 operators 补充 |
| TYPE-NUM-007 | number | Number() string conversion | planned | 后续 conversion 阶段补充 |
| TYPE-STR-002 | string | empty string behavior | planned | 后续 pass smoke |
| TYPE-STR-003 | string | template string | planned | 后续 string syntax smoke |
| TYPE-STR-004 | string | string immutability | planned | 后续 boundary |
| TYPE-STR-005 | string | String(number) conversion | planned | 后续 conversion 阶段补充 |
| TYPE-STR-006 | string | String(null/undefined) conversion | planned | 后续 conversion 阶段补充 |
| TYPE-BIG-005 | bigint | bigint loose equality | partially covered | Stage 1 merged in comparison case |
| TYPE-BIG-006 | bigint | bigint strict inequality | partially covered | Stage 1 merged in comparison case |
| TYPE-BIG-007 | bigint | 0n falsy | planned | bigint 支持确认后补充 |
| TYPE-BIG-008 | bigint | bigint comparison operators | planned | operators 阶段主负责 |
| TYPE-SYM-002 | symbol | Symbol.for shared symbol | planned | Symbol 支持确认后补充 |
| TYPE-SYM-004 | symbol | symbol property key | planned | Symbol 支持确认后补充 |
| TYPE-SYM-005 | symbol | new Symbol() TypeError | planned | Symbol 支持确认后补充 |
| TYPE-OBJ-003 | object | object instanceof Object | planned | 后续 instanceof 扩展 |
| TYPE-OBJ-004 | object | String(object) conversion | planned | conversion 阶段补充 |
| TYPE-ARR-004 | array | String(array) conversion | planned | conversion / builtin 边界 |
| TYPE-FUNC-002 | function_object | function instanceof Function | planned | 后续 function object smoke |
| TYPE-FUNC-003 | function_object | class typeof function | planned | class linkage 后补充 |
| TYPE-FUNC-004 | function_object | arrow function typeof | planned | function linkage 后补充 |
| TYPE-TYPEOF-007 | typeof | undeclared variable typeof | planned | declarations/types 联动确认 |
| TYPE-INST-005 | instanceof | null instanceof Object | planned | 后续 instanceof 扩展 |
| TYPE-TS-006 | typescript_type_syntax | type assertion syntax | planned | TS compatibility 阶段确认 |

## Boundary Pending Confirmation

| 文件路径/测试点 | 原因 | 后续确认方式 |
|---|---|---|
| `xts/boundary/type_typeof_symbol_boundary.ets` | Symbol 支持状态未确认 | 官方工具链编译运行 + test262 对照 |
| `xts/boundary/type_bigint_literal_boundary.ets` | bigint literal 支持状态未确认 | 官方工具链编译运行 |
| `xts/boundary/type_ts_annotation_boundary.ets` | TS 类型标注兼容边界未确认 | 官方工具链编译验证 |
| `xts/boundary/type_union_syntax_boundary.ets` | union type 语法兼容边界未确认 | 官方工具链编译验证 |
| `xts/boundary/type_literal_syntax_boundary.ets` | literal type 语法兼容边界未确认 | 官方工具链编译验证 |
| `xts/boundary/type_alias_syntax_boundary.ets` | type alias 语法兼容边界未确认 | 官方工具链编译验证 |
| `xts/boundary/type_any_unknown_boundary.ets` | any / unknown 语法兼容边界未确认 | 官方工具链编译验证 |

## Validation Pending

| 文件路径/测试点 | 需要验证内容 | 建议验证方式 |
|---|---|---|
| `xts/pass/` 下 18 个 pass 用例 | 是否可在目标动态 ArkTS 环境编译运行 | DevEco / hvigor / ohosTest smoke |
| `xts/fail_runtime/` 下 3 个 fail_runtime 用例 | 是否按预期抛出运行时异常 | ohosTest 或最小运行器 |
| `xts/boundary/` 下 7 个 boundary 用例 | 语法/运行时支持状态 | 官方工具链编译验证 |

## Mapping Pending

| 测试点 | 需要映射内容 | 后续动作 |
|---|---|---|
| typeof | ECMAScript `typeof` operator 语义与 test262 覆盖 | 00_the_basics 总览后统一映射 |
| null / undefined | equality、property access、ToBoolean/ToNumber 差异 | operators/conversion 联动 |
| number / bigint | BigInt 支持、混合运算边界 | operators 阶段主映射 |
| instanceof | `instanceof` operator 与 class prototype 行为 | class/operators 联动 |
| TypeScript type syntax | 动态 ArkTS 对 TS 类型语法的支持矩阵 | TypeScript compatibility 阶段展开 |
