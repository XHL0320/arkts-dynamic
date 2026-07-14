/*
 * Case ID: CLASS-FAILC-386
 * Coverage ID:
 *   - CLASS-TOTAL-0418
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify derived constructor 中 super() 前访问 this，checker 报错
 */

// Expected error: derived constructor 中 super() 前访问 this，checker 报错

class ThisFailCase {
  public static read(): number {
    return this.value
  }
  public value: number = 1
}
