/*
 * Case ID: CLASS-FAILC-186
 * Coverage ID:
 *   - CLASS-TOTAL-0200
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 子类 overload 实现签名不兼容，checker 报错
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
