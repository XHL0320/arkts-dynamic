/*
 * Case ID: CLASS-FAILC-437
 * Coverage ID:
 *   - CLASS-TOTAL-0469
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify instanceof 右操作数为 generic class B\<T\>，checker 报错
 */

// Expected error: instanceof 右操作数为 generic class B\<T\>，checker 报错

class RuntimeFailCase {
  public value: number = 1
}
let value: RuntimeFailCase = RuntimeFailCase
