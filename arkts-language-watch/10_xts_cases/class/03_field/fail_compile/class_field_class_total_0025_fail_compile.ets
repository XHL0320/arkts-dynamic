/*
 * Feature: Class
 * SubFeature: 03_field
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0025
 * Related Spec: array 字段赋值非数组，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: array 字段赋值非数组，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
