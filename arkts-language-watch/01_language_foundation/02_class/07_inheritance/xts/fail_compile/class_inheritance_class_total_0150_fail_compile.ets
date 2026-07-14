/*
 * Case ID: CLASS-FAILC-137
 * Coverage ID:
 *   - CLASS-TOTAL-0150
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 派生类重复声明不兼容继承关系，checker 报错
 */

// Expected error: 派生类重复声明不兼容继承关系，checker 报错

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
