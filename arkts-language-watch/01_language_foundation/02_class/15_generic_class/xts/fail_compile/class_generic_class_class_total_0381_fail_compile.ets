/*
 * Case ID: CLASS-FAILC-351
 * Coverage ID:
 *   - CLASS-TOTAL-0381
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic class extends generic class 传递类型参数错误，checker 报错
 */

// Expected error: generic class extends generic class 传递类型参数错误，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
