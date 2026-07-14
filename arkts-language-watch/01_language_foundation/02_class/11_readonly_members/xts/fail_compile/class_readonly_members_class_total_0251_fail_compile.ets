/*
 * Case ID: CLASS-FAILC-229
 * Coverage ID:
 *   - CLASS-TOTAL-0251
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify protected readonly field 外部读取或写入，checker 报错
 */

// Expected error: protected readonly field 外部读取或写入，checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
