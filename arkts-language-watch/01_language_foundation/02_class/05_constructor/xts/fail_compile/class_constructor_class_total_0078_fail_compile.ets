/*
 * Case ID: CLASS-FAILC-070
 * Coverage ID:
 *   - CLASS-TOTAL-0078
 * Feature: class
 * Test Type: fail_compile
 * Expected Phase: pending
 * Expected Outcome: diagnostic
 * Validation Status: validation_pending
 * Owner Chapter: 02_class
 * Related Chapters: types
 * Spec Source: pending
 * Expected Diagnostic: pending
 * Description: Verify constructor 参数类型省略如 ArkTS 不允许则报错
 */

// Expected error: constructor 参数类型省略如 ArkTS 不允许则报错

class ConstructorFailCase {
  constructor(value: number) {
  }
}
let obj: ConstructorFailCase = new ConstructorFailCase("wrong")
