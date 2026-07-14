/*
 * Case ID: CLASS-FAILC-063
 * Coverage ID:
 *   - CLASS-TOTAL-0067
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 部分控制流路径缺少 return，checker 报错
 */

// Expected error: 部分控制流路径缺少 return，checker 报错

class MethodFailCase {
  public getValue(value: number): number {
    return "wrong"
  }
}
let obj: MethodFailCase = new MethodFailCase()
obj.getValue("wrong")
