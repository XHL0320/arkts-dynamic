/*
 * Case ID: CLASS-FAILC-261
 * Coverage ID:
 *   - CLASS-TOTAL-0284
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify object literal 不能满足含 private field 的 class type，checker 报错
 */

// Expected error: object literal 不能满足含 private field 的 class type，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
