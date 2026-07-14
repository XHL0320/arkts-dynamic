/*
 * Case ID: CLASS-FAILC-361
 * Coverage ID:
 *   - CLASS-TOTAL-0392
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic static field 使用 T，checker 报错或边界记录
 */

// Expected error: generic static field 使用 T，checker 报错或边界记录

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
