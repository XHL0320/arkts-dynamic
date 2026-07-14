/*
 * Case ID: CLASS-FAILC-441
 * Coverage ID:
 *   - CLASS-TOTAL-0473
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify prototype 动态修改 A.prototype.method = fn，checker 报错
 */

// Expected error: prototype 动态修改 A.prototype.method = fn，checker 报错

class RuntimeFailCase {
  public value: number = 1
}
let value: RuntimeFailCase = RuntimeFailCase
