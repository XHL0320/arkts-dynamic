/*
 * Case ID: CLASS-FAILC-119
 * Coverage ID:
 *   - CLASS-TOTAL-0132
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify extends 非 class / 非 constructor，如静态可识别则报错
 */

// Expected error: extends 非 class / 非 constructor，如静态可识别则报错

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
