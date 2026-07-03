/*
 * Feature: Class
 * SubFeature: 13_abstract_class
 * CaseType: fail_compile
 * Priority: P1
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0912
 * Related Spec: abstract class 中 constructor 标注返回类型，如 ArkTS 禁止则 checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: abstract class 中 constructor 标注返回类型，如 ArkTS 禁止则 checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
