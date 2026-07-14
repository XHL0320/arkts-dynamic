/*
 * Case ID: CLASS-FAILC-311
 * Coverage ID:
 *   - CLASS-TOTAL-0914
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify public abstract method 未保持 public 实现，checker 报错
 */

// Expected error: public abstract method 未保持 public 实现，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
