/*
 * Case ID: CLASS-FAILC-293
 * Coverage ID:
 *   - CLASS-TOTAL-0321
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify abstract method 与 concrete method 同名冲突，checker 报错
 */

// Expected error: abstract method 与 concrete method 同名冲突，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
