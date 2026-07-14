# Language Foundation ID Naming Rules

## 1. Chapter Prefix Table

| 目录 | Chapter Prefix | 备注 |
| --- | --- | --- |
| `00_the_basics/declarations` | `DECL` | 声明与绑定 |
| `00_the_basics/types` | `TYPE` | 运行时类型和类型语法边界 |
| `00_the_basics/operators` | `OPER` | 表达式运算语义 |
| `00_the_basics/statements` | `STMT` | 语句与控制流 |
| `00_the_basics/keywords` | `KEYW` | 保留字和上下文关键字 |
| `01_function` | `FUNC` | 函数语义 |
| `02_class` | `CLASS` | 类语义 |
| `03_interface` | `INTF` | interface 兼容边界 |
| `04_generic` | `GEN` | generic 兼容边界 |
| `05_null_safety` | `NULL` | nullish 语义 |
| `06_module` | `MODULE` | 模块语义 |
| `07_this_keyword` | `THIS` | `this` 绑定 |
| `08_decorator_annotation/01_arkts_annotation` | `ANNOT` | ArkTS annotation |
| `08_decorator_annotation/02_ts_style_decorator` | `DECOR` | TS-style decorator |

同一章节只能使用一个前缀，不同章节不得复用前缀。

## 2. Coverage Direction Table

| Chapter Prefix | Direction | 含义 | 示例 |
| --- | --- | --- | --- |
| `DECL` | `VAR / LET / CONST / FUNC / CLASS / IMPORT / EXPORT / SCOPE` | 声明、绑定、TDZ、重复声明 | `DECL-LET-001` |
| `TYPE` | `TYPEOF / NULL / NUMBER / BIGINT / STRING / BOOLEAN / OBJECT / ARRAY / FUNCTION / INSTANCEOF / CONVERSION / TS` | 运行时类型与语法边界 | `TYPE-TYPEOF-001` |
| `OPER` | `ARITH / EQUALITY / RELATIONAL / LOGICAL / BITWISE / ASSIGN / UPDATE / OPTIONAL / NULLISH / TYPEOF / INSTANCEOF / IN / DELETE / CONDITIONAL` | 运算符行为 | `OPER-ARITH-001` |
| `STMT` | `IF / SWITCH / LOOP / FORIN / FOROF / TRY / THROW / BREAK / CONTINUE / TOP` | 语句行为 | `STMT-TRY-001` |
| `KEYW` | `RESERVED / CONTEXT / STRICT / ARKTS / LITERAL` | 关键字类别 | `KEYW-RESERVED-001` |
| `FUNC` | `DECL / EXPR / PARAM / REST / RETURN / CALL / TYPE / SCOPE / CLOSURE / ARROW / OVERLOAD` | 函数能力 | `FUNC-PARAM-001` |
| `CLASS` | `DECL / TYPE / CONSTRUCTOR / FIELD / METHOD / STATIC / INHERIT / OVERRIDE / ABSTRACT / ACCESSOR / PRIVATE / GENERIC / RUNTIME` | 类能力 | `CLASS-INHERIT-001` |
| `INTF` | `DECL / PROP / METHOD / EXTENDS / STRUCTURAL / INDEX / MERGE / GENERIC` | interface 能力 | `INTF-EXTENDS-001` |
| `GEN` | `TYPEPARAM / FUNC / CLASS / INTERFACE / METHOD / CONSTRAINT / INFER / DEFAULT / NESTED` | generic 能力 | `GEN-CONSTRAINT-001` |
| `NULL` | `BASIC / OPTIONAL / COALESCE / ASSIGN / NONNULL / UNION` | nullish 能力 | `NULL-OPTIONAL-001` |
| `MODULE` | `IMPORT / EXPORT / LIVE / REEXPORT / DEFAULT / NAMESPACE / CIRCULAR / SCOPE` | 模块能力 | `MODULE-EXPORT-001` |
| `THIS` | `METHOD / ARROW / CALL / BIND / CONSTRUCTOR / CALLBACK / MODULE` | `this` 绑定能力 | `THIS-ARROW-001` |
| `ANNOT` | `DECL / FIELD / RETENTION / TARGET / USAGE / RUNTIME` | annotation 能力 | `ANNOT-RETENTION-001` |
| `DECOR` | `SYNTAX / CLASS / PROPERTY / METHOD / FACTORY / TRANSFORM / ORDER / SENDABLE / MODULE / CLASSFEATURE` | decorator 能力 | `DECOR-CLASS-001` |

Direction 描述语言能力，不直接复制文件夹名。新增 Direction 前必须检查 Coverage Registry，禁止同义缩写并存。

## 3. Case Type Prefix Table

| Test Type | Prefix | 示例 |
| --- | --- | --- |
| `pass` | `PASS` | `FUNC-PASS-001` |
| `fail_compile` | `FAILC` | `CLASS-FAILC-001` |
| `fail_runtime` | `FAILR` | `GEN-FAILR-001` |
| `boundary` | `BOUND` | `MODULE-BOUND-001` |
| `regression` | `REGR` | `THIS-REGR-001` |
| `integration` | `INTEG` | `MODULE-INTEG-001` |
| `helper` | `HELP` | `MODULE-HELP-001` |

## 4. Numbering Rule

每个 `Chapter + Direction` 或 `Chapter + Case Type` 独立从 `001` 开始。已使用编号不得复用；超过 999 时自然扩展为四位。删除的 ID 标记 `deprecated`，不得重新分配。

## 5. Stability Rule

ID 不依赖路径、文件名、Stage 或验证状态。文件移动、重命名、状态变化不得改变 ID。

## 6. Rename Rule

只修正文档或路径时保留 ID。测试点语义实质变化时创建新 Coverage ID，并将旧 ID 标记 `deprecated` 或建立 split/merge 映射。

## 7. Duplicate Prevention Rule

分配前同时检查 Case Registry、Coverage Registry 和 Legacy Mapping 的精确值及大小写归一值。Proposed ID 写回前必须通过重复检查。

## 8. Legacy ID Handling

成熟旧 ID 优先 `keep`。`OP`、`KW`、`FUNCTION`、`IF`、`NS`、`MOD`、`ANNOTATION`、`DECORATOR` 等旧前缀只在 Legacy Mapping 中提出建议映射，本阶段不改写原文档。

## 9. Invalid Examples

- `function-param-1`：大小写与编号宽度不规范。
- `FUNC-PARAM-001-EXTRA`：编号不是末段。
- 两个文件同时使用 `FUNC-PASS-001`：Case ID 冲突。
- `TYPE-ALL-001` 同时表示 typeof、instanceof、转换：测试点过宽。
- `created` 作为 Validation Status：应转换为 `generated` 或 `validation_pending`。
