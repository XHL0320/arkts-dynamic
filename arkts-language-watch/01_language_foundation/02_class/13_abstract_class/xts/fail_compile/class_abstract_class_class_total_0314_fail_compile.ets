/*
 * Case ID: CLASS-FAILC-289
 * Coverage ID:
 *   - CLASS-TOTAL-0314
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify abstract base constructor super() 参数类型错误，checker 报错
 */

// Expected error: abstract base constructor super() 参数类型错误，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
