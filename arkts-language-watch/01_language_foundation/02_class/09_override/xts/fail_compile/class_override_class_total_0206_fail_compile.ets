/*
 * Feature: Class
 * SubFeature: 09_override
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific / TS-compatible
 * Source Coverage ID: CLASS-TOTAL-0206
 * Related Spec: 覆盖基类方法但不写 override 是否报错，按 ArkTS 要求记录
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 覆盖基类方法但不写 override 是否报错，按 ArkTS 要求记录

class OverrideBaseFail {
  public getValue(value: number): number {
    return value
  }
}
class OverrideDerivedFail extends OverrideBaseFail {
  public getValue(value: string): number {
    return 1
  }
}
