/*
 * Feature: Class
 * SubFeature: 11_readonly_members
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0264
 * Related Spec: readonly 字段类型注解与初始化值不一致，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: readonly 字段类型注解与初始化值不一致，checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
