/*
 * Case ID: CLASS-FAILC-225
 * Coverage ID:
 *   - CLASS-TOTAL-0247
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic readonly field 初始化不满足约束，checker 报错
 */

// Expected error: generic readonly field 初始化不满足约束，checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
