/*
 * Feature: Class
 * SubFeature: 13_abstract_class
 * CaseType: fail_compile
 * Priority: P1
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0914
 * Related Spec: public abstract method 未保持 public 实现，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: public abstract method 未保持 public 实现，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
