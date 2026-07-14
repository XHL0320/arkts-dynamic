/*
 * Case ID: CLASS-FAILC-133
 * Coverage ID:
 *   - CLASS-TOTAL-0146
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 普通类继承 abstract class 未实现 abstract method，checker 报错
 */

// Expected error: 普通类继承 abstract class 未实现 abstract method，checker 报错

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
