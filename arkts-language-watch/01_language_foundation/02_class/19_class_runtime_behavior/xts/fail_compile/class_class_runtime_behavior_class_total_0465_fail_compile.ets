/*
 * Case ID: CLASS-FAILC-433
 * Coverage ID:
 *   - CLASS-TOTAL-0465
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify abstract class 实例化，checker 报错
 */

// Expected error: abstract class 实例化，checker 报错

class RuntimeFailCase {
  public value: number = 1
}
let value: RuntimeFailCase = RuntimeFailCase
