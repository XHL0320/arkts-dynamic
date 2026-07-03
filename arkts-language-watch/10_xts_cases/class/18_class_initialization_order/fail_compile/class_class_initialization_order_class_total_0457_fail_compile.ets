/*
 * Feature: Class
 * SubFeature: 18_class_initialization_order
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0457
 * Related Spec: 字段无初始化值且 constructor 未赋值，如 ArkTS 要求 definite assignment 则报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 字段无初始化值且 constructor 未赋值，如 ArkTS 要求 definite assignment 则报错

class InitFailCase {
  public value: number = "wrong"
}
