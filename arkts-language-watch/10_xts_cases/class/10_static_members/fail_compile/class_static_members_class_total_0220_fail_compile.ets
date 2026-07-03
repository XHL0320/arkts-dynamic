/*
 * Feature: Class
 * SubFeature: 10_static_members
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0220
 * Related Spec: instance method 通过 class name 直接调用，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: instance method 通过 class name 直接调用，checker 报错

class StaticFailCase {
  public instanceValue: number = 1
  public static read(): number {
    return this.instanceValue
  }
}
