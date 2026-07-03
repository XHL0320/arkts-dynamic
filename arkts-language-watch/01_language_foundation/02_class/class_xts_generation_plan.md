<!-- CLASS_WATCH_CONSOLIDATION_V1 -->

# Class XTS Generation Plan

## Goal

本计划用于指导后续将 Class 测试设计转化为 ArkTS XTS 用例。

## General Rules

1. 先生成 P0；
2. 先生成 fail_compile 和 pass；
3. runtime 用例要明确断言异常类型；
4. integration 用例不宜过大；
5. 每个 `.ets` 文件聚焦一个语义点；
6. 文件命名要可读、稳定、便于回归；
7. 不在一个用例里混合多个不相关风险点；
8. ArkTS 不确定支持的特性先放 boundary 或 unsupported 记录，不直接生成强断言。

## Suggested XTS Directory Layout

推荐按来源子目录组织：

```text
01_language_foundation/02_class/<feature>/xts/
├── 03_field/
│   ├── pass/
│   ├── fail_compile/
│   ├── fail_runtime/
│   ├── boundary/
│   └── integration/
├── 04_method/
├── 05_constructor/
├── 07_inheritance/
├── 08_super/
└── ...
```

理由：Class 语义交叉较多，按来源子目录组织可直接追溯到 `class_total_coverage_matrix.md` 的 Global ID，并避免 fail_compile/pass 混杂在一个大目录中。

## File Naming Rule

```text
class_<feature>_<scenario>_<case_type>.ets
```

示例：

```text
class_field_basic_init_pass.ets
class_field_type_mismatch_fail_compile.ets
class_constructor_this_before_super_fail_compile.ets
class_super_method_receiver_pass.ets
class_runtime_call_without_new_fail_runtime.ets
```

## Case Metadata Template

```text
Feature:
SubFeature:
CaseType:
Priority:
ECMA Baseline Status:
Source Coverage ID:
Related Spec:
Expected:
```

## Stage Plan

| 阶段 | 目标 | 来源目录 | 用例类型 | 建议数量 | 输出目录 | 备注 |
| -- | -- | ---- | ---- | ---- | ---- | -- |
| Stage 1 | Core Compile-Time Checker | 03_field, 04_method, 05_constructor, 13_abstract_class, 14_class_and_interface, 06_visibility_modifiers, 09_override | fail_compile, pass | 80-120 | 01_language_foundation/02_class/<source>/xts/ | 先固化 checker 核心行为 |
| Stage 2 | Inheritance and Super Runtime/Checker | 07_inheritance, 08_super, 18_class_initialization_order, 16_this_in_class | pass, fail_compile, fail_runtime | 60-90 | 01_language_foundation/02_class/<source>/xts/ | 覆盖 super/this/初始化顺序 |
| Stage 3 | Type Compatibility | 01_class_type, 11_readonly_members, 12_object_literal, 15_generic_class | fail_compile, integration, boundary | 60-90 | 01_language_foundation/02_class/<source>/xts/ | 等 ArkTS 行为确认后生成强断言 |
| Stage 4 | Runtime Behavior | 19_class_runtime_behavior, 10_static_members, 02_class_instantiation, 00_class_declaration | pass, fail_runtime | 40-70 | 01_language_foundation/02_class/<source>/xts/ | 与 test262 runtime 方向对齐 |
| Stage 5 | Regression and Mapping | 99_mapping_and_regression | regression, mapping | 按问题单滚动 | 01_language_foundation/02_class/99_mapping_and_regression/xts/regression/ | 长期维护 |

## First Batch Recommendation

