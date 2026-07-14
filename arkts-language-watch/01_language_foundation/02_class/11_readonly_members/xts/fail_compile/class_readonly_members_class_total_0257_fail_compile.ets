/*
 * Case ID: CLASS-FAILC-235
 * Coverage ID:
 *   - CLASS-TOTAL-0257
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify readonly static field 类内 static method 赋值，checker 报错或边界记录
 */

// Expected error: readonly static field 类内 static method 赋值，checker 报错或边界记录

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
