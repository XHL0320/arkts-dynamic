/*
 * Case ID: CLASS-FAILC-018
 * Coverage ID:
 *   - CLASS-TOTAL-0021
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify private 成员导致两个 class type 不兼容，checker 报错
 */

// Expected error: private 成员导致两个 class type 不兼容，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
