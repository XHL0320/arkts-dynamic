/*
 * Feature: Class
 * SubFeature: 12_object_literal
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0306
 * Related Spec: optional property 类型不匹配，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: optional property 类型不匹配，checker 报错

interface ObjectFailShape {
  value: number
}
let obj: ObjectFailShape = {
  value: "wrong"
}
