/*
 * Feature: Class
 * SubFeature: 04_method
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0052
 * Related Spec: private method 外部访问，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: private method 外部访问，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