| Rank | Global ID | 来源子目录 | 测试点 | 用例类型 | 建议文件名 | 预期结果 | 备注 |
| ---- | --------- | ----- | --- | ---- | ----- | ---- | -- |
| 1 | CLASS-TOTAL-0025 | 03_field | array 字段赋值非数组，checker 报错 | fail_compile | class_field_class_total_0025_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 2 | CLASS-TOTAL-0026 | 03_field | class implements interface 时字段类型不兼容，checker 报错 | fail_compile | class_field_class_total_0026_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 3 | CLASS-TOTAL-0027 | 03_field | class implements interface 时缺少字段，checker 报错 | fail_compile | class_field_class_total_0027_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 4 | CLASS-TOTAL-0028 | 03_field | class 类型字段赋值无关 class 实例，checker 报错 | fail_compile | class_field_class_total_0028_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 5 | CLASS-TOTAL-0029 | 03_field | generic class 字段赋值不满足 T，checker 报错 | fail_compile | class_field_class_total_0029_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 6 | CLASS-TOTAL-0030 | 03_field | instance 字段通过类名访问，checker 报错 | fail_compile | class_field_class_total_0030_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 7 | CLASS-TOTAL-0031 | 03_field | interface 类型字段缺少必需属性，checker 报错 | fail_compile | class_field_class_total_0031_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 8 | CLASS-TOTAL-0032 | 03_field | number 字段初始化为 string，checker 报错 | fail_compile | class_field_class_total_0032_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 9 | CLASS-TOTAL-0033 | 03_field | number[] 字段写入 string[]，checker 报错 | fail_compile | class_field_class_total_0033_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 10 | CLASS-TOTAL-0034 | 03_field | private 字段外部访问，checker 报错 | fail_compile | class_field_class_total_0034_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 11 | CLASS-TOTAL-0035 | 03_field | protected 字段外部访问，checker 报错 | fail_compile | class_field_class_total_0035_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 12 | CLASS-TOTAL-0036 | 03_field | readonly 字段 constructor 外赋值，checker 报错 | fail_compile | class_field_class_total_0036_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 13 | CLASS-TOTAL-0037 | 03_field | static 字段通过实例访问，checker 报错或记录差异 | fail_compile | class_field_class_total_0037_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 14 | CLASS-TOTAL-0038 | 03_field | string 字段赋值 boolean，checker 报错 | fail_compile | class_field_class_total_0038_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 15 | CLASS-TOTAL-0039 | 03_field | 动态属性访问字段 a['x']，如 ArkTS 禁止则报错 | fail_compile | class_field_class_total_0039_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 16 | CLASS-TOTAL-0040 | 03_field | 字段与 getter 同名，checker 报错或记录差异 | fail_compile | class_field_class_total_0040_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 17 | CLASS-TOTAL-0041 | 03_field | 字段与方法同名，checker 报错 | fail_compile | class_field_class_total_0041_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 18 | CLASS-TOTAL-0042 | 03_field | 字段初始化表达式类型与声明类型不匹配，checker 报错 | fail_compile | class_field_class_total_0042_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 19 | CLASS-TOTAL-0043 | 03_field | 字段类型使用 ArkTS 不支持的 TS 类型语法，checker 报错 | fail_compile | class_field_class_total_0043_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 20 | CLASS-TOTAL-0044 | 03_field | 字段重复声明，checker/parser 报错 | fail_compile | class_field_class_total_0044_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 21 | CLASS-TOTAL-0045 | 03_field | 未声明字段访问，checker 报错 | fail_compile | class_field_class_total_0045_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 22 | CLASS-TOTAL-0046 | 03_field | 编译负向场景 | fail_compile | class_field_class_total_0046_fail_compile.ets | 编译报错 | 核心 checker 负向，适合优先固化 |
| 23 | CLASS-TOTAL-0498 | 03_field | array 字段初始化为 number[] 通过 | pass | class_field_class_total_0498_pass.ets | 编译运行通过或满足设计断言 | 核心正向基线，便于建立可运行对照 |
| 24 | CLASS-TOTAL-0499 | 03_field | bigint 字段初始化为 bigint literal 通过 | pass | class_field_class_total_0499_pass.ets | 编译运行通过或满足设计断言 | 核心正向基线，便于建立可运行对照 |
| 25 | CLASS-TOTAL-0500 | 03_field | class 类型字段初始化为对应 class 实例通过 | pass | class_field_class_total_0500_pass.ets | 编译运行通过或满足设计断言 | 核心正向基线，便于建立可运行对照 |
| 26 | CLASS-TOTAL-0501 | 03_field | constructor 内读取和写入实例字段通过 | pass | class_field_class_total_0501_pass.ets | 编译运行通过或满足设计断言 | 核心正向基线，便于建立可运行对照 |
| 27 | CLASS-TOTAL-0502 | 03_field | generic class 字段类型为 T 并赋值 T 通过 | pass | class_field_class_total_0502_pass.ets | 编译运行通过或满足设计断言 | 核心正向基线，便于建立可运行对照 |
| 28 | CLASS-TOTAL-0503 | 03_field | interface 类型字段初始化为满足 interface 的对象通过 | pass | class_field_class_total_0503_pass.ets | 编译运行通过或满足设计断言 | 核心正向基线，便于建立可运行对照 |
| 29 | CLASS-TOTAL-0504 | 03_field | nullable 字段初始化为 null 通过 | pass | class_field_class_total_0504_pass.ets | 编译运行通过或满足设计断言 | 核心正向基线，便于建立可运行对照 |
| 30 | CLASS-TOTAL-0505 | 03_field | object 字段初始化为对象实例通过 | pass | class_field_class_total_0505_pass.ets | 编译运行通过或满足设计断言 | 核心正向基线，便于建立可运行对照 |
