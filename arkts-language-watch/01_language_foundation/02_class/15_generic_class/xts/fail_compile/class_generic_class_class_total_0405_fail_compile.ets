/*
 * Case ID: CLASS-FAILC-374
 * Coverage ID:
 *   - CLASS-TOTAL-0405
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 类型实参与 constructor 参数不一致，checker 报错
 */

// Expected error: 类型实参与 constructor 参数不一致，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
