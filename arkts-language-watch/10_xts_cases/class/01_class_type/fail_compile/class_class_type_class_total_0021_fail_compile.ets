/*
 * Feature: Class
 * SubFeature: 01_class_type
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0021
 * Related Spec: private 成员导致两个 class type 不兼容，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: private 成员导致两个 class type 不兼容，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
