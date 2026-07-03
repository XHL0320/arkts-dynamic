/*
 * Feature: Class
 * SubFeature: 16_this_in_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022 / ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0414
 * Related Spec: constructor 中通过 this 访问 static member，checker 报错或边界记录
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: constructor 中通过 this 访问 static member，checker 报错或边界记录

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
