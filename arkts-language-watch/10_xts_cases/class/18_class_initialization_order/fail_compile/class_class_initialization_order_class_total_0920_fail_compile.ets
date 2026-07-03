/*
 * Feature: Class
 * SubFeature: 18_class_initialization_order
 * CaseType: fail_compile
 * Priority: P1
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0920
 * Related Spec: module/circular import 静态可判定非法引用，如 ArkTS 支持则 checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: module/circular import 静态可判定非法引用，如 ArkTS 支持则 checker 报错

class InitFailCase {
  public value: number = "wrong"
}
