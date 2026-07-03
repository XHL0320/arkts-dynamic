/*
 * Feature: Class
 * SubFeature: 11_readonly_members
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0246
 * Related Spec: class readonly field 类型与 interface readonly property 不一致，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: class readonly field 类型与 interface readonly property 不一致，checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
