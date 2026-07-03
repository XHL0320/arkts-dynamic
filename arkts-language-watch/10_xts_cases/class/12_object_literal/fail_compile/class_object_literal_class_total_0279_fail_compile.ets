/*
 * Feature: Class
 * SubFeature: 12_object_literal
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0279
 * Related Spec: object literal array property 元素类型不匹配，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: object literal array property 元素类型不匹配，checker 报错

interface ObjectFailShape {
  value: number
}
let obj: ObjectFailShape = {
  value: "wrong"
}
