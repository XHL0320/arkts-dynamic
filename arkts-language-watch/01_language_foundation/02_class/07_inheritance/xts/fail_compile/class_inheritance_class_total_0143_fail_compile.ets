/*
 * Case ID: CLASS-FAILC-130
 * Coverage ID:
 *   - CLASS-TOTAL-0143
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 字段遮蔽类型不兼容，checker 报错
 */

// Expected error: 字段遮蔽类型不兼容，checker 报错

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
