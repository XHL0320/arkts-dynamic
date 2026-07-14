/*
 * Case ID: CLASS-FAILC-202
 * Coverage ID:
 *   - CLASS-TOTAL-0221
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify private static field 外部访问，checker 报错
 */

// Expected error: private static field 外部访问，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
