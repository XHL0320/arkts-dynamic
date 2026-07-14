/*
 * Case ID: CLASS-FAILC-435
 * Coverage ID:
 *   - CLASS-TOTAL-0467
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify class constructor 普通调用 A()，checker 报错
 */

// Expected error: class constructor 普通调用 A()，checker 报错

class RuntimeFailCase {
  public value: number = 1
}
let value: RuntimeFailCase = RuntimeFailCase
