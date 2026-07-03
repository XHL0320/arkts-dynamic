/*
 * Feature: Class
 * SubFeature: 13_abstract_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0322
 * Related Spec: abstract method 带方法体，parser/checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: abstract method 带方法体，parser/checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
