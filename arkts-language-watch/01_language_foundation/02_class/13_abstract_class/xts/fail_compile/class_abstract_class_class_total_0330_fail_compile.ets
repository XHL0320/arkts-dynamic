/*
 * Case ID: CLASS-FAILC-301
 * Coverage ID:
 *   - CLASS-TOTAL-0330
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 子类实现 abstract method 参数类型不兼容，checker 报错
 */

// Expected error: 子类实现 abstract method 参数类型不兼容，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
