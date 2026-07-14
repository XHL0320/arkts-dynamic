/*
 * Case ID: CLASS-FAILC-348
 * Coverage ID:
 *   - CLASS-TOTAL-0378
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify T[] 字段写入不兼容元素，checker 报错
 */

// Expected error: T[] 字段写入不兼容元素，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
