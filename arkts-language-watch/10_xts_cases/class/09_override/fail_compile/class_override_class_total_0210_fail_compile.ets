/*
 * Feature: Class
 * SubFeature: 09_override
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0210
 * Related Spec: 覆盖方法参数类型不一致，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 覆盖方法参数类型不一致，checker 报错

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
