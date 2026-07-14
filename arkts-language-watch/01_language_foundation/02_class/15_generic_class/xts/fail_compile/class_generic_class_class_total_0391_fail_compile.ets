/*
 * Case ID: CLASS-FAILC-360
 * Coverage ID:
 *   - CLASS-TOTAL-0391
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic readonly field 初始化不满足 T，checker 报错
 */

// Expected error: generic readonly field 初始化不满足 T，checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
