/*
 * Case ID: CLASS-FAILC-230
 * Coverage ID:
 *   - CLASS-TOTAL-0252
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify protected/private readonly field 不能满足 public interface property，checker 报错
 */

// Expected error: protected/private readonly field 不能满足 public interface property，checker 报错

class ReadonlyFailCase {
  public readonly value: number = 1
  public change(): void {
    this.value = 2
  }
}
