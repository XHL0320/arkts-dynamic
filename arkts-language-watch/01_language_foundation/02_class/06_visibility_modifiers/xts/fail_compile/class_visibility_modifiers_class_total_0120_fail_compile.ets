/*
 * Feature: Class
 * SubFeature: 06_visibility_modifiers
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0120
 * Related Spec: protected method 外部调用，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: protected method 外部调用，checker 报错

class ProtectedFailCase {
  protected value: number = 1
}
let obj: ProtectedFailCase = new ProtectedFailCase()
let value: number = obj.value
