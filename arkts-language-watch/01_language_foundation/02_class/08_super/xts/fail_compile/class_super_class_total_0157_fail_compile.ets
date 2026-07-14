/*
 * Case ID: CLASS-FAILC-143
 * Coverage ID:
 *   - CLASS-TOTAL-0157
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify interface method 中误用 super 访问 interface 成员，checker 报错
 */

// Expected error: interface method 中误用 super 访问 interface 成员，checker 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
