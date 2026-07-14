/*
 * Case ID: CLASS-FAILC-187
 * Coverage ID:
 *   - CLASS-TOTAL-0202
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 子类字段类型与基类字段类型不一致，如 ArkTS 禁止则 checker 报错
 */

// Expected error: 子类字段类型与基类字段类型不一致，如 ArkTS 禁止则 checker 报错

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
