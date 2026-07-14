/*
 * Case ID: CLASS-FAILC-367
 * Coverage ID:
 *   - CLASS-TOTAL-0398
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify static value:T 如 ArkTS 禁止，checker 报错
 */

// Expected error: static value:T 如 ArkTS 禁止，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
