/*
 * Case ID: CLASS-FAILC-188
 * Coverage ID:
 *   - CLASS-TOTAL-0206
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 覆盖基类方法但不写 override 是否报错，按 ArkTS 要求记录
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
