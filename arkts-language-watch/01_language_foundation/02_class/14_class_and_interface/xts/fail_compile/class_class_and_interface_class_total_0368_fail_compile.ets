/*
 * Case ID: CLASS-FAILC-337
 * Coverage ID:
 *   - CLASS-TOTAL-0368
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify readonly interface property 与 class field 兼容规则不满足时 checker 报错
 */

// Expected error: readonly interface property 与 class field 兼容规则不满足时 checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
