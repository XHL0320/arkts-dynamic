/*
 * Case ID: CLASS-FAILC-047
 * Coverage ID:
 *   - CLASS-TOTAL-0050
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify overload 实现签名不兼容，checker 报错
 */

// Expected error: overload 实现签名不兼容，checker 报错

class MethodFailCase {
  public getValue(value: number): number {
    return "wrong"
  }
}
let obj: MethodFailCase = new MethodFailCase()
obj.getValue("wrong")
