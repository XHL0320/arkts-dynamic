# Decorator Sendable Deepening Report

## Summary

| 鎸囨爣 | 鏁伴噺 |
|---|---|
| 鏇存柊鏂囦欢鏁伴噺 | 12 |
| 鏂板 spec points | 45 |
| 鏂板 test design points | 80 |
| 鏂板 coverage points | 80 |
| 鏂板 P0 coverage points | 32 |
| 鏂板 bytecode regression points | 29 |
| PR 10632 鎵╁睍娴嬭瘯鐐规暟閲?| 80 |

## Updated Files

| 鏂囦欢 | 淇敼绫诲瀷 | 璇存槑 |
|---|---|---|
| 07_decorator_with_sendable/README.md | append | 琛ュ厖鐩綍瀹氫綅鍜?scope |
| 07_decorator_with_sendable/spec_points.md | append | 鏂板 sendable watch points |
| 07_decorator_with_sendable/test_design.md | append | 鏂板绯荤粺鎬?test matrix |
| 07_decorator_with_sendable/coverage_matrix.md | append | 鏂板 DECORATOR-SENDABLE coverage |
| 07_decorator_with_sendable/test262_mapping.md | append | 鏄庣‘ Not from test262 |
| 07_decorator_with_sendable/issues/fixed_issues.md | append | 鐧昏 PR 10632 |
| 07_decorator_with_sendable/issues/known_issues.md | append | 鐧昏 Pending 椋庨櫓 |
| decorator_total_coverage_matrix.md | append | 姹囨€?sendable coverage |
| decorator_xts_generation_plan.md | append | 鏇存柊 Stage 1 |
| decorator_priority_index.md | append | 鏇存柊 P0 浼樺厛绾?|
| decorator_regression_index.md | append | 鎵╁睍 PR 10632 瀛愰」 |
| decorator_open_questions.md | append | 琛ュ厖寰呯‘璁ら棶棰?|
| decorator_test262_total_mapping.md | append | 琛ュ厖 sendable mapping |

## PR 10632 Expansion

| 鎵╁睍鏂瑰悜 | 瑕嗙洊鐐规暟閲?| 浼樺厛绾?| 澶囨敞 |
|---|---|---|---|
| 鍘熷 property decorator + sendable 鍥炲綊 | 8 | P0 | bytecode expected |
| sendable 涓庢櫘閫?class 瀵圭収 | 8 | P0/P1 | 闃叉杩囧害淇 |
| property decorator 鍙樹綋 | 12 | P0/P1 | target / field 鍙樹綋 |
| decorator factory 鍙傛暟涓庤繑鍥炲嚱鏁?| 12 | P0/P1 | function context |
| multiple decorators 鐘舵€侀殧绂?| 8 | P0/P1 | state pollution |
| module scope / import binding | 8 | P0/P1 | moduleVar 鍘熷椋庨櫓鎵╁睍 |
| boundary targets | 12 | P2 | Pending support |
| bytecode regression | 12 | P0 | compiler expected |

## Top 10 Next Candidate Tests

| Rank | 娴嬭瘯鐐?| 寤鸿娴嬭瘯鏂瑰紡 | 浼樺厛绾?| 澶囨敞 |
|---|---|---|---|---|
| 1 | sendable class + property decorator + arrow function 鍙傛暟 + module import | bytecode expected | P0 |  |
| 2 | sendable class + property decorator + normal function 鍙傛暟 + module import | bytecode expected | P0 |  |
| 3 | sendable class + property decorator + arrow function 鍙傛暟 + local variable | bytecode expected | P0 |  |
| 4 | sendable class + property decorator + immediate invoked arrow function | bytecode expected | P0 |  |
| 5 | sendable class + property decorator + factory 杩斿洖 decorator function | bytecode expected | P0 |  |
| 6 | sendable class 鏈綋浠嶇敓鎴?sendable class 瀛楄妭鐮?| bytecode expected | P0 |  |
| 7 | decorator 澶栨彁鍚?class 澶栧嚱鏁颁笉鐢熸垚 sendable function 瀛楄妭鐮?| bytecode expected | P0 |  |
| 8 | 鍘熷 AST 涓?transform 鑺傜偣鍏变韩鎸囬拡鏃朵笉姹℃煋 codegen | bytecode expected | P0 |  |
| 9 | 鏅€?sendable class 鏃?decorator | compiler expected | P1 |  |
| 10 | 鏅€?class + property decorator | compiler expected | P1 |  |

## Remaining Open Questions

| 闂 | 寤鸿纭鏂瑰紡 |
|---|---|
| method decorator + sendable 鏄惁瀛樺湪鍚岀被椋庨櫓 | 鏈€灏忔牱渚?+ bytecode expected |
| class decorator + sendable 鏄惁瀛樺湪鍚岀被椋庨櫓 | transform dump + boundary |
| static property decorator target 鏄惁姝ｇ‘ | parser/checker + bytecode expected |
| bytecode expected 娴嬭瘯搴旀帴鍏ュ摢涓洰褰?| 涓?compiler 娴嬭瘯璐熻矗浜虹‘璁?|
| XTS smoke 鏄惁鑳芥崟鑾?sendable 瀛楄妭鐮侀敊璇?| smoke 涓?bytecode expected 瀵圭収 |

