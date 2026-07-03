/*
 * Feature: Class
 * SubFeature: 03_field
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0042
 * Related Spec: 字段初始化表达式类型与声明类型不匹配，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 字段初始化表达式类型与声明类型不匹配，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
