/*
 * Feature: Class
 * SubFeature: 06_visibility_modifiers
 * CaseType: fail_compile
 * Priority: P1
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0901
 * Related Spec: class implements interface 时成员可见性不兼容，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: class implements interface 时成员可见性不兼容，checker 报错

class VisibilityFail {
  private value: number = 1
}
let obj: VisibilityFail = new VisibilityFail()
let value: number = obj.value
