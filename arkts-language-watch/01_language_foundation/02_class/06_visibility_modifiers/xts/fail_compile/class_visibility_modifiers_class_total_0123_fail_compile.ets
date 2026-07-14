/*
 * Case ID: CLASS-FAILC-109
 * Coverage ID:
 *   - CLASS-TOTAL-0123
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify static override 中可见性收窄，checker 报错
 */

// Expected error: static override 中可见性收窄，checker 报错

class VisibilityFail {
  private value: number = 1
}
let obj: VisibilityFail = new VisibilityFail()
let value: number = obj.value
