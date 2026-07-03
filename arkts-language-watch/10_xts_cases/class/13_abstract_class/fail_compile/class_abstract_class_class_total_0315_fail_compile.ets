/*
 * Feature: Class
 * SubFeature: 13_abstract_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0315
 * Related Spec: abstract class implements interface 但 concrete 子类未最终实现 interface method，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: abstract class implements interface 但 concrete 子类未最终实现 interface method，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
