/*
 * Case ID: CLASS-FAILC-287
 * Coverage ID:
 *   - CLASS-TOTAL-0312
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify abstract base constructor super() 参数个数不足，checker 报错
 */

// Expected error: abstract base constructor super() 参数个数不足，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
