/*
 * Case ID: CLASS-FAILC-138
 * Coverage ID:
 *   - CLASS-TOTAL-0152
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 覆盖方法参数类型不兼容，checker 报错
 */

// Expected error: 覆盖方法参数类型不兼容，checker 报错

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
