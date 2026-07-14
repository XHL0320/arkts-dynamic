/*
 * Case ID: CLASS-FAILC-401
 * Coverage ID:
 *   - CLASS-TOTAL-0434
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify object literal 赋给 class method type 时 this 不兼容，checker 报错
 */

// Expected error: object literal 赋给 class method type 时 this 不兼容，checker 报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
