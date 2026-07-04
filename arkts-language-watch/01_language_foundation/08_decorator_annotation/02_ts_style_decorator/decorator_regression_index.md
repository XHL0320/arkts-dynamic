# Decorator Regression Index

## Regression Table

| ID | 来源 | 问题标题 | 主归属目录 | 关联目录 | 风险等级 | 状态 | 建议测试类型 | 备注 |
|---|---|---|---|---|---|---|---|---|
| DECORATOR-REG-0001 | PR 10632 | Sendable class 中装饰器内的语句生成的字节码错误 | 07_decorator_with_sendable | 02_property_decorator, 04_decorator_factory, 05_decorator_transform, 09_decorator_module_scope | P0 | fixed | bytecode expected + XTS smoke | property decorator + factory parameter + imported binding + transform/lowering + binder inSendable |

## Boundary Notes

1. PR 10632 不是 syntax bug；
2. PR 10632 不是 class decorator bug；
3. PR 10632 不是 method decorator bug；
4. PR 10632 不是 module scope bug；
5. PR 10632 不是 execution order bug；
6. PR 10632 主归属是 sendable-specific regression；
7. 普通主线中只保留 reference。

## PR 10632 Boundary

PR 10632 主归属保持为 `07_decorator_with_sendable`。它不是 syntax/class/method/module/order bug，普通目录只保留 reference。

## Stage 5 Transform Bridge Candidates

| ID | 来源 | 主归属目录 | Stage 5 处理方式 | 状态 | 备注 |
|---|---|---|---|---|---|
| DECORATOR-REG-0001-BRIDGE-STAGE5 | PR 10632 | 07_decorator_with_sendable | 05_decorator_transform/bytecode_expected_candidates/decorator_transform_bytecode_risk_candidates.md | candidate created | Stage 5 只记录 ordinary transform/module binding/binder context bridge，不生成原始 sendable bytecode expected |

## Stage 6 Sendable-Specific Regression Items

| ID | 来源 | 主归属目录 | Stage 6 处理方式 | 状态 | 备注 |
|---|---|---|---|---|---|
| DECORATOR-REG-0001-STAGE6-SMOKE | PR 10632 | 07_decorator_with_sendable | xts/smoke/decorator_sendable_property_basic_smoke.ets + decorator_sendable_property_factory_smoke.ets | smoke created | 基础 property decorator 和 factory smoke |
| DECORATOR-REG-0001-STAGE6-ORIGINAL | PR 10632 | 07_decorator_with_sendable | xts/regression/decorator_sendable_pr10632_original_shape.ets | source candidate created | PR 10632 原始形态 (local binding degraded) |
| DECORATOR-REG-0001-STAGE6-LOCAL | PR 10632 | 07_decorator_with_sendable | xts/regression/decorator_sendable_pr10632_local_binding_smoke.ets | smoke created | local binding smoke |
| DECORATOR-REG-0001-STAGE6-ARROW | PR 10632 | 07_decorator_with_sendable | xts/regression/decorator_sendable_arrow_function_argument_smoke.ets | smoke created | arrow function argument smoke |
| DECORATOR-REG-0001-STAGE6-CONTROL | PR 10632 | 07_decorator_with_sendable | xts/regression/decorator_sendable_pr10632_non_sendable_control.ets | smoke created | non-sendable class control |
| DECORATOR-REG-0001-STAGE6-BOUNDARY | PR 10632 | 07_decorator_with_sendable | xts/boundary/decorator_sendable_class_context_boundary.ets | boundary candidate created | sendable class context boundary |
| DECORATOR-REG-0001-STAGE6-COMPILER | PR 10632 | 07_decorator_with_sendable | compiler_expected_candidates/ (3 files) | candidate created | compiler expected candidates |
| DECORATOR-REG-0001-STAGE6-BYTECODE | PR 10632 | 07_decorator_with_sendable | bytecode_expected_candidates/ (3 files) | candidate created | bytecode expected candidates (no real .expected.txt) |
| DECORATOR-REG-0001-STAGE6-DOC | PR 10632 | 07_decorator_with_sendable | 99_mapping_and_regression/pr_10632_sendable_property_decorator.md | created | PR 10632 专项说明 |
| DECORATOR-REG-0001-STAGE6-REPORT | PR 10632 | 07_decorator_with_sendable | 07_decorator_with_sendable/xts/stage6_sendable_decorator_generation_report.md | created | Stage 6 生成报告 |

Notes:

- Imported binding variant deferred — compiler candidate only (multi-file XTS stability uncertain).
- No real bytecode .expected.txt generated.
- All sendable files stay in 07_decorator_with_sendable/ only.
- PR 10632 主归属保持为 07_decorator_with_sendable。
