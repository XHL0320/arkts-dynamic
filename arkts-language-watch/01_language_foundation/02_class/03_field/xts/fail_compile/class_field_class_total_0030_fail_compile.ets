/*
 * Feature: Class
 * SubFeature: 03_field
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0030
 * Related Spec: instance 字段通过类名访问，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: instance 字段通过类名访问，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
