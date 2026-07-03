/*
 * Feature: Class
 * SubFeature: 11_readonly_members
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0272
 * Related Spec: 通过 class type 引用对 readonly 字段赋值，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 通过 class type 引用对 readonly 字段赋值，checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
