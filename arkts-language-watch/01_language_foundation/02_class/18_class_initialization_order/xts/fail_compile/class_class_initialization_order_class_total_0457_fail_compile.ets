/*
 * Case ID: CLASS-FAILC-423
 * Coverage ID:
 *   - CLASS-TOTAL-0457
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify 字段无初始化值且 constructor 未赋值，如 ArkTS 要求 definite assignment 则报错
 */

// Expected error: 字段无初始化值且 constructor 未赋值，如 ArkTS 要求 definite assignment 则报错

class InitFailCase {
  public value: number = "wrong"
}
