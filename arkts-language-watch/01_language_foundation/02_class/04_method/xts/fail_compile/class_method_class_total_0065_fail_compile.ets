/*
 * Case ID: CLASS-FAILC-061
 * Coverage ID:
 *   - CLASS-TOTAL-0065
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 返回 interface 类型方法缺少成员，checker 报错
 */

// Expected error: 返回 interface 类型方法缺少成员，checker 报错

class MethodFailCase {
  public getValue(value: number): number {
    return "wrong"
  }
}
let obj: MethodFailCase = new MethodFailCase()
obj.getValue("wrong")
