/*
 * Feature: Class
 * SubFeature: 12_object_literal
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0304
 * Related Spec: object literal 赋值给 generic class type Box<T> 不满足字段 T，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: object literal 赋值给 generic class type Box<T> 不满足字段 T，checker 报错

interface ObjectFailShape {
  value: number
}
let obj: ObjectFailShape = {
  value: "wrong"
}
