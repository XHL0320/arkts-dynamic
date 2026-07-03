/*
 * Feature: Class
 * SubFeature: 11_readonly_members
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0257
 * Related Spec: readonly static field 类内 static method 赋值，checker 报错或边界记录
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: readonly static field 类内 static method 赋值，checker 报错或边界记录

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
