/*
 * Case ID: CLASS-FAILC-178
 * Coverage ID:
 *   - CLASS-TOTAL-0191
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify override 修饰不存在的基类方法，checker 报错
 */

// Expected error: override 修饰不存在的基类方法，checker 报错

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
