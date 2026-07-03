/*
 * Feature: Class
 * SubFeature: 16_this_in_class
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0435
 * Related Spec: static generic method 中 this 误用 class type parameter T，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: static generic method 中 this 误用 class type parameter T，checker 报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
