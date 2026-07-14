/*
 * Case ID: CLASS-FAILC-298
 * Coverage ID:
 *   - CLASS-TOTAL-0327
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify interface method 与 abstract method 签名不兼容，checker 报错
 */

// Expected error: interface method 与 abstract method 签名不兼容，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
