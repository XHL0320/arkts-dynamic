/*
 * Case ID: CLASS-FAILC-223
 * Coverage ID:
 *   - CLASS-TOTAL-0910
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 跨模块访问 static private/protected，checker 报错
 */

// Expected error: 跨模块访问 static private/protected，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
