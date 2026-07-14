/*
 * Case ID: CLASS-FAILC-246
 * Coverage ID:
 *   - CLASS-TOTAL-0268
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 外部对 readonly 字段赋值，checker 报错
 */

// Expected error: 外部对 readonly 字段赋值，checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
