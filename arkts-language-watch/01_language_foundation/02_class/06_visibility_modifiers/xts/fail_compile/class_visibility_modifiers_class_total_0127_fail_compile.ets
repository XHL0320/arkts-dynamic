/*
 * Case ID: CLASS-FAILC-113
 * Coverage ID:
 *   - CLASS-TOTAL-0127
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 实例访问 static private/protected/public member，checker 报错
 */

// Expected error: 实例访问 static private/protected/public member，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
