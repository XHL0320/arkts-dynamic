/*
 * Feature: Class
 * SubFeature: 03_field
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0028
 * Related Spec: class 类型字段赋值无关 class 实例，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: class 类型字段赋值无关 class 实例，checker 报错

class FieldFailCase {
  public value: number = "wrong"
}
