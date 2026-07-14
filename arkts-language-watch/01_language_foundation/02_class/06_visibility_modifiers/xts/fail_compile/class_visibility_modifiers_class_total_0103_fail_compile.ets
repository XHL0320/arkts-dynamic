/*
 * Case ID: CLASS-FAILC-093
 * Coverage ID:
 *   - CLASS-TOTAL-0103
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify private field 不能满足 interface public property，checker 报错
 */

// Expected error: private field 不能满足 interface public property，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
