# Stage 7 Decorator Execution Order Generation Report

## Summary

| 指标 | 数量 |
|---|---|
| 新增 pass 用例数量 | 0 |
| 新增 smoke 用例数量 | 6 |
| 新增 integration 用例数量 | 2 |
| 新增 boundary 用例数量 | 5 |
| 新增 compiler expected candidate 文件数量 | 5 |
| 覆盖 coverage ID 数量 | 19 |
| PR 10632 reference 数量 | 0 |
| sendable-specific 用例数量 | 0 |
| 真实 bytecode expected 文件数量 | 0 |

## Generated Files

| 文件 | 类型 | 覆盖点 | 关联 Coverage ID | 备注 |
|---|---|---|---|---|
| `xts/smoke/decorator_order_property_same_target_smoke.ets` | smoke | property decorators same target order | DECORATOR-ORDER-0018, DECORATOR-ORDER-TD-0018 | fixed order pending |
| `xts/smoke/decorator_order_method_same_target_smoke.ets` | smoke | method decorators same target order | DECORATOR-ORDER-0020, DECORATOR-ORDER-TD-0020 | descriptor/equivalent structure pending |
| `xts/smoke/decorator_order_class_same_target_smoke.ets` | smoke | class decorators same target order | DECORATOR-ORDER-0016, DECORATOR-ORDER-TD-0016 | fixed order pending |
| `xts/smoke/decorator_order_factory_eval_call_smoke.ets` | smoke | factory evaluation vs decorator call order | DECORATOR-ORDER-0003/0004/0005, DECORATOR-ORDER-TD-0003/0004/0005 | factory first, decorator later |
| `xts/smoke/decorator_order_multiple_factories_smoke.ets` | smoke | multiple factory decorators same target | DECORATOR-ORDER-0024/0025/0026, DECORATOR-ORDER-TD-0024/0025/0026 | no duplicate/omission |
| `xts/smoke/decorator_order_factory_argument_eval_smoke.ets` | smoke | factory argument expression evaluation order | DECORATOR-ORDER-0005/0006, DECORATOR-ORDER-TD-0005/0006 | arg → factory → decorator |
| `xts/integration/decorator_order_class_property_method_mixed_smoke.ets` | integration | class/property/method mixed order | DECORATOR-ORDER-0037, DECORATOR-ORDER-TD-0037 | fixed global order pending |
| `xts/integration/decorator_order_static_instance_member_smoke.ets` | integration | static/instance member order | DECORATOR-ORDER-0031/0032/0040/0042, DECORATOR-ORDER-TD-0031/0032 | no strong order assertion |
| `xts/boundary/decorator_order_fixed_order_boundary.ets` | boundary | fixed decorator call order | DECORATOR-ORDER-0025/0026, DECORATOR-ORDER-TD-0025/0026 | TS legacy order pending |
| `xts/boundary/decorator_order_mixed_member_boundary.ets` | boundary | mixed class member order | DECORATOR-ORDER-0046, DECORATOR-ORDER-TD-0046 | no duplication/omission only |
| `xts/boundary/decorator_order_factory_throw_boundary.ets` | boundary | factory throw order | DECORATOR-ORDER-0011, DECORATOR-ORDER-TD-0011 | boundary record only |
| `xts/boundary/decorator_order_decorator_throw_boundary.ets` | boundary | decorator throw order | DECORATOR-ORDER-0010, DECORATOR-ORDER-TD-0010 | boundary record only |
| `xts/boundary/decorator_order_class_return_boundary.ets` | boundary | class decorator return value order | DECORATOR-ORDER-0029, DECORATOR-ORDER-TD-0029 | order-related only |
| `compiler_expected_candidates/decorator_order_property_candidates.md` | compiler candidate | property decorator order | DECORATOR-ORDER-0018/0019 | candidate created |
| `compiler_expected_candidates/decorator_order_method_candidates.md` | compiler candidate | method decorator order | DECORATOR-ORDER-0020/0021 | candidate created |
| `compiler_expected_candidates/decorator_order_class_candidates.md` | compiler candidate | class decorator order | DECORATOR-ORDER-0016/0017 | candidate created |
| `compiler_expected_candidates/decorator_order_factory_candidates.md` | compiler candidate | factory evaluation order | DECORATOR-ORDER-0003/0004/0005 | candidate created |
| `compiler_expected_candidates/decorator_order_mixed_target_candidates.md` | compiler candidate | mixed target order | DECORATOR-ORDER-0037/0031/0032 | candidate created |

## Coverage Mapping

