/*
 * Case ID: CLASS-FAILC-296
 * Coverage ID:
 *   - CLASS-TOTAL-0325
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic abstract class 子类指定不满足约束的类型实参，checker 报错
 */

// Expected error: generic abstract class 子类指定不满足约束的类型实参，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
