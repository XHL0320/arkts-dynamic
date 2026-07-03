/*
 * Feature: Class
 * SubFeature: 13_abstract_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0325
 * Related Spec: generic abstract class 子类指定不满足约束的类型实参，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: generic abstract class 子类指定不满足约束的类型实参，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
