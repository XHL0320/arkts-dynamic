/*
 * Case ID: CLASS-FAILC-364
 * Coverage ID:
 *   - CLASS-TOTAL-0395
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify ordinary class extends instantiated generic class 时 super 参数错误，checker 报错
 */

// Expected error: ordinary class extends instantiated generic class 时 super 参数错误，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
