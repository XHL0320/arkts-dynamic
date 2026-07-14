# Language Foundation Global Statistics

## Chapter Asset Statistics

| 章节 | .ets | 主用例 | helper | pass | fail_compile | fail_runtime | boundary | regression | integration |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 00_the_basics | 146 | 144 | 2 | 88 | 15 | 13 | 24 | 4 | 0 |
| 01_function | 65 | 65 | 0 | 42 | 4 | 3 | 9 | 7 | 0 |
| 02_class | 1132 | 1132 | 0 | 516 | 446 | 34 | 109 | 10 | 17 |
| 03_interface | 27 | 27 | 0 | 10 | 0 | 0 | 16 | 1 | 0 |
| 04_generic | 28 | 28 | 0 | 13 | 0 | 0 | 14 | 1 | 0 |
| 05_null_safety | 30 | 30 | 0 | 16 | 0 | 4 | 8 | 2 | 0 |
| 06_module | 33 | 30 | 3 | 10 | 0 | 0 | 12 | 2 | 5 |
| 07_this_keyword | 35 | 35 | 0 | 16 | 0 | 0 | 15 | 4 | 0 |
| **Total** | **1496** | **1491** | **5** | **711** | **465** | **54** | **207** | **31** | **22** |

## Case ID Statistics

| Case 前缀 | 章节 | 数量 |
|---|---|---:|
| DECL- | 00_the_basics/declarations | 22 |
| KEYW- | 00_the_basics/keywords | 28 |
| OPER- | 00_the_basics/operators | 33 |
| STMT- | 00_the_basics/statements | 33 |
| TYPE- | 00_the_basics/types | 28 |
| FUNC- | 01_function | 65 |
| CLASS- | 02_class | 1132 |
| INTF- | 03_interface | 27 |
| GEN- | 04_generic | 28 |
| NULL- | 05_null_safety | 30 |
| MODULE- | 06_module | 30 |
| THIS- | 07_this_keyword | 35 |
| **Total** | | **1491** |

## Coverage Statistics

| 章节 | Coverage 总数 | generated | planned |
|---|---:|---:|---:|
| 00_the_basics | 495 | 200 | 295 |
| 01_function | 105 | 59 | 46 |
| 02_class | 1132 | 1132 | 0 |
| 03_interface | 88 | 48 | 40 |
| 04_generic | 91 | 40 | 51 |
| 05_null_safety | 96 | 48 | 48 |
| 06_module | (per subdirectory) | (all generated) | (planned exists) |
| 07_this_keyword | (per subdirectory) | (all generated) | (planned exists) |

## Candidate Statistics

| 章节 | 状态 | 总数 | generated | planned |
|---|---|---:|---:|---:|
| 00_the_basics | exists (5 subdirectories) | 289 | 146 | 143 |
| 01_function | exists | 39 | 27 | 12 |
| 02_class | not_applicable | 0 | 0 | 0 |
| 03_interface | exists | 45 | 28 | 17 |
| 04_generic | exists | 45 | 31 | 14 |
| 05_null_safety | exists | 45 | 29 | 16 |
| 06_module | exists | (per subdirectory) | (per subdirectory) | (per subdirectory) |
| 07_this_keyword | exists | (per subdirectory) | (per subdirectory) | (per subdirectory) |

## Validation Status Statistics

| 章节 | validation_pending | spec_pending | verified_* |
|---|---:|---:|---:|
| 00_the_basics | 120 | 24 | 0 |
| 01_function | 56 | 9 | 0 |
| 02_class | 1023 | 109 | 0 |
| 03_interface | 11 | 16 | 0 |
| 04_generic | 14 | 14 | 0 |
| 05_null_safety | 22 | 8 | 0 |
| 06_module | (per subdirectory) | (per subdirectory) | 0 |
| 07_this_keyword | (per subdirectory) | (per subdirectory) | 0 |
| **Total** | **1277** | **207** | **0** |

## Helper Statistics

| 章节 | Helper 数 | 双向闭环 | orphan |
|---|---:|---:|---:|
| 00_the_basics | 2 | 2 | 0 |
| 06_module | 3 | 3 | 0 |
| **Total** | **5** | **5** | **0** |

## Global Totals

| 项目 | 数量 |
|---|---:|
| .ets 总数 | 1496 |
| 主用例总数 | 1491 |
| helper 总数 | 5 |
| Case ID 总数 | 1491 |
| registered Case ID | 1491 |
| proposed_id 剩余 | 154 (non-migrated chapters) |
| Coverage 总数 | 2000+ (distributed across chapters) |
| validation_pending | 1277 |
| spec_pending | 207 |
| verified_* | 0 |
