/*
 * Case ID: CLASS-FAILC-300
 * Coverage ID:
 *   - CLASS-TOTAL-0329
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: interface
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify private abstract method 如 ArkTS 禁止，checker 报错
 */

// Expected error: private abstract method 如 ArkTS 禁止，checker 报错

class PrivateFailCase {
  private value: number = 1
}
let obj: PrivateFailCase = new PrivateFailCase()
let value: number = obj.value
