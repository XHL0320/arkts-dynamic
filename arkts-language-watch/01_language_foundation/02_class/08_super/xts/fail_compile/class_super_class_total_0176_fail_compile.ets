/*
 * Case ID: CLASS-FAILC-161
 * Coverage ID:
 *   - CLASS-TOTAL-0176
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 派生类 constructor 中 super() 前访问 this，checker 报错
 */

// Expected error: 派生类 constructor 中 super() 前访问 this，checker 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
