/*
 * Feature: Class
 * SubFeature: 12_object_literal
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0309
 * Related Spec: 跨模块 private/protected class type 与 object literal 兼容错误，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 跨模块 private/protected class type 与 object literal 兼容错误，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
