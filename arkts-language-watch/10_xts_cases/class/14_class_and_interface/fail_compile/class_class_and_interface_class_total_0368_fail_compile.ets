/*
 * Feature: Class
 * SubFeature: 14_class_and_interface
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0368
 * Related Spec: readonly interface property 与 class field 兼容规则不满足时 checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: readonly interface property 与 class field 兼容规则不满足时 checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
