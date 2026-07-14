/*
 * Case ID: CLASS-FAILC-065
 * Coverage ID:
 *   - CLASS-TOTAL-0070
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 非 void 方法缺少 return，checker 报错
 */

// Expected error: 非 void 方法缺少 return，checker 报错

class MethodFailCase {
  public getValue(value: number): number {
    return "wrong"
  }
}
let obj: MethodFailCase = new MethodFailCase()
obj.getValue("wrong")
