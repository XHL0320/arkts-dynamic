/*
 * Feature: Class
 * SubFeature: 09_override
 * CaseType: fail_compile
 * Priority: P0
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0200
 * Related Spec: 子类 overload 实现签名不兼容，checker 报错
 * Expected: ArkTS parser/checker reports the documented compile-time error.
 */

// Expected error: 子类 overload 实现签名不兼容，checker 报错

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
