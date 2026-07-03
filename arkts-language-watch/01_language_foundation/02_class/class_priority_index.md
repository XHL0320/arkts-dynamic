<!-- CLASS_WATCH_CONSOLIDATION_V1 -->

# Class Priority Index

## Priority Definition

| 优先级 | 含义 |
|---|---|
| P0 | 必须优先生成 XTS，核心语义/高风险 checker/runtime 行为 |
| P1 | 次优先生成 XTS，重要交叉语义/容易出问题 |
| P2 | 补充覆盖，结构兼容/边界/低频但重要 |
| P3 | 映射、回归、长期维护 |

## Directory Priority

| 子目录 | 优先级 | 推荐生成阶段 | 原因 |
|---|---|---|---|
| 00_class_declaration | P2 | Stage 4 | 基础语法和绑定，风险低于核心成员语义 |
| 01_class_type | P1 | Stage 3 | 类值空间/类型空间和 static/instance side 交叉重要 |
| 02_class_instantiation | P2 | Stage 4 | new/default constructor 与 runtime 边界补充 |
| 03_field | P0 | Stage 1 | 字段类型、初始化、赋值与继承交叉风险最高 |
| 04_method | P0 | Stage 1 | 方法参数、返回值、this、重写是核心 checker 行为 |
| 05_constructor | P0 | Stage 1 | 构造参数、初始化、super/this-before-super 关键 |
| 06_visibility_modifiers | P1 | Stage 1 | private/protected/public 影响访问和兼容 |
| 07_inheritance | P0 | Stage 2 | extends、继承链、基类/派生类兼容是核心语义 |
| 08_super | P0 | Stage 2 | super call/property 独立运行时与静态边界集中 |
| 09_override | P1 | Stage 1 | 覆盖签名、可见性、abstract/interface 交叉复杂 |
| 10_static_members | P1 | Stage 4 | static side、继承、初始化顺序风险较高 |
| 11_readonly_members | P1 | Stage 3 | readonly 初始化、赋值与兼容交叉价值高 |
| 12_object_literal | P2 | Stage 3 | 结构兼容和 runtime 差异重要但依赖 ArkTS 规则确认 |
| 13_abstract_class | P0 | Stage 1 | 抽象成员实现与禁止实例化是高价值编译负向 |
| 14_class_and_interface | P0 | Stage 1 | implements 与成员完整性是高风险静态检查 |
| 15_generic_class | P2 | Stage 3 | 泛型静态检查重要但多数为类型系统扩展 |
| 16_this_in_class | P1 | Stage 2 | this binding 与静态 this type 贯穿 class 语义 |
| 17_class_scope | P2 | Stage 4 | 作用域和绑定边界作为补充覆盖 |
| 18_class_initialization_order | P1 | Stage 2 | 统一收口字段、constructor、static 初始化顺序 |
| 19_class_runtime_behavior | P1 | Stage 4 | prototype、instanceof、constructor runtime 对照 |
| 99_mapping_and_regression | P3 | Stage 5 | 集中映射和回归维护目录 |

## XTS Generation Stages

### Stage 1: Core Compile-Time Checker

重点生成 fail_compile + pass：

```text
03_field
04_method
05_constructor
13_abstract_class
14_class_and_interface
06_visibility_modifiers
09_override
```

### Stage 2: Inheritance and Super Runtime/Checker

重点生成 pass + fail_compile + fail_runtime：

```text
07_inheritance
08_super
18_class_initialization_order
16_this_in_class
```

### Stage 3: Type Compatibility

重点生成 fail_compile + integration：

```text
01_class_type
11_readonly_members
12_object_literal
15_generic_class
```

### Stage 4: Runtime Behavior

重点生成 pass + fail_runtime：

```text
19_class_runtime_behavior
10_static_members
02_class_instantiation
00_class_declaration
```

### Stage 5: Regression and Mapping

```text
99_mapping_and_regression
```

## Top 50 XTS Candidate Test Points

