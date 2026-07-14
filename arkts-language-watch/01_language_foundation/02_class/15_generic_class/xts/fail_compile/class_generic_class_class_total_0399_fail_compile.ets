/*
 * Case ID: CLASS-FAILC-368
 * Coverage ID:
 *   - CLASS-TOTAL-0399
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 写入与 T 不一致的值，checker 报错
 */

// Expected error: 写入与 T 不一致的值，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
