/*
 * Case ID: CLASS-FAILC-396
 * Coverage ID:
 *   - CLASS-TOTAL-0428
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify instance method 中修改 readonly field，checker 报错
 */

// Expected error: instance method 中修改 readonly field，checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
