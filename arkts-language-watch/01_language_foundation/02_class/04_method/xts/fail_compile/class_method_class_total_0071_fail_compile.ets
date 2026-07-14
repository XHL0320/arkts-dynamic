/*
 * Case ID: CLASS-FAILC-066
 * Coverage ID:
 *   - CLASS-TOTAL-0071
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 默认参数初始化值与参数类型不匹配，checker 报错
 */

// Expected error: 默认参数初始化值与参数类型不匹配，checker 报错

class MethodFailCase {
  public getValue(value: number): number {
    return "wrong"
  }
}
let obj: MethodFailCase = new MethodFailCase()
obj.getValue("wrong")
