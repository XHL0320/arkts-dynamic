/*
 * Case ID: CLASS-FAILC-295
 * Coverage ID:
 *   - CLASS-TOTAL-0323
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify abstract method 重复声明且非合法 overload，checker 报错
 */

// Expected error: abstract method 重复声明且非合法 overload，checker 报错

abstract class AbstractFailBase {
  public abstract getValue(): number
}
class AbstractFailDerived extends AbstractFailBase {
}