| Rank | Global ID | 来源子目录 | 测试点 | 用例类型 | 优先级 | 建议 XTS 路径 | 选择原因 |
| ---- | --------- | ----- | --- | ---- | --- | --------- | ---- |
| 1 | CLASS-TOTAL-0025 | 03_field | array 字段赋值非数组，checker 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0025_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 2 | CLASS-TOTAL-0026 | 03_field | class implements interface 时字段类型不兼容，checker 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0026_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 3 | CLASS-TOTAL-0027 | 03_field | class implements interface 时缺少字段，checker 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0027_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 4 | CLASS-TOTAL-0028 | 03_field | class 类型字段赋值无关 class 实例，checker 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0028_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 5 | CLASS-TOTAL-0029 | 03_field | generic class 字段赋值不满足 T，checker 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0029_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 6 | CLASS-TOTAL-0030 | 03_field | instance 字段通过类名访问，checker 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0030_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 7 | CLASS-TOTAL-0031 | 03_field | interface 类型字段缺少必需属性，checker 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0031_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 8 | CLASS-TOTAL-0032 | 03_field | number 字段初始化为 string，checker 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0032_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 9 | CLASS-TOTAL-0033 | 03_field | number[] 字段写入 string[]，checker 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0033_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 10 | CLASS-TOTAL-0034 | 03_field | private 字段外部访问，checker 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0034_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 11 | CLASS-TOTAL-0035 | 03_field | protected 字段外部访问，checker 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0035_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 12 | CLASS-TOTAL-0036 | 03_field | readonly 字段 constructor 外赋值，checker 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0036_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 13 | CLASS-TOTAL-0037 | 03_field | static 字段通过实例访问，checker 报错或记录差异 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0037_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 14 | CLASS-TOTAL-0038 | 03_field | string 字段赋值 boolean，checker 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0038_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 15 | CLASS-TOTAL-0039 | 03_field | 动态属性访问字段 a['x']，如 ArkTS 禁止则报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0039_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 16 | CLASS-TOTAL-0040 | 03_field | 字段与 getter 同名，checker 报错或记录差异 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0040_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 17 | CLASS-TOTAL-0041 | 03_field | 字段与方法同名，checker 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0041_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 18 | CLASS-TOTAL-0042 | 03_field | 字段初始化表达式类型与声明类型不匹配，checker 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0042_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 19 | CLASS-TOTAL-0043 | 03_field | 字段类型使用 ArkTS 不支持的 TS 类型语法，checker 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0043_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 20 | CLASS-TOTAL-0044 | 03_field | 字段重复声明，checker/parser 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0044_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 21 | CLASS-TOTAL-0045 | 03_field | 未声明字段访问，checker 报错 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0045_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 22 | CLASS-TOTAL-0046 | 03_field | 编译负向场景 | fail_compile | P0 | xts/fail_compile/03_field/class_field_class_total_0046_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 23 | CLASS-TOTAL-0498 | 03_field | array 字段初始化为 number[] 通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0498_pass.ets | 核心正向基线，便于建立可运行对照 |
| 24 | CLASS-TOTAL-0499 | 03_field | bigint 字段初始化为 bigint literal 通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0499_pass.ets | 核心正向基线，便于建立可运行对照 |
| 25 | CLASS-TOTAL-0500 | 03_field | class 类型字段初始化为对应 class 实例通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0500_pass.ets | 核心正向基线，便于建立可运行对照 |
| 26 | CLASS-TOTAL-0501 | 03_field | constructor 内读取和写入实例字段通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0501_pass.ets | 核心正向基线，便于建立可运行对照 |
| 27 | CLASS-TOTAL-0502 | 03_field | generic class 字段类型为 T 并赋值 T 通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0502_pass.ets | 核心正向基线，便于建立可运行对照 |
| 28 | CLASS-TOTAL-0503 | 03_field | interface 类型字段初始化为满足 interface 的对象通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0503_pass.ets | 核心正向基线，便于建立可运行对照 |
| 29 | CLASS-TOTAL-0504 | 03_field | nullable 字段初始化为 null 通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0504_pass.ets | 核心正向基线，便于建立可运行对照 |
| 30 | CLASS-TOTAL-0505 | 03_field | object 字段初始化为对象实例通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0505_pass.ets | 核心正向基线，便于建立可运行对照 |
| 31 | CLASS-TOTAL-0506 | 03_field | readonly 字段在 constructor 中初始化通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0506_pass.ets | 核心正向基线，便于建立可运行对照 |
| 32 | CLASS-TOTAL-0507 | 03_field | readonly 字段在声明处初始化通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0507_pass.ets | 核心正向基线，便于建立可运行对照 |
| 33 | CLASS-TOTAL-0508 | 03_field | static 字段通过类名访问通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0508_pass.ets | 核心正向基线，便于建立可运行对照 |
| 34 | CLASS-TOTAL-0509 | 03_field | union 字段分别赋值 union 成员通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0509_pass.ets | 核心正向基线，便于建立可运行对照 |
| 35 | CLASS-TOTAL-0510 | 03_field | 单个 number 字段带类型注解和初始化值通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0510_pass.ets | 核心正向基线，便于建立可运行对照 |
| 36 | CLASS-TOTAL-0511 | 03_field | 基础正向场景 | pass | P0 | xts/pass/03_field/class_field_class_total_0511_pass.ets | 核心正向基线，便于建立可运行对照 |
| 37 | CLASS-TOTAL-0512 | 03_field | 外部访问 public 字段通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0512_pass.ets | 核心正向基线，便于建立可运行对照 |
| 38 | CLASS-TOTAL-0513 | 03_field | 多个字段 number/string/boolean 同时声明通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0513_pass.ets | 核心正向基线，便于建立可运行对照 |
| 39 | CLASS-TOTAL-0514 | 03_field | 子类继承并访问基类 public 字段通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0514_pass.ets | 核心正向基线，便于建立可运行对照 |
| 40 | CLASS-TOTAL-0515 | 03_field | 字段不带类型注解并从初始化值推断类型通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0515_pass.ets | 核心正向基线，便于建立可运行对照 |
| 41 | CLASS-TOTAL-0516 | 03_field | 字段初始化表达式引用前面字段通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0516_pass.ets | 核心正向基线，便于建立可运行对照 |
| 42 | CLASS-TOTAL-0517 | 03_field | 字段无初始化但 constructor 中赋值通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0517_pass.ets | 核心正向基线，便于建立可运行对照 |
| 43 | CLASS-TOTAL-0518 | 03_field | 字段有初始化值且 constructor 不再赋值通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0518_pass.ets | 核心正向基线，便于建立可运行对照 |
| 44 | CLASS-TOTAL-0519 | 03_field | 方法内读取实例字段通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0519_pass.ets | 核心正向基线，便于建立可运行对照 |
| 45 | CLASS-TOTAL-0520 | 03_field | 空类声明并实例化通过 | pass | P0 | xts/pass/03_field/class_field_class_total_0520_pass.ets | 核心正向基线，便于建立可运行对照 |
| 46 | CLASS-TOTAL-0881 | 03_field | 类型系统组合 | integration | P0 | xts/integration/03_field/class_field_class_total_0881_integration.ets | 高价值交叉语义 |
| 47 | CLASS-TOTAL-0892 | 03_field | 回归用例 | regression | P0 | xts/regression/03_field/class_field_class_total_0892_regression.ets | 边界或回归补充 |
| 48 | CLASS-TOTAL-0047 | 04_method | getter 带参数，parser/checker 报错 | fail_compile | P0 | xts/fail_compile/04_method/class_method_class_total_0047_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 49 | CLASS-TOTAL-0048 | 04_method | instance method 通过 class 名访问，checker 报错 | fail_compile | P0 | xts/fail_compile/04_method/class_method_class_total_0048_fail_compile.ets | 核心 checker 负向，适合优先固化 |
| 50 | CLASS-TOTAL-0049 | 04_method | number 参数传入 string，checker 报错 | fail_compile | P0 | xts/fail_compile/04_method/class_method_class_total_0049_fail_compile.ets | 核心 checker 负向，适合优先固化 |
