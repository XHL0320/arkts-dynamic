/*
 * Feature: Class
 * SubFeature: 03_field
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0033
 * Related Spec: number[] 字段写入 string[]，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: number[] 字段写入 string[]，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
