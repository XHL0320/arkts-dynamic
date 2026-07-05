# Stage 11 DevEco ohosTest / Fail Compile Validation Report

## Summary

| 指标 | 数量 |
|---|---:|
| 扫描 .ets 文件数量 | 141 |
| 正向候选文件数量 | 73 |
| 迁移到 ohosTest 文件数量 | 11 |
| ohosTest 注册 suite 数量 | 10 |
| ohosTest 编译通过数量 | 10 suites / final build success |
| ohosTest 运行 PASS 数量 | 10 decorator suites |
| ohosTest 运行 FAIL 数量 | 0 decorator suites |
| fail_compile 文件数量 | 25 |
| fail_compile 预期失败通过数量 | 25 |
| fail_compile 结果不符数量 | 0 |
| boundary 文件数量 | 32 |
| candidate 文件数量 | 34 |
| sendable 非 07 目录数量 | 0 |
| PR10632 非 07 主归属数量 | 0 |
| 真实 bytecode expected 数量 | 0 |

说明：完整工程全量 ohosTest 运行结果为 Tests run: 108, Failure: 0, Error: 1, Pass: 107，其中 1 个 Error 来自既有 ClassRuntimeBehavior_Boundary_1，不是本次 decorator suite。10 个 decorator suite 已使用 class filter 独立运行，均 PASS。

## Positive ohosTest Validation

| 源文件 | ohosTest 文件 | suite / it | 编译结果 | 运行结果 | 修正动作 |
|---|---|---|---|---|---|
| `00_decorator_syntax/xts/pass/*.ets` | `entry/src/ohosTest/ets/test/decorator/decorator_syntax_positive.test.ets` | `DECORATOR_SYNTAX_0001_class_property_method_factory_pass` | build pass | PASS | generated Hypium suite |
| `01_class_decorator/xts/pass/*.ets` | `entry/src/ohosTest/ets/test/decorator/decorator_class_positive.test.ets` | `DECORATOR_CLASS_0001_basic_factory_multiple_static_pass` | build pass | PASS | generated Hypium suite |
| `02_property_decorator/xts/pass/*.ets` | `entry/src/ohosTest/ets/test/decorator/decorator_property_positive.test.ets` | `DECORATOR_PROPERTY_CORE_instance_static_factory_pass` | build pass | PASS | generated Hypium suite |
| `03_method_decorator/xts/pass/*.ets` | `entry/src/ohosTest/ets/test/decorator/decorator_method_positive.test.ets` | `DECORATOR_METHOD_0001_instance_static_factory_multiple_pass` | build pass | PASS | generated Hypium suite |
| `04_decorator_factory/xts/pass/*.ets` | `entry/src/ohosTest/ets/test/decorator/decorator_factory_positive.test.ets` | `DECORATOR_FACTORY_0001_no_single_multi_iife_pass` | build pass | PASS | generated Hypium suite |
| `05_decorator_transform/xts/smoke,integration/*.ets` | `entry/src/ohosTest/ets/test/decorator/decorator_transform_positive.test.ets` | `DECORATOR_TRANSFORM_0001_call_once_no_duplicate_smoke` | build pass | PASS | generated Hypium suite |
| `06_decorator_execution_order/xts/smoke,integration/*.ets` | `entry/src/ohosTest/ets/test/decorator/decorator_order_positive.test.ets` | `DECORATOR_ORDER_0001_multiple_and_factory_count_smoke` | build pass | PASS | generated Hypium suite |
| `09_decorator_module_scope/xts/integration/*.ets` | `entry/src/ohosTest/ets/test/decorator/decorator_module_scope_positive.test.ets` | `DECORATOR_MODULE_0001_imported_decorator_factory_binding_integration` | build pass | PASS | generated Hypium suite |
| `08_decorator_with_class_features/xts/pass,smoke,integration/*.ets` | `entry/src/ohosTest/ets/test/decorator/decorator_class_features_positive.test.ets` | `DECORATOR_CLASS_FEATURE_0001_static_readonly_inheritance_pass` | build pass | PASS | generated Hypium suite |
| `07_decorator_with_sendable/xts/smoke,regression/*.ets` | `entry/src/ohosTest/ets/test/decorator/decorator_sendable_regression_positive.test.ets` | `DECORATOR_SENDABLE_PR10632_local_binding_degraded_smoke` | build pass | PASS | generated Hypium suite |

## Fail Compile Validation

| 源文件 | 预期错误 | 工具链结果 | 当前状态 | 修正动作 |
|---|---|---|---|---|
| */xts/fail_compile/*.ets | compile failure | 25/25 non-zero hvigor exit | validated fail_compile by official toolchain | no source change; used temporary imported probe |

## Boundary / Candidate Not Executed

| 文件 | 类型 | 不执行原因 | 当前状态 |
|---|---|---|---|
| `*/xts/boundary/*.ets` | boundary | semantics pending; not part of real execution | boundary created |
| `*/compiler_expected_candidates/*.md` | candidate | expected output not generated | candidate created |
| `*/bytecode_expected_candidates/*.md` | bytecode candidate | real bytecode expected not generated | bytecode candidate created |

## Module Scope Import Validation

| 源文件 | helper module | import 路径 | 结果 |
|---|---|---|---|
| `09_decorator_module_scope` consolidated suite | `decorator/modules/decorator_module_helpers.ets` | `./modules/decorator_module_helpers` | PASS |

## Sendable / PR10632 Validation

| 检查项 | 结果 |
|---|---|
| sendable-specific 是否只来自 07 | 是 |
| 普通目录是否出现 "use sendable" | 否 |
| PR10632 主归属是否仍为 07 | 是 |
| local-binding degraded smoke 是否明确标注 | 是 |
| imported-binding 原始复现是否仍为 candidate | 是 |
| 是否生成真实 bytecode expected | 否 |

## Remaining Risks

| 风险 | 当前状态 | 下一步建议 |
|---|---|---|
| method descriptor/equivalent structure | positive smoke compiled/run; descriptor details still pending | 后续 compiler expected |
| class decorator target/return value | positive smoke compiled/run; target/return details still pending | 后续 compiler expected |
| execution fixed order | call count smoke PASS; fixed order not asserted | 后续 compiler expected/order-specific test |
| module multi-file import | helper import path PASS in ohosTest | expand to original multi-file corpus if needed |
| PR10632 real bytecode expected | candidate only | Stage 12 bytecode expected |