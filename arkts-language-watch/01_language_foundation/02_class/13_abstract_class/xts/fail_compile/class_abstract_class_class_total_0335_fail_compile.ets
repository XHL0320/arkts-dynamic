/*
 * Case ID: CLASS-FAILC-306
 * Coverage ID:
 *   - CLASS-TOTAL-0335
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 普通子类未实现 abstract method，checker 报错
 */

// Expected error: 普通子类未实现 abstract method，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
