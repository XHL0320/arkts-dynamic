/*
 * Case ID: CLASS-FAILC-358
 * Coverage ID:
 *   - CLASS-TOTAL-0389
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic override 参数类型不兼容，checker 报错
 */

// Expected error: generic override 参数类型不兼容，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
