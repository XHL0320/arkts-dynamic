/*
 * Feature: Class
 * SubFeature: 16_this_in_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022 / ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0422
 * Related Spec: field initializer 中 this.method() 如 ArkTS 禁止则报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: field initializer 中 this.method() 如 ArkTS 禁止则报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
