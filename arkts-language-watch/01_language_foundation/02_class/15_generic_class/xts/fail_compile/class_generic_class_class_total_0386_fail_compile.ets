/*
 * Case ID: CLASS-FAILC-355
 * Coverage ID:
 *   - CLASS-TOTAL-0386
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify generic interface 约束与 class 约束不一致，checker 报错
 */

// Expected error: generic interface 约束与 class 约束不一致，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
