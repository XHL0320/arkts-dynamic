/*
 * Feature: Class
 * SubFeature: 14_class_and_interface
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0366
 * Related Spec: protected method 不能满足 interface public method，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: protected method 不能满足 interface public method，checker 报错

class ProtectedFailCase {
  protected value: number = 1
}
let obj: ProtectedFailCase = new ProtectedFailCase()
let value: number = obj.value
