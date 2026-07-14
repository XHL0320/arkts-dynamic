/*
 * Case ID: CLASS-FAILC-378
 * Coverage ID:
 *   - CLASS-TOTAL-0409
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 默认类型参数不满足约束，checker 报错
 */

// Expected error: 默认类型参数不满足约束，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
