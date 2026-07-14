/*
 * Case ID: CLASS-FAILC-362
 * Coverage ID:
 *   - CLASS-TOTAL-0393
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify method 类型参数与 class 类型参数同名，如 ArkTS 禁止则报错
 */

// Expected error: method 类型参数与 class 类型参数同名，如 ArkTS 禁止则报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
