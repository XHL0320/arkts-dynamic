/*
 * Case ID: CLASS-FAILC-123
 * Coverage ID:
 *   - CLASS-TOTAL-0136
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify static 与 instance method 覆盖冲突，checker 报错
 */

// Expected error: static 与 instance method 覆盖冲突，checker 报错

class BaseFailCase {
  public getValue(): number {
    return 1
  }
}
class DerivedFailCase extends BaseFailCase {
  public getValue(): string {
    return "wrong"
  }
}
