/*
 * Feature: Class
 * SubFeature: 16_this_in_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022 / ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0438
 * Related Spec: this 访问 private static member 的非法实例侧访问，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: this 访问 private static member 的非法实例侧访问，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
