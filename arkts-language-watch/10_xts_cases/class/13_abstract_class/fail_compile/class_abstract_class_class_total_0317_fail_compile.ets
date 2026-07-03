/*
 * Feature: Class
 * SubFeature: 13_abstract_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0317
 * Related Spec: abstract class 继承非 class / 非 constructor，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: abstract class 继承非 class / 非 constructor，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
