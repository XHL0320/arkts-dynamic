/*
 * Feature: Class
 * SubFeature: 13_abstract_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0323
 * Related Spec: abstract method 重复声明且非合法 overload，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: abstract method 重复声明且非合法 overload，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
