/*
 * Case ID: CLASS-FAILC-347
 * Coverage ID:
 *   - CLASS-TOTAL-0377
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify ESObject/dynamic 传入静态可见的不兼容值，checker 报错
 */

// Expected error: ESObject/dynamic 传入静态可见的不兼容值，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
