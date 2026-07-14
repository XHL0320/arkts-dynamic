/*
 * Case ID: CLASS-FAILC-145
 * Coverage ID:
 *   - CLASS-TOTAL-0159
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify static method 中调用 super() 作为函数，parser/checker 报错
 */

// Expected error: static method 中调用 super() 作为函数，parser/checker 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
