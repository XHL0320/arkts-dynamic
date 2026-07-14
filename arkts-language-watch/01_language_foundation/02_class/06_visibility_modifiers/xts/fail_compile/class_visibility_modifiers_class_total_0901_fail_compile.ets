/*
 * Case ID: CLASS-FAILC-115
 * Coverage ID:
 *   - CLASS-TOTAL-0901
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify class implements interface 时成员可见性不兼容，checker 报错
 */

// Expected error: class implements interface 时成员可见性不兼容，checker 报错

class VisibilityFail {
  private value: number = 1
}
let obj: VisibilityFail = new VisibilityFail()
let value: number = obj.value
