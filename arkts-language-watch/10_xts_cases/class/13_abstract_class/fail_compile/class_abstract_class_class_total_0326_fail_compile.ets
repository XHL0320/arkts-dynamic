/*
 * Feature: Class
 * SubFeature: 13_abstract_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0326
 * Related Spec: generic abstract method 实现违反泛型约束，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: generic abstract method 实现违反泛型约束，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
