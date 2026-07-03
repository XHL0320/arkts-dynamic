/*
 * Feature: Class
 * SubFeature: 18_class_initialization_order
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0440
 * Related Spec: Base constructor 参数传递类型错误，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: Base constructor 参数传递类型错误，checker 报错

class InitFailCase {
  public value: number = "wrong"
}
