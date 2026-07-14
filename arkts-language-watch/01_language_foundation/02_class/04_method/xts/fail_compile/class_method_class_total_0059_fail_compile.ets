/*
 * Case ID: CLASS-FAILC-055
 * Coverage ID:
 *   - CLASS-TOTAL-0059
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 参数个数不足，checker 报错
 */

// Expected error: 参数个数不足，checker 报错

class MethodFailCase {
  public getValue(value: number): number {
    return "wrong"
  }
}
let obj: MethodFailCase = new MethodFailCase()
obj.getValue("wrong")
