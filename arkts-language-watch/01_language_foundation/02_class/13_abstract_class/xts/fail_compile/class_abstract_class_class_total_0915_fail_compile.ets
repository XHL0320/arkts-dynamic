/*
 * Case ID: CLASS-FAILC-312
 * Coverage ID:
 *   - CLASS-TOTAL-0915
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 子类声明为 concrete 但遗漏多层基类中的抽象方法，checker 报错
 */

// Expected error: 子类声明为 concrete 但遗漏多层基类中的抽象方法，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
