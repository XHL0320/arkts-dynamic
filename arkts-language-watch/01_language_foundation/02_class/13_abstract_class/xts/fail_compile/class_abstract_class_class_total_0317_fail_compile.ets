/*
 * Case ID: CLASS-FAILC-292
 * Coverage ID:
 *   - CLASS-TOTAL-0317
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify abstract class 继承非 class / 非 constructor，checker 报错
 */

// Expected error: abstract class 继承非 class / 非 constructor，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
