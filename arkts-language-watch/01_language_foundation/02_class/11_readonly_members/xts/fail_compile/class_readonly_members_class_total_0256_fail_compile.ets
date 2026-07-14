/*
 * Case ID: CLASS-FAILC-234
 * Coverage ID:
 *   - CLASS-TOTAL-0256
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify readonly static field 外部赋值，checker 报错
 */

// Expected error: readonly static field 外部赋值，checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
