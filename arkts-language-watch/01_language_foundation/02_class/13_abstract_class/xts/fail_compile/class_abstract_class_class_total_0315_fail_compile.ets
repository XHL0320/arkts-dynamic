/*
 * Case ID: CLASS-FAILC-290
 * Coverage ID:
 *   - CLASS-TOTAL-0315
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify abstract class implements interface 但 concrete 子类未最终实现 interface method，checker 报错
 */

// Expected error: abstract class implements interface 但 concrete 子类未最终实现 interface method，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
