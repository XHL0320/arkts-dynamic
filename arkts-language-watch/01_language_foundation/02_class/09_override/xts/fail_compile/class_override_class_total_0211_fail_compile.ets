/*
 * Feature: Class
 * SubFeature: 09_override
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0211
 * Related Spec: 覆盖方法可选参数与必选参数不兼容，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 覆盖方法可选参数与必选参数不兼容，checker 报错

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
