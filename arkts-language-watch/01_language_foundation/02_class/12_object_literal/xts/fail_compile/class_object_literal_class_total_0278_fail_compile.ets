/*
 * Feature: Class
 * SubFeature: 12_object_literal
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0278
 * Related Spec: nested object literal 缺少 nested interface 属性，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: nested object literal 缺少 nested interface 属性，checker 报错

interface ObjectFailShape {
  value: number
}
let obj: ObjectFailShape = {
  value: "wrong"
}
