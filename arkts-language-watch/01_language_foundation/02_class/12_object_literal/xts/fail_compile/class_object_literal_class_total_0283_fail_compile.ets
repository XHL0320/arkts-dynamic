/*
 * Case ID: CLASS-FAILC-260
 * Coverage ID:
 *   - CLASS-TOTAL-0283
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify object literal 不能满足 abstract class private/protected 成员，checker 报错
 */

// Expected error: object literal 不能满足 abstract class private/protected 成员，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
