/*
 * Feature: Class
 * SubFeature: 18_class_initialization_order
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0455
 * Related Spec: 字段初始化表达式访问不存在成员，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 字段初始化表达式访问不存在成员，checker 报错

class InitFailCase {
  public value: number = "wrong"
}
