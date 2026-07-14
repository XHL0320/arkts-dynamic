/*
 * Case ID: CLASS-FAILC-369
 * Coverage ID:
 *   - CLASS-TOTAL-0400
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 必选类型参数出现在默认类型参数之后，如 ArkTS 禁止则报错
 */

// Expected error: 必选类型参数出现在默认类型参数之后，如 ArkTS 禁止则报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
