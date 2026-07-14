/*
 * Case ID: CLASS-FAILC-142
 * Coverage ID:
 *   - CLASS-TOTAL-0156
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify constructor 中静态可判定调用两次 super()，checker 报错或运行时边界记录
 */

// Expected error: constructor 中静态可判定调用两次 super()，checker 报错或运行时边界记录

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
