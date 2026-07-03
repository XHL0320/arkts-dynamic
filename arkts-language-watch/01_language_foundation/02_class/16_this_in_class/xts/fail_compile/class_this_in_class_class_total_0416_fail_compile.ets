/*
 * Feature: Class
 * SubFeature: 16_this_in_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022 / ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0416
 * Related Spec: derived constructor 中 super() 前创建并调用 arrow 捕获 this，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: derived constructor 中 super() 前创建并调用 arrow 捕获 this，checker 报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
