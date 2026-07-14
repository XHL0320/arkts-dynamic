/*
 * Case ID: CLASS-FAILC-194
 * Coverage ID:
 *   - CLASS-TOTAL-0214
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 覆盖方法返回基类类型覆盖基类要求派生类类型，checker 报错
 */

// Expected error: 覆盖方法返回基类类型覆盖基类要求派生类类型，checker 报错

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
