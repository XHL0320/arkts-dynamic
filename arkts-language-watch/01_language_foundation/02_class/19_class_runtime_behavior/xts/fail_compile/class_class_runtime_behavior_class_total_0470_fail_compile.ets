/*
 * Case ID: CLASS-FAILC-438
 * Coverage ID:
 *   - CLASS-TOTAL-0470
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify instanceof 右操作数为 interface，checker 报错
 */

// Expected error: instanceof 右操作数为 interface，checker 报错

class RuntimeFailCase {
  public value: number = 1
}
let value: RuntimeFailCase = RuntimeFailCase
