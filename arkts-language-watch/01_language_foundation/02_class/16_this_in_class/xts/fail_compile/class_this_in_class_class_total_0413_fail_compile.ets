/*
 * Case ID: CLASS-FAILC-381
 * Coverage ID:
 *   - CLASS-TOTAL-0413
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify constructor 中 this.method() 参数错误，checker 报错
 */

// Expected error: constructor 中 this.method() 参数错误，checker 报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
