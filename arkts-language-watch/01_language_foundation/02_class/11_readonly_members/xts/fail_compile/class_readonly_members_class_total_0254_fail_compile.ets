/*
 * Case ID: CLASS-FAILC-232
 * Coverage ID:
 *   - CLASS-TOTAL-0254
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify readonly object field 引用重新赋值，checker 报错
 */

// Expected error: readonly object field 引用重新赋值，checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
