/*
 * Feature: Class
 * SubFeature: 03_field
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0039
 * Related Spec: 动态属性访问字段 a['x']，如 ArkTS 禁止则报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 动态属性访问字段 a['x']，如 ArkTS 禁止则报错

class FieldFailCase {
  public value: number = "wrong"
}
