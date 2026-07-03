/*
 * Feature: Class
 * SubFeature: 18_class_initialization_order
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0442
 * Related Spec: generic T 字段初始化不满足约束，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: generic T 字段初始化不满足约束，checker 报错

class InitFailCase {
  public value: number = "wrong"
}
