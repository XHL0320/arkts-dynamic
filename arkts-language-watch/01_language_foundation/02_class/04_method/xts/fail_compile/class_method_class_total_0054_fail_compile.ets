/*
 * Case ID: CLASS-FAILC-051
 * Coverage ID:
 *   - CLASS-TOTAL-0054
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify rest 参数不是最后一个参数，parser/checker 报错
 */

// Expected error: rest 参数不是最后一个参数，parser/checker 报错

class MethodFailCase {
  public getValue(value: number): number {
    return "wrong"
  }
}
let obj: MethodFailCase = new MethodFailCase()
obj.getValue("wrong")
