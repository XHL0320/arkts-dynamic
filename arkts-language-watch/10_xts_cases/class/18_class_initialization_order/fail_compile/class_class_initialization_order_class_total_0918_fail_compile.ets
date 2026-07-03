/*
 * Feature: Class
 * SubFeature: 18_class_initialization_order
 * CaseType: fail_compile
 * Priority: P1
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0918
 * Related Spec: Derived constructor 中 super 参数传递类型错误，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: Derived constructor 中 super 参数传递类型错误，checker 报错

class InitFailCase {
  public value: number = "wrong"
}
