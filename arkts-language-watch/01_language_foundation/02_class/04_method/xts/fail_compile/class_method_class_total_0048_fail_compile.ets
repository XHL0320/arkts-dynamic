/*
 * Case ID: CLASS-FAILC-045
 * Coverage ID:
 *   - CLASS-TOTAL-0048
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify instance method 通过 class 名访问，checker 报错
 */

// Expected error: instance method 通过 class 名访问，checker 报错

class MethodFailCase {
  public getValue(value: number): number {
    return "wrong"
  }
}
let obj: MethodFailCase = new MethodFailCase()
obj.getValue("wrong")
