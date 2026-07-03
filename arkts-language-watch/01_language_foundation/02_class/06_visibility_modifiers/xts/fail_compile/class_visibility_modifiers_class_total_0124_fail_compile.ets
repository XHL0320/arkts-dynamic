/*
 * Feature: Class
 * SubFeature: 06_visibility_modifiers
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0124
 * Related Spec: 外部访问 private static field，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 外部访问 private static field，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