| Coverage ID | 测试点 | 生成文件 | 状态 |
|---|---|---|---|
| DECORATOR-ORDER-0016 | class 上两个 decorators | xts/smoke/decorator_order_class_same_target_smoke.ets | smoke created, fixed order pending |
| DECORATOR-ORDER-0018 | property 上两个 decorators | xts/smoke/decorator_order_property_same_target_smoke.ets | smoke created, fixed order pending |
| DECORATOR-ORDER-0020 | method 上两个 decorators | xts/smoke/decorator_order_method_same_target_smoke.ets | smoke created, descriptor pending |
| DECORATOR-ORDER-0003 | factory call 求值 | xts/smoke/decorator_order_factory_eval_call_smoke.ets | smoke created |
| DECORATOR-ORDER-0004 | returned decorator function 调用 | xts/smoke/decorator_order_factory_eval_call_smoke.ets | smoke created |
| DECORATOR-ORDER-0005 | factory 参数先求值 | xts/smoke/decorator_order_factory_argument_eval_smoke.ets | smoke created |
| DECORATOR-ORDER-0006 | factory 参数 side effect | xts/smoke/decorator_order_factory_argument_eval_smoke.ets | smoke created |
| DECORATOR-ORDER-0024 | 多 factory 参数 side effect | xts/smoke/decorator_order_multiple_factories_smoke.ets | smoke created |
| DECORATOR-ORDER-0025 | 多 decorators 求值顺序 | xts/boundary/decorator_order_fixed_order_boundary.ets | boundary candidate created, fixed order pending |
| DECORATOR-ORDER-0026 | 多 decorators 调用顺序 | xts/boundary/decorator_order_fixed_order_boundary.ets | boundary candidate created, fixed order pending |
| DECORATOR-ORDER-0037 | class + property + method 混合 | xts/integration/decorator_order_class_property_method_mixed_smoke.ets | integration created |
| DECORATOR-ORDER-0031 | 多 decorators 与 static property | xts/integration/decorator_order_static_instance_member_smoke.ets | integration created |
| DECORATOR-ORDER-0032 | 多 decorators 与 static method | xts/integration/decorator_order_static_instance_member_smoke.ets | integration created |
| DECORATOR-ORDER-0040 | static property before instance property | xts/integration/decorator_order_static_instance_member_smoke.ets | integration created |
| DECORATOR-ORDER-0042 | static method before instance method | xts/integration/decorator_order_static_instance_member_smoke.ets | integration created |
| DECORATOR-ORDER-0010 | decorator function throw boundary | xts/boundary/decorator_order_decorator_throw_boundary.ets | boundary record only |
| DECORATOR-ORDER-0011 | factory throw boundary | xts/boundary/decorator_order_factory_throw_boundary.ets | boundary record only |
| DECORATOR-ORDER-0029 | 多 decorators 返回值组合 boundary | xts/boundary/decorator_order_class_return_boundary.ets | boundary record only |
| DECORATOR-ORDER-0046 | property/method 混合按声明顺序或 ArkTS 规则 | xts/boundary/decorator_order_mixed_member_boundary.ets | boundary candidate created |

## Order Risk Matrix

| 风险点 | 当前处理 | 后续建议 |
|---|---|---|
| property decorators same target order | smoke | 固定顺序待确认 |
| method decorators same target order | smoke/boundary | descriptor 待确认 |
| class decorators same target order | smoke/boundary | class target 待确认 |
| factory evaluation order | smoke | 后续 compiler expected |
| returned decorator call order | smoke | 后续 compiler expected |
| mixed class/property/method order | integration/boundary | 后续 compiler expected |
| static/instance member order | integration/boundary | 后续 compiler expected |
| throw order | boundary | 后续 runtime/fail_runtime 确认 |

## Boundary / Need Review

| 项目 | 原因 | 建议 |
|---|---|---|
| fixed decorator call order | ArkTS 是否完全遵循 TS legacy 顺序待确认 | 后续 compiler expected |
| method descriptor/equivalent structure | method decorator 行为待确认 | 后续 method compiler expected |
| class decorator return value order | class decorator 返回值语义待确认 | 后续 class boundary |
| factory throw order | runtime 行为待确认 | 后续 runtime case |
| decorator throw order | runtime 行为待确认 | 后续 runtime case |
| mixed target global order | class/property/method 相对顺序待确认 | 后续 compiler expected |

## Non-goals Check

| 项目 | 结果 |
|---|---|
| 是否生成 ArkUI decorator | 否 |
| 是否生成 @interface annotation | 否 |
| 是否生成 sendable 用例 | 否 |
| 是否引用 PR10632 原始形态 | 否 |
| 是否生成真实 bytecode expected | 否 |

## Next Stage Suggestion

建议下一阶段进入：

`09_decorator_module_scope`

原因：

- syntax / property / factory / method / class / transform / sendable / order 已有首批用例或候选；
- module scope 是剩余核心维度；
- 需要验证 imported decorator、imported factory、factory 参数 imported binding、export decorated class；
- 这也是 PR 10632 中 imported binding 维度的普通主线对照。

## Stage 11 Validation Note

Representative positive coverage from this stage was migrated into consolidated DevEco ohosTest Hypium suites and validated with official hvigor build plus `aa test` class-filter execution. Boundary/candidate items were not executed. `fail_compile` files were validated separately through a temporary imported probe and official hvigor compile failure checks.
