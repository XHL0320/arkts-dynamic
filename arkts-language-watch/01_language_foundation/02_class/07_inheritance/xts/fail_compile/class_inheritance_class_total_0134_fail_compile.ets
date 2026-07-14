/*
 * Case ID: CLASS-FAILC-121
 * Coverage ID:
 *   - CLASS-TOTAL-0134
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic 继承中类型参数不满足约束，checker 报错
 */

// Expected error: generic 继承中类型参数不满足约束，checker 报错

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
