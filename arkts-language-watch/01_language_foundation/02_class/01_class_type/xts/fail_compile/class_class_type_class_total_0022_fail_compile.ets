/*
 * Case ID: CLASS-FAILC-019
 * Coverage ID:
 *   - CLASS-TOTAL-0022
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify protected 成员导致两个 class type 不兼容，checker 报错
 */

// Expected error: protected 成员导致两个 class type 不兼容，checker 报错

class ProtectedFailCase {
  protected value: number = 1
}
let obj: ProtectedFailCase = new ProtectedFailCase()
let value: number = obj.value
