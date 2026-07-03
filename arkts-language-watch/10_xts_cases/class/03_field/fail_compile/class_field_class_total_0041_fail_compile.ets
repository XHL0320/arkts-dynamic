/*
 * Feature: Class
 * SubFeature: 03_field
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0041
 * Related Spec: 字段与方法同名，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 字段与方法同名，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
