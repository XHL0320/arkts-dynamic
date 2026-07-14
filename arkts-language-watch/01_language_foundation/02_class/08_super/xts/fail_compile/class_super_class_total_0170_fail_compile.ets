/*
 * Case ID: CLASS-FAILC-155
 * Coverage ID:
 *   - CLASS-TOTAL-0170
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 子类调用 super.abstractMethod() 但基类只有 abstract 声明无实现，checker 报错
 */

// Expected error: 子类调用 super.abstractMethod() 但基类只有 abstract 声明无实现，checker 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
