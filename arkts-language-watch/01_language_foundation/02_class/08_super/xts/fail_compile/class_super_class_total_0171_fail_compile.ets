/*
 * Case ID: CLASS-FAILC-156
 * Coverage ID:
 *   - CLASS-TOTAL-0171
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 实例方法中通过 super 访问基类 static method，checker 报错
 */

// Expected error: 实例方法中通过 super 访问基类 static method，checker 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
