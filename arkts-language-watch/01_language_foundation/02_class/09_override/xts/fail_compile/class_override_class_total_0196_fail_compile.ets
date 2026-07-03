/*
 * Feature: Class
 * SubFeature: 09_override
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0196
 * Related Spec: public method 覆盖为 protected，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: public method 覆盖为 protected，checker 报错

class ProtectedFailCase {
  protected value: number = 1
}
let obj: ProtectedFailCase = new ProtectedFailCase()
let value: number = obj.value
