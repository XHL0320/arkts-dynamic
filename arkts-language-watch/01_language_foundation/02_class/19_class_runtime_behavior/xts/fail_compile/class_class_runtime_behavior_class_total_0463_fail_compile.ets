/*
 * Case ID: CLASS-FAILC-431
 * Coverage ID:
 *   - CLASS-TOTAL-0463
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify Function.bind 使用 class constructor，checker 报错
 */

// Expected error: Function.bind 使用 class constructor，checker 报错

class RuntimeFailCase {
  public value: number = 1
}
let value: RuntimeFailCase = RuntimeFailCase
