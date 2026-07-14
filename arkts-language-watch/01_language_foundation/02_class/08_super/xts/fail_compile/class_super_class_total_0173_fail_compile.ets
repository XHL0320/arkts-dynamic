/*
 * Case ID: CLASS-FAILC-158
 * Coverage ID:
 *   - CLASS-TOTAL-0173
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 普通嵌套 function 中使用 super.method()，parser/checker 报错
 */

// Expected error: 普通嵌套 function 中使用 super.method()，parser/checker 报错

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
