/*
 * Case ID: CLASS-FAILC-294
 * Coverage ID:
 *   - CLASS-TOTAL-0322
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify abstract method 带方法体，parser/checker 报错
 */

// Expected error: abstract method 带方法体，parser/checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
