# arkts-dynamic

`arkts-dynamic` 是一个用于沉淀 ArkTS 语言测试设计、示例代码、回归分析和用例维护资料的协作仓库。

仓库内容主要服务于 ArkTS 语言测试开发，帮助测试人员快速了解语言特性、复用已有测试设计、补充 XTS / ohosTest / 编译器相关测试用例。

---

## 仓库用途

本仓库主要用于：

1. 沉淀 ArkTS 语言特性的测试设计；
2. 汇总语言规范、测试点、覆盖矩阵和风险点；
3. 维护 ArkTS 相关示例代码；
4. 记录典型回归问题和测试映射；
5. 辅助生成和维护 XTS / ohosTest / 编译器测试用例；
6. 支持测试开发人员协同维护语言测试资产。

---

## 目录说明

```text
arkts-dynamic/
├── arkts-language-watch/
├── 示例代码/
└── README.md
```

### `arkts-language-watch/`

语言特性看护目录。

用于存放 ArkTS 语言特性的测试设计、覆盖矩阵、测试计划、候选用例、回归分析和阶段性报告。

常见内容包括：

```text
README.md
spec_points.md
test_design.md
coverage_matrix.md
xts/
compiler_expected_candidates/
bytecode_expected_candidates/
generation_report.md
```

适合用于：

* 梳理语言特性测试点；
* 设计 XTS 用例；
* 维护 compiler expected / bytecode expected 候选；
* 记录回归问题；
* 做阶段性质量审查。

### `示例代码/`

ArkTS 示例代码目录。

用于存放便于阅读和复制的 ArkTS 语言示例，帮助测试人员快速理解语法和语义。

适合用于：

* 学习 ArkTS 语法；
* 快速查找语言特性示例；
* 为测试设计提供参考代码；
* 沉淀正向示例、负向示例和边界说明。

注意：`示例代码/` 主要用于学习和参考，不等同于正式 XTS 测试目录。

---

## 推荐使用方式

新加入维护时，建议按以下顺序了解仓库：

1. 先阅读根目录 `README.md`；
2. 根据需要进入 `示例代码/` 查找语言示例；
3. 再进入 `arkts-language-watch/` 查看对应语言特性的测试设计；
4. 根据 `coverage_matrix.md` 和 `test_design.md` 判断是否需要补充测试；
5. 新增用例或文档后，同步更新对应 README / coverage / report。

---

## 维护建议

新增内容时建议遵守：

1. 目录归属清晰；
2. 文件命名可读；
3. 示例代码和测试用例分开；
4. 正向、负向、边界场景分开；
5. 新增测试设计时同步补充覆盖矩阵；
6. 新增回归问题时说明问题背景、影响范围和建议测试类型；
7. 修改已有结构时同步更新相关 README。

---

## 常见文件类型

| 文件 / 目录                         | 说明                     |
| ------------------------------- | ---------------------- |
| `README.md`                     | 当前目录说明                 |
| `spec_points.md`                | 规范点或语言点梳理              |
| `test_design.md`                | 测试设计                   |
| `coverage_matrix.md`            | 覆盖矩阵                   |
| `xts/`                          | XTS 用例或候选用例            |
| `compiler_expected_candidates/` | compiler expected 候选说明 |
| `bytecode_expected_candidates/` | bytecode expected 候选说明 |
| `generation_report.md`          | 阶段性生成报告                |
| `示例代码/`                         | ArkTS 示例代码             |

---

## 贡献流程建议

推荐流程：

```text
理解语言特性
→ 补充测试设计
→ 更新覆盖矩阵
→ 编写示例或用例
→ 本地验证
→ 更新报告和 README
→ 提交代码
```

提交前建议检查：

* 文件是否放在正确目录；
* README 是否需要同步更新；
* coverage_matrix 是否需要同步更新；
* 示例代码是否和正式测试用例混淆；
* 负向用例是否避免误放入正向运行目录。

---

## 说明

本仓库仍在持续完善中。后续可以继续补充更多 ArkTS 语言特性、示例代码、XTS 用例设计和回归测试资料。
