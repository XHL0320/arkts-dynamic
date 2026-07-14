/*
 * Case ID: CLASS-FAILC-357
 * Coverage ID:
 *   - CLASS-TOTAL-0388
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic method 返回 T 但返回不兼容值，checker 报错
 */

// Expected error: generic method 返回 T 但返回不兼容值，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
