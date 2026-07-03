/*
 * Feature: Class
 * SubFeature: 18_class_initialization_order
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0448
 * Related Spec: static field 初始化表达式引用不存在 static member，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: static field 初始化表达式引用不存在 static member，checker 报错

class InitFailCase {
  public value: number = "wrong"
}
