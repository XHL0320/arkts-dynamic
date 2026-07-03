/*
 * Feature: Class
 * SubFeature: 16_this_in_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022 / ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0437
 * Related Spec: this 作为返回值赋给不兼容 class type，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: this 作为返回值赋给不兼容 class type，checker 报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
