/*
 * Case ID: CLASS-FAILC-297
 * Coverage ID:
 *   - CLASS-TOTAL-0326
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic abstract method 实现违反泛型约束，checker 报错
 */

// Expected error: generic abstract method 实现违反泛型约束，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
