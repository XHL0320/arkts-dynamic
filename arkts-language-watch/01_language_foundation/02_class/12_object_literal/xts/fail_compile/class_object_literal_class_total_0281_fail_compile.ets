/*
 * Case ID: CLASS-FAILC-258
 * Coverage ID:
 *   - CLASS-TOTAL-0281
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify object literal readonly property 类型不匹配，checker 报错
 */

// Expected error: object literal readonly property 类型不匹配，checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
