/*
 * Feature: Class
 * SubFeature: 16_this_in_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022 / ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0431
 * Related Spec: method 中 this 访问 protected member 于非法上下文，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: method 中 this 访问 protected member 于非法上下文，checker 报错

class ProtectedFailCase {
  protected value: number = 1
}
let obj: ProtectedFailCase = new ProtectedFailCase()
let value: number = obj.value
