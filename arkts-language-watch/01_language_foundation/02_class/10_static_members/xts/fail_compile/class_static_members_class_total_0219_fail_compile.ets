/*
 * Feature: Class
 * SubFeature: 10_static_members
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0219
 * Related Spec: instance field 通过 class name 直接访问，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: instance field 通过 class name 直接访问，checker 报错

class StaticFailCase {
  public instanceValue: number = 1
  public static read(): number {
    return this.instanceValue
  }
}
