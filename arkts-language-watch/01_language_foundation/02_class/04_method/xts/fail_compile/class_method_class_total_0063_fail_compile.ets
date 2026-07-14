/*
 * Case ID: CLASS-FAILC-059
 * Coverage ID:
 *   - CLASS-TOTAL-0063
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 覆盖方法返回类型不兼容，checker 报错
 */

// Expected error: 覆盖方法返回类型不兼容，checker 报错

class MethodFailCase {
  public getValue(value: number): number {
    return "wrong"
  }
}
let obj: MethodFailCase = new MethodFailCase()
obj.getValue("wrong")
