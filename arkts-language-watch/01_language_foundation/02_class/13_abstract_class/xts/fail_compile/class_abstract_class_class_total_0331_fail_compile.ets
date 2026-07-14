/*
 * Case ID: CLASS-FAILC-302
 * Coverage ID:
 *   - CLASS-TOTAL-0331
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 子类实现 abstract method 返回类型不兼容，checker 报错
 */

// Expected error: 子类实现 abstract method 返回类型不兼容，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
