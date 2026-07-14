/*
 * Case ID: CLASS-FAILC-434
 * Coverage ID:
 *   - CLASS-TOTAL-0466
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify class constructor 作为 callback 普通调用，checker 报错
 */

// Expected error: class constructor 作为 callback 普通调用，checker 报错

class RuntimeFailCase {
  public value: number = 1
}
let value: RuntimeFailCase = RuntimeFailCase
