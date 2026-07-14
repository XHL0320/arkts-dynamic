/*
 * Case ID: CLASS-FAILC-177
 * Coverage ID:
 *   - CLASS-TOTAL-0190
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: function
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify override 修饰 private method，checker 报错或边界记录
 */

// Expected error: override 修饰 private method，checker 报错或边界记录

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
