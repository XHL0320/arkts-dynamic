/*
 * Feature: Class
 * SubFeature: 06_visibility_modifiers
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0128
 * Related Spec: 跨模块 import class 后外部访问 private field，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 跨模块 import class 后外部访问 private field，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
