/*
 * Case ID: CLASS-FAILC-144
 * Coverage ID:
 *   - CLASS-TOTAL-0158
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: this_keyword
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify loop 中调用 super() 导致初始化次数不确定，checker 报错或差异记录
 */

// Expected error: loop 中调用 super() 导致初始化次数不确定，checker 报错或差异记录

class SuperBaseFail {
  constructor(value: number) {
  }
}
class SuperDerivedFail extends SuperBaseFail {
  constructor() {
    super("wrong")
  }
}
