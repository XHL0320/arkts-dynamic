/*
 * Feature: Class
 * SubFeature: 03_field
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0044
 * Related Spec: 字段重复声明，checker/parser 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 字段重复声明，checker/parser 报错

class FieldFailCase {
  public value: number = "wrong"
}
