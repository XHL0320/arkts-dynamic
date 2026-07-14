/*
 * Case ID: CLASS-FAILC-363
 * Coverage ID:
 *   - CLASS-TOTAL-0394
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify object literal 赋给 generic class type 不满足规则，checker 报错
 */

// Expected error: object literal 赋给 generic class type 不满足规则，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
