/*
 * Feature: Class
 * SubFeature: 10_static_members
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022 / ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0225
 * Related Spec: readonly static field 外部赋值，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: readonly static field 外部赋值，checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
