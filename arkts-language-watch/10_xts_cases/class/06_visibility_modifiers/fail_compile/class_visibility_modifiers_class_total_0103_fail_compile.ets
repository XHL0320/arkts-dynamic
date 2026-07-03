/*
 * Feature: Class
 * SubFeature: 06_visibility_modifiers
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0103
 * Related Spec: private field 不能满足 interface public property，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: private field 不能满足 interface public property，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
