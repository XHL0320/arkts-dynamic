/*
 * Feature: Class
 * SubFeature: 03_field
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0038
 * Related Spec: string 字段赋值 boolean，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: string 字段赋值 boolean，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
