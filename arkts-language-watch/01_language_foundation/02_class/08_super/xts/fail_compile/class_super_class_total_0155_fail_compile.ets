/*
 * Case ID: CLASS-FAILC-141
 * Coverage ID:
 *   - CLASS-TOTAL-0155
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify class 外部作用域使用 super，parser 报错
 */

// Expected error: class 外部作用域使用 super，parser 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
