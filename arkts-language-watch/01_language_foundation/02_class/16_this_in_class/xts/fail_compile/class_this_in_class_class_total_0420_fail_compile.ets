/*
 * Feature: Class
 * SubFeature: 16_this_in_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022 / ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0420
 * Related Spec: derived constructor 部分路径未调用 super 后使用 this，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: derived constructor 部分路径未调用 super 后使用 this，checker 报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
