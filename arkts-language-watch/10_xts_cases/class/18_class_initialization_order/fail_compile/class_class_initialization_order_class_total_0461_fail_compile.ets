/*
 * Feature: Class
 * SubFeature: 18_class_initialization_order
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0461
 * Related Spec: 派生类 constructor 中 super() 前调用 this.method()，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 派生类 constructor 中 super() 前调用 this.method()，checker 报错

class InitFailCase {
  public value: number = "wrong"
}
