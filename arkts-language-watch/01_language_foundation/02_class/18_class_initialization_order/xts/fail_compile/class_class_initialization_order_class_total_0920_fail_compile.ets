/*
 * Case ID: CLASS-FAILC-430
 * Coverage ID:
 *   - CLASS-TOTAL-0920
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify module/circular import 静态可判定非法引用，如 ArkTS 支持则 checker 报错
 */

// Expected error: module/circular import 静态可判定非法引用，如 ArkTS 支持则 checker 报错

class InitFailCase {
  public value: number = "wrong"
}
