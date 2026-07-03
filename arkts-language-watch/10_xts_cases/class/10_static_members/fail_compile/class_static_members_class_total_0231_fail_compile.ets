/*
 * Feature: Class
 * SubFeature: 10_static_members
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0231
 * Related Spec: static member 不能满足 instance interface property，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: static member 不能满足 instance interface property，checker 报错

class StaticFailCase {
  public instanceValue: number = 1
  public static read(): number {
    return this.instanceValue
  }
}
