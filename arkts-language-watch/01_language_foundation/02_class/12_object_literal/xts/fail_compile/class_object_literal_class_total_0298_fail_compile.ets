/*
 * Feature: Class
 * SubFeature: 12_object_literal
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0298
 * Related Spec: object literal 缺少 derived class 新增字段，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: object literal 缺少 derived class 新增字段，checker 报错

interface ObjectFailShape {
  value: number
}
let obj: ObjectFailShape = {
  value: "wrong"
}
