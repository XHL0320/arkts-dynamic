/*
 * Case ID: CLASS-FAILC-371
 * Coverage ID:
 *   - CLASS-TOTAL-0402
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 类型参数在运行时值位置使用，checker 报错
 */

// Expected error: 类型参数在运行时值位置使用，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
