/*
 * Feature: Class
 * SubFeature: 03_field
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0031
 * Related Spec: interface 类型字段缺少必需属性，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: interface 类型字段缺少必需属性，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
