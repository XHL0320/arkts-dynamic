/*
 * Feature: Class
 * SubFeature: 13_abstract_class
 * CaseType: fail_compile
 * Priority: P1
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0913
 * Related Spec: protected abstract method 实现为 private，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: protected abstract method 实现为 private，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
