/*
 * Feature: Class
 * SubFeature: 10_static_members
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ES2022 / ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0243
 * Related Spec: static method 通过 instance 调用，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: static method 通过 instance 调用，checker 报错

class StaticFailCase {
  public instanceValue: number = 1
  public static read(): number {
    return this.instanceValue
  }
}
