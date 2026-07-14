/*
 * Case ID: CLASS-FAILC-345
 * Coverage ID:
 *   - CLASS-TOTAL-0374
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: generic
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify Box<Derived> 与 Box<Base> 不满足 ArkTS variance 规则，checker 报错
 */

// Expected error: Box<Derived> 与 Box<Base> 不满足 ArkTS variance 规则，checker 报错

class BoxFail<T> {
  public value: T
  constructor(value: T) {
    this.value = value
  }
}
let box: BoxFail<number> = new BoxFail<number>("wrong")
