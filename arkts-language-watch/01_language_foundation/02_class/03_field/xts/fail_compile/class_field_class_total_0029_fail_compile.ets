/*
 * Feature: Class
 * SubFeature: 03_field
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0029
 * Related Spec: generic class 字段赋值不满足 T，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: generic class 字段赋值不满足 T，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
