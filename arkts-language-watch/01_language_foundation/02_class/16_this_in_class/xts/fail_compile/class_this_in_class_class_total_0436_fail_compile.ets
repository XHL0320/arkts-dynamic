/*
 * Case ID: CLASS-FAILC-403
 * Coverage ID:
 *   - CLASS-TOTAL-0436
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify static method 中 this 调用 instance method，checker 报错
 */

// Expected error: static method 中 this 调用 instance method，checker 报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
