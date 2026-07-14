/*
 * Case ID: CLASS-FAILC-334
 * Coverage ID:
 *   - CLASS-TOTAL-0365
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify protected field 不能满足 interface public property，checker 报错
 */

// Expected error: protected field 不能满足 interface public property，checker 报错

class ProtectedFailCase {
  protected value: number = 1
}
let obj: ProtectedFailCase = new ProtectedFailCase()
let value: number = obj.value
