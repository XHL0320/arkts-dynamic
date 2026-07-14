/*
 * Case ID: CLASS-FAILC-429
 * Coverage ID:
 *   - CLASS-TOTAL-0919
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify constructor 中 return object/primitive 如 ArkTS 静态禁止则 checker 报错
 */

// Expected error: constructor 中 return object/primitive 如 ArkTS 静态禁止则 checker 报错

class InitFailCase {
  public value: number = "wrong"
}
