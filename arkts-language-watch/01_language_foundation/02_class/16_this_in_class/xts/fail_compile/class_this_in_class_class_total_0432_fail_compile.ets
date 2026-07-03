/*
 * Feature: Class
 * SubFeature: 16_this_in_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022 / ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0432
 * Related Spec: method 返回 this 但声明返回不兼容类型，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: method 返回 this 但声明返回不兼容类型，checker 报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
