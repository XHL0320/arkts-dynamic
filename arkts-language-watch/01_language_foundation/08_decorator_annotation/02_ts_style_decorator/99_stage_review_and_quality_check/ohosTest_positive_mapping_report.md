# ohosTest Positive Mapping Report

## Summary

| 指标 | 数量 |
|---|---:|
| 迁移正向源文件数量 | 73 scanned / 10 consolidated suites |
| 生成 ohosTest 测试文件数量 | 11 |
| 注册测试 suite 数量 | 10 |
| 实际运行 PASS 数量 | 10 |
| 实际运行 FAIL 数量 | 0 |
| 转 boundary 数量 | 0 |
| 未迁移数量 | 63 individual files, covered or deferred by consolidated suites |

## Mapping

| 源文件 | 源类型 | Coverage ID | ohosTest 文件 | it 用例名 | 运行结果 | 备注 |
|---|---|---|---|---|---|---|
| `00_decorator_syntax/xts/pass/*.ets` | pass | DECORATOR-SYNTAX core | `entry/src/ohosTest/ets/test/decorator/decorator_syntax_positive.test.ets` | `DECORATOR_SYNTAX_0001_class_property_method_factory_pass` | PASS | consolidated Stage 0 syntax positive suite |
| `01_class_decorator/xts/pass/*.ets` | pass | DECORATOR-CLASS core | `entry/src/ohosTest/ets/test/decorator/decorator_class_positive.test.ets` | `DECORATOR_CLASS_0001_basic_factory_multiple_static_pass` | PASS | consolidated Stage 4 class decorator suite |
| `02_property_decorator/xts/pass/*.ets` | pass | DECORATOR-PROPERTY core | `entry/src/ohosTest/ets/test/decorator/decorator_property_positive.test.ets` | `DECORATOR_PROPERTY_CORE_instance_static_factory_pass` | PASS | property positive suite created for validation |
| `03_method_decorator/xts/pass/*.ets` | pass | DECORATOR-METHOD core | `entry/src/ohosTest/ets/test/decorator/decorator_method_positive.test.ets` | `DECORATOR_METHOD_0001_instance_static_factory_multiple_pass` | PASS | consolidated Stage 3 method decorator suite |
| `04_decorator_factory/xts/pass/*.ets` | pass | DECORATOR-FACTORY core | `entry/src/ohosTest/ets/test/decorator/decorator_factory_positive.test.ets` | `DECORATOR_FACTORY_0001_no_single_multi_iife_pass` | PASS | factory return decorators converted to arrow functions for ArkTS static rule |
| `05_decorator_transform/xts/smoke,integration/*.ets` | smoke/integration | DECORATOR-TRANSFORM core | `entry/src/ohosTest/ets/test/decorator/decorator_transform_positive.test.ets` | `DECORATOR_TRANSFORM_0001_call_once_no_duplicate_smoke` | PASS | call once/no duplicate smoke |
| `06_decorator_execution_order/xts/smoke,integration/*.ets` | smoke/integration | DECORATOR-ORDER core | `entry/src/ohosTest/ets/test/decorator/decorator_order_positive.test.ets` | `DECORATOR_ORDER_0001_multiple_and_factory_count_smoke` | PASS | does not assert fixed order |
| `09_decorator_module_scope/xts/integration/*.ets` | integration | DECORATOR-MODULE core | `entry/src/ohosTest/ets/test/decorator/decorator_module_scope_positive.test.ets` | `DECORATOR_MODULE_0001_imported_decorator_factory_binding_integration` | PASS | helper module path validated |
| `08_decorator_with_class_features/xts/pass,smoke,integration/*.ets` | pass/smoke/integration | DECORATOR-CLASS-FEATURE core | `entry/src/ohosTest/ets/test/decorator/decorator_class_features_positive.test.ets` | `DECORATOR_CLASS_FEATURE_0001_static_readonly_inheritance_pass` | PASS | static/readonly/inheritance smoke |
| `07_decorator_with_sendable/xts/smoke,regression/*.ets` | smoke/regression | DECORATOR-SENDABLE PR10632 local binding | `entry/src/ohosTest/ets/test/decorator/decorator_sendable_regression_positive.test.ets` | `DECORATOR_SENDABLE_PR10632_local_binding_degraded_smoke` | PASS | imported-binding original remains candidate |

## Not Migrated

| 源文件 | 原因 | 后续建议 |
|---|---|---|
| individual source `.ets` files not represented one-to-one | Stage 11 used consolidated Hypium suites instead of copying every source file | keep source files as design corpus; expand to one-to-one migration only if required |
| `boundary/` | boundary/candidate semantics not stable for real execution | keep as boundary |
| `compiler_expected_candidates/` | candidate markdown only | future compiler expected stage |
| `bytecode_expected_candidates/` | candidate markdown only, no real expected output | Stage 12 bytecode expected design |