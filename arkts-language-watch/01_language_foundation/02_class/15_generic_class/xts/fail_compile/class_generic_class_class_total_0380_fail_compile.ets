/*
 * Case ID: CLASS-FAILC-350
 * Coverage ID:
 *   - CLASS-TOTAL-0380
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic abstract method 实现参数类型不兼容，checker 报错
 */

// Expected error: generic abstract method 实现参数类型不兼容，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
