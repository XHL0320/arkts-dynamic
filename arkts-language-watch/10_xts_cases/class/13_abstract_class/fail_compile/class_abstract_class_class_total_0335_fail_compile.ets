/*
 * Feature: Class
 * SubFeature: 13_abstract_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0335
 * Related Spec: 普通子类未实现 abstract method，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 普通子类未实现 abstract method，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
