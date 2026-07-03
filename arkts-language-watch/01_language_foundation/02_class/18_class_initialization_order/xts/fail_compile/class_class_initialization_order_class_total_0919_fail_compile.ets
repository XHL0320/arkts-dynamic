/*
 * Feature: Class
 * SubFeature: 18_class_initialization_order
 * CaseType: fail_compile
 * Priority: P1
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0919
 * Related Spec: constructor 中 return object/primitive 如 ArkTS 静态禁止则 checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: constructor 中 return object/primitive 如 ArkTS 静态禁止则 checker 报错

class InitFailCase {
  public value: number = "wrong"
}
