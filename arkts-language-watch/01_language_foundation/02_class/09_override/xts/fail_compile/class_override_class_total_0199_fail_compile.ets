/*
 * Feature: Class
 * SubFeature: 09_override
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: CLASS-TOTAL-0199
 * Related Spec: static method 返回类型不兼容，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: static method 返回类型不兼容，checker 报错

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
